import 'package:flutter/material.dart';
import 'package:servicos/core/themes/color/dark_theme.dart';
import 'package:servicos/core/themes/color/light_theme.dart';
import 'package:servicos/core/themes/color/main_color_theme.dart';

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
      // textTheme:
      // dataTableTheme:
      // checkboxTheme:
      // colorScheme:
      // iconTheme:
      // inputDecorationTheme:
      // appBarTheme:
      // cardTheme:
      // chipTheme:
      // navigationBarTheme:
      // scrollbarTheme:
      // dialogTheme:
      // popupMenuTheme:
    );
  }
}
