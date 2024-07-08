import 'package:flutter/material.dart';
import 'package:servicos/core/themes/main_text_theme.dart';
import 'package:servicos/core/themes/main_color_theme.dart';

class MainInputDecorationTheme {
  const MainInputDecorationTheme._();

  static InputDecorationTheme theme(MainColorTheme colorTheme) {
    final textTheme = MainTextTheme.theme(colorTheme);

    return InputDecorationTheme(
      focusColor: colorTheme.primary,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      errorStyle: TextStyle(color: colorTheme.danger),
      labelStyle: textTheme.titleMedium?.copyWith(
        height: 1.2,
        color: colorTheme.field,
      ),
      floatingLabelStyle: textTheme.labelLarge?.copyWith(
        fontSize: 20,
        color: colorTheme.field,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: colorTheme.border),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: colorTheme.border),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: colorTheme.white),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: colorTheme.danger),
      ),
    );
  }
}
