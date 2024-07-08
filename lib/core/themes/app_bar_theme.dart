import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:servicos/core/themes/main_color_theme.dart';

class MainAppBarTheme {
  const MainAppBarTheme._();

  static AppBarTheme theme(MainColorTheme colorTheme) {
    return AppBarTheme(
      color: colorTheme.highLight,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
      ),
      surfaceTintColor: colorTheme.background,
      elevation: 4,
      titleSpacing: 0,
      shadowColor: Colors.black.withOpacity(0.3),
    );
  }
}
