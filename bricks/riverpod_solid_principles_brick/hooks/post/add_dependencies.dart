import 'dart:io' as io;

import "package:mason/mason.dart";

Future<void> addDependencies(HookContext context) async {
  final name = context.vars['name'];

  final hooks = context.vars['hooks'] as bool;
  final freezed = context.vars['freezed'] as bool;
  final codegen = context.vars['codegen'] as bool;

  final dependencies = [
    if (hooks) 'hooks_riverpod' else 'flutter_riverpod',
    if (hooks) 'flutter_hooks',
    if (codegen) 'riverpod_annotation',
    if (freezed) 'freezed_annotation',
    if (freezed) 'json_annotation',
    'dartz',
    'dio',
    'go_router',
    'flex_color_scheme',
  ];

  final _ = await io.Process.run(
    'flutter',
    ['pub', 'add', ...dependencies],
    workingDirectory: './$name',
  );
}
