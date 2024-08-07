import 'package:flutter/material.dart';
{{#hooks}}
import 'package:hooks_riverpod/hooks_riverpod.dart';
{{/hooks}}
{{^hooks}}
import 'package:flutter_riverpod/flutter_riverpod.dart';
{{/hooks}}

import 'package:{{name.snakeCase()}}/src/feature/counter/presentation/provider/counter_provider.dart';
import 'package:{{name.snakeCase()}}/src/core/theme/theme_mode_controller.dart';

import 'package:{{name.snakeCase()}}/src/common_widgets/custom_appbar_widget.dart';
class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final count = ref.watch(counterNotifierProvider);
    final themeMode = ref.watch(themeModeControllerProvider);
    return Scaffold(
      appBar: CustomBarWidget(
        title: 'home page',
        themeRef: ref.watch(themeModeControllerProvider) == ThemeMode.light,
        onPressed: () => ref.watch(themeModeControllerProvider.notifier).toggleThemeMode(),
      ),
      body: Center(child: Text('$count', style: theme.textTheme.displayLarge)),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () =>
                ref.read(counterNotifierProvider.notifier).update((state) => state += 1),
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            onPressed: () =>
                ref.read(counterNotifierProvider.notifier).update((state) => state -= 1),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
