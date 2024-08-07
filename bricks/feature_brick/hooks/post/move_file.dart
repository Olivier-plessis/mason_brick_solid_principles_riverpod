import 'dart:io' as io;

import 'package:mason/mason.dart';

Future<void> runMoveFileGenerated(HookContext context) async {
  final appName = (context.vars['appName'] as String).snakeCase;
  final featureName = (context.vars['feature_name'] as String).snakeCase;
  var result =
      await io.Process.run('mv', [featureName, '$appName/lib/src/feature']);

  io.stdout.write(result.stdout);
  io.stderr.write(result.stderr);
}
