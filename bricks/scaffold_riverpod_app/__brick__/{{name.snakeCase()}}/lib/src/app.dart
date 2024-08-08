import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:{{name.snakeCase()}}/src/core/theme/dark_theme.dart';
import 'package:{{name.snakeCase()}}/src/core/theme/light_theme.dart';
import 'package:{{name.snakeCase()}}/src/core/theme/theme_mode_controller.dart';
import 'package:{{name.snakeCase()}}/src/router/app_router.dart';

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeMode themeMode = ref.watch(themeModeControllerProvider);

    final theme = themeMode == ThemeMode.light ? lightTheme : darkTheme;

    final goRouter = ref.watch(goRouterProvider);
    return MaterialApp.router(
      routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'app',
      onGenerateTitle: (BuildContext context) => 'mason starter',
      theme: theme,
      darkTheme: theme,
      themeMode: themeMode,
    );
  }
}
