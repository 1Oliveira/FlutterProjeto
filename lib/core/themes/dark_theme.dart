import 'package:flutter/material.dart';
import 'package:servicos/core/themes/main_color_theme.dart';

class MainThemeDark extends MainColorTheme {
  MainThemeDark({
    super.success = const Color(0xFF008A17),
    super.warningText = const Color(0xFFCB8700),
    super.danger = const Color.fromARGB(255, 250, 111, 111),
    super.info = const Color(0xFF04797F),
    super.primary = const Color.fromRGBO(187, 242, 71, 1),
    super.stepper = const Color(0xFFBA68C8),
    super.secondary = const Color(0xFF616161),
    super.warningBackground = const Color(0xFFFFAB00),
    super.background = const Color.fromRGBO(47, 47, 47, 1),
    super.icons = Colors.white,
    super.border = const Color.fromRGBO(201, 182, 182, 0.2),
    super.text = Colors.black,
    super.label = const Color(0xFFBDBDBD),
    super.highLight = const Color(0xFFFBC02D),
    super.containerBackground = const Color(0xFF424242),
    super.white = Colors.white,
    super.field = Colors.white,
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
    return MainThemeDark(
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
    // TODO: implement lerp
    if (other is! MainThemeDark) {
      return this;
    }

    return MainThemeDark(
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
