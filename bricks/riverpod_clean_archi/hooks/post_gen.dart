import 'dart:io' as io;

import 'package:mason/mason.dart';

import 'execute_and_log.dart';

void run(HookContext context) async {
  await _runMoveFileGenerated(context);
  await _runDartFormat(context);

  final hasModel = context.vars['model'] as bool;
  if (!hasModel) return;
  await executeAndLog(
      context: context,
      cb: runBuildRunner,
      message: 'Running `build_runner`..');
}

Future<void> _runDartFormat(HookContext context) async {
  final formatProgress = context.logger.progress('Running "dart format ."');
  await io.Process.run('dart', ['format', '.']);
  formatProgress.complete();
}

Future<void> _runMoveFileGenerated(HookContext context) async {
  final appName = (context.vars['appName'] as String).snakeCase;
  final featureName = (context.vars['feature_name'] as String).snakeCase;
  var result =
      await io.Process.run('mv', [featureName, '$appName/lib/src/feature']);

  io.stdout.write(result.stdout);
  io.stderr.write(result.stderr);
}

Future<void> runBuildRunner(HookContext context) async {
  final name = context.vars['appName'];
  final _ = await io.Process.run(
    'flutter',
    ['pub', 'run', 'build_runner', 'build', '-d'],
    workingDirectory: './$name',
  );
}
