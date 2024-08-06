import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
{{#codegen}}
import 'package:riverpod_annotation/riverpod_annotation.dart';
{{/codegen}}
import 'package:{{name.snakeCase()}}/src/features/counter/presentation/counter_screen.dart';

{{#codegen}}
part '../../../../../../riverpod_solid_principles/__brick__/{{name.snakeCase()}}/lib/src/router/app_router.g.dart';
enum AppRoute {
  home,
}
@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: false,
    routes: [
      GoRoute(
        path: '/',
        name: AppRoute.home.name,
        builder: (context, state) => const CounterScreen(),
      ),
    ],
    // errorBuilder: (context, state) => const NotFoundScreen(),
  );
}
{{/codegen}}
