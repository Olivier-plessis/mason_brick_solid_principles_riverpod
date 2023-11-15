import 'package:mason/mason.dart';

import 'execute_and_log.dart';
import 'post/app_build_runner.dart';
import 'post/dart_formater.dart';
import 'post/move_file.dart';

void run(HookContext context) async {
  await executeAndLog(
      context: context,
      cb: runMoveFileGenerated,
      message: 'Moving generated files in progress ..');
  await Future<void>.delayed(_duration);

  await executeAndLog(
      context: context,
      cb: runBuildRunner,
      message: 'Running `build_runner`..');
  await Future<void>.delayed(_duration);

  await executeAndLog(
      context: context,
      cb: runDartFormat,
      message: 'Formatting code in progress ..');
  await Future<void>.delayed(_duration);
}

const _duration = Duration(milliseconds: 600);
