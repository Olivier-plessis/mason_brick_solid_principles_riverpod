import 'package:{{name.snakeCase()}}/src/app.dart';
import 'package:flutter/material.dart';
// ignore:depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:go_router/go_router.dart';
{{#hooks}}
import 'package:hooks_riverpod/hooks_riverpod.dart';
{{/hooks}}
import 'package:{{name.snakeCase()}}/src/core/utils/observers.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // turn off the # in the URLs on the web
  usePathUrlStrategy();
  // ensure URL changes in the address bar when using push / pushNamed
  // more info here: https://docs.google.com/document/d/1VCuB85D5kYxPR3qYOjVmw8boAGKb7k62heFyfFHTOvw/edit
  GoRouter.optionURLReflectsImperativeAPIs = true;

  runApp(
    ProviderScope(
      observers: <ProviderObserver>[
        Observers(),
      ],
      child: const MainApp(),
    ),
  );
}
