import 'package:flutter/material.dart';
{{#codegen}}
import 'package:riverpod_annotation/riverpod_annotation.dart';
{{/codegen}}



part '../../../../../../../riverpod_solid_principles_brick/__brick__/{{name.snakeCase()}}/lib/src/core/theme/theme_mode_controller.g.dart';

{{#codegen}}
@riverpod
class ThemeModeController extends _$ThemeModeController {
  @override
  ThemeMode build() => ThemeMode.dark;

  void toggleThemeMode() {
    if (state == ThemeMode.light) {
      state = ThemeMode.dark;
    } else {
      state = ThemeMode.light;
    }
  }
}
{{/codegen}}
