// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

abstract class MainColorTheme extends ThemeExtension<MainColorTheme> {
  final Color success;
  final Color warningText;
  final Color danger;
  final Color info;
  final Color primary;
  final Color stepper;
  final Color secondary;
  final Color warningBackground;
  final Color background;
  final Color icons;
  final Color border;
  final Color text;
  final Color label;
  final Color highLight;
  final Color containerBackground;
  final Color white;
  final Color field;

  const MainColorTheme({
    required this.success,
    required this.warningText,
    required this.danger,
    required this.info,
    required this.primary,
    required this.stepper,
    required this.secondary,
    required this.warningBackground,
    required this.background,
    required this.icons,
    required this.border,
    required this.text,
    required this.label,
    required this.highLight,
    required this.containerBackground,
    required this.white,
    required this.field,
  });

  Color get selection => makeColorLighter(primary, factor: 0.9);

  /// Torna uma cor mais clara com base na cor original e em um fator dado.
  ///
  /// Dada uma [originalColor] e um [factor] opcional, este método calcula e
  /// retorna uma nova cor que é mais clara do que a cor original. O fator
  /// determina o grau de clareza, com um valor padrão de 0.7.
  ///
  /// O parâmetro [originalColor] especifica a cor cujos componentes (vermelho,
  /// verde e azul) serão usados para calcular a cor mais clara.
  ///
  /// O parâmetro [factor] ajusta o grau de clareza. É um valor double entre 0 e
  /// 1. Um fator de 0 não produz nenhuma mudança na cor, enquanto um fator de
  /// 1 produz branco. Por padrão, o fator é definido como 0.7, resultando em
  /// uma cor moderadamente mais clara.
  ///
  /// Retorna a nova cor mais clara como um objeto Color.
  static Color makeColorLighter(Color originalColor, {double factor = 0.7}) {
    // Obtém os componentes de cor do originalColor
    var red = originalColor.red;
    var green = originalColor.green;
    var blue = originalColor.blue;

    // Calcula novos componentes de cor mais claros com base no fator
    red = (red + ((255 - red) * factor)).round();
    green = (green + ((255 - green) * factor)).round();
    blue = (blue + ((255 - blue) * factor)).round();

    // Retorna a nova cor mais clara
    return Color.fromARGB(255, red, green, blue);
  }
}
