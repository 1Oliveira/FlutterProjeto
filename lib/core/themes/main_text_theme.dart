import 'package:flutter/material.dart';
import 'package:servicos/core/themes/main_color_theme.dart';

class MainTextTheme {
  const MainTextTheme._();
  static TextTheme theme(MainColorTheme theme) {
    return TextTheme(
      displayLarge: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 57,
        letterSpacing: 0,
        color: theme.text,
      ),
      displayMedium: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 45,
        letterSpacing: 0,
        color: theme.text,
      ),
      displaySmall: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 36,
        letterSpacing: 0,
        color: theme.text,
      ),
      headlineLarge: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 32,
        letterSpacing: 0,
        color: theme.text,
      ),
      headlineMedium: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 28,
        letterSpacing: 0,
        color: theme.text,
      ),
      headlineSmall: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 24,
        letterSpacing: 0,
        color: theme.text,
      ),
      titleLarge: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 22,
        letterSpacing: 0,
        color: theme.text,
      ),
      titleMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        letterSpacing: 0.15,
        color: theme.text,
      ),
      titleSmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        letterSpacing: 0.1,
        color: theme.text,
      ),
      labelLarge: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        letterSpacing: 0.1,
        color: theme.text,
      ),
      labelMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        letterSpacing: 0.5,
        color: theme.text,
      ),
      labelSmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 11,
        letterSpacing: 0.5,
        color: theme.text,
      ),
      bodyLarge: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 16,
        letterSpacing: 0.15,
        color: theme.text,
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 14,
        letterSpacing: 0.25,
        color: theme.text,
      ),
      bodySmall: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 12,
        letterSpacing: 0.4,
        color: theme.text,
      ),
    );
  }
}
