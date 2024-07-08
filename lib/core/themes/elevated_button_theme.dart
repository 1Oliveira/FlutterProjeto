import 'package:flutter/material.dart';
import 'package:servicos/core/themes/main_color_theme.dart';

class MainElevatedButtonTheme {
  const MainElevatedButtonTheme._();
  static ElevatedButtonThemeData theme(MainColorTheme theme) {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: theme.primary,
          padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
          foregroundColor: theme.text,
          textStyle: const TextStyle(
            fontFamily: 'Inter',
            fontSize: 20,
            fontWeight: FontWeight.w400,
          )),
    );
  }
}
