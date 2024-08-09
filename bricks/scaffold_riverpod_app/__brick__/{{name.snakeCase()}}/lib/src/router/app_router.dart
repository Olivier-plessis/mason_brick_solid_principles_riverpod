import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
{{#codegen}}
import 'package:riverpod_annotation/riverpod_annotation.dart';
{{/codegen}}
import 'package:{{name.snakeCase()}}/src/feature/counter/presentation/counter_screen.dart';
import 'package:{{name.snakeCase()}}/src/router/route_constants.dart';

{{#codegen}}
part 'app_router.g.dart';



@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: false,
    routes: [
      GoRoute(
        path: AppPage.home.routePath,
        name: AppPage.home.routeName,
        builder: (context, state) => const CounterScreen(),
      ),
    ],
    // errorBuilder: (context, state) => const NotFoundScreen(),
  );
}
{{/codegen}}
