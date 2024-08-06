import 'dart:io' as io;

import "package:mason/mason.dart";

Future<void> addDevDependencies(HookContext context) async {
  final name = context.vars['name'];

  final freezed = context.vars['freezed'] as bool;
  final devCodegen = context.vars['devCodegen'] as bool;

  final devDependencies = [
    if (devCodegen) 'build_runner',
    if (devCodegen) 'go_router_builder',
    if (devCodegen) 'riverpod_generator',
    if (freezed) 'freezed',
    if (freezed) 'json_serializable',
    'custom_lint',
    'flutter_lints',
    'http_mock_adapter',
    'logger',
    'mocktail',
    'riverpod_lint',
  ];

  final _ = await io.Process.run(
    'flutter',
    ['pub', 'add', '-d', ...devDependencies],
    workingDirectory: './$name',
  );
}
