import 'package:flutter/material.dart';
import 'package:servicos/core/themes/app_bar_theme.dart';
import 'package:servicos/core/themes/main_text_theme.dart';
import 'package:servicos/core/themes/elevated_button_theme.dart';
import 'package:servicos/core/themes/dark_theme.dart';
import 'package:servicos/core/themes/input_theme.dart';
import 'package:servicos/core/themes/light_theme.dart';
import 'package:servicos/core/themes/main_color_theme.dart';

class MainTheme {
  const MainTheme._();

  static ThemeData light() => _getTheme(MainThemeLight());

  static ThemeData dark() => _getTheme(MainThemeDark());

  static ThemeData _getTheme(MainColorTheme colorTheme) {
    return ThemeData(
      useMaterial3: true,
      extensions: [colorTheme],
      scaffoldBackgroundColor: colorTheme.background,
      unselectedWidgetColor: colorTheme.background,
      elevatedButtonTheme: MainElevatedButtonTheme.theme(colorTheme),
      textTheme: MainTextTheme.theme(colorTheme),
      inputDecorationTheme: MainInputDecorationTheme.theme(colorTheme),
      appBarTheme: MainAppBarTheme.theme(colorTheme),
      // buttonTheme:
      // textTheme:
      // dataTableTheme:
      // checkboxTheme:
      // colorScheme:
      // iconTheme:
      // cardTheme:
      // chipTheme:
      // navigationBarTheme:
      // scrollbarTheme:
      // dialogTheme:
      // popupMenuTheme:
    );
  }
}
