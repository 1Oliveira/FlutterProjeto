import 'package:flutter/material.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:servicos/core/themes/color/main_color_theme.dart';

class MainThemeLight extends MainColorTheme {
  MainThemeLight({
    super.success = Colors.green,
    super.warningText = Colors.orange,
    super.danger = Colors.red,
    super.info = Colors.blue,
    super.primary = Colors.blueGrey,
    super.stepper = Colors.purple,
    super.secondary = Colors.grey,
    super.warningBackground = Colors.amberAccent,
    super.background = Colors.white,
    super.icons = Colors.black,
    super.border = Colors.grey,
    super.text = Colors.black,
    super.label = Colors.grey,
    super.highLight = Colors.yellow,
    super.containerBackground = const Color(0xFFE0E0E0),
    super.white = Colors.white,
    super.field = const Color(0xFFE0E0E0),
  });
  @override
  ThemeExtension<MainColorTheme> copyWith({
    Color? success,
    Color? warningText,
    Color? danger,
    Color? info,
    Color? primary,
    Color? stepper,
    Color? secondary,
    Color? warningBackground,
    Color? background,
    Color? icons,
    Color? border,
    Color? text,
    Color? label,
    Color? highLight,
    Color? containerBackground,
    Color? white,
    Color? field,
  }) {
    return MainThemeLight(
      success: success ?? this.success,
      warningText: warningText ?? this.warningText,
      danger: danger ?? this.danger,
      info: info ?? this.info,
      primary: primary ?? this.primary,
      stepper: stepper ?? this.stepper,
      secondary: secondary ?? this.secondary,
      warningBackground: warningBackground ?? this.warningBackground,
      background: background ?? this.background,
      icons: icons ?? this.icons,
      border: border ?? this.border,
      text: text ?? this.text,
      label: label ?? this.label,
      highLight: highLight ?? this.highLight,
      containerBackground: containerBackground ?? this.containerBackground,
      white: white ?? this.white,
      field: field ?? this.field,
    );
  }

  @override
  ThemeExtension<MainColorTheme> lerp(
      covariant ThemeExtension<MainColorTheme>? other, double t) {
    if (other is! MainThemeLight) {
      return this;
    }

    return MainThemeLight(
      success: Color.lerp(success, other.success, t) ?? success,
      warningText: Color.lerp(warningText, other.warningText, t) ?? warningText,
      danger: Color.lerp(danger, other.danger, t) ?? danger,
      info: Color.lerp(info, other.info, t) ?? info,
      primary: Color.lerp(primary, other.primary, t) ?? primary,
      stepper: Color.lerp(stepper, other.stepper, t) ?? stepper,
      secondary: Color.lerp(secondary, other.secondary, t) ?? secondary,
      warningBackground:
          Color.lerp(warningBackground, other.warningBackground, t) ??
              warningBackground,
      background: Color.lerp(background, other.background, t) ?? background,
      icons: Color.lerp(icons, other.icons, t) ?? icons,
      border: Color.lerp(border, other.border, t) ?? border,
      text: Color.lerp(text, other.text, t) ?? text,
      label: Color.lerp(text, other.label, t) ?? label,
      highLight: Color.lerp(highLight, other.highLight, t) ?? highLight,
      containerBackground:
          Color.lerp(containerBackground, other.containerBackground, t) ??
              containerBackground,
      white: Color.lerp(white, other.white, t) ?? white,
      field: Color.lerp(field, other.field, t) ?? field,
    );
  }
}
