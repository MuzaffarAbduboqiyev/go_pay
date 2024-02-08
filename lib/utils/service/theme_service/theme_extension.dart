import 'package:flutter/material.dart';
import 'package:go_pay/utils/service/theme_service/styles.dart';

extension ThemeExtension on BuildContext {
  TextStyle customStyle({
    double? textSize,
    FontStyle? style,
    FontWeight? weight,
    Color? color,
  }) =>
      textStyle(
        size: textSize,
        style: style,
        weight: weight,
        color: color,
      );

  TextStyle customUnderlineStyle({
    double? textSize,
    FontStyle? style,
    FontWeight? weight,
    Color? color,
  }) =>
      underlineTextStyle(
        size: textSize,
        style: style,
        weight: weight,
        color: color,
      );

  ///TODO: displayLarge textStyle
  /// text size 56
  /// text style w900
  /// text color clockColor
  TextStyle displayLarge() => Theme.of(this).textTheme.displayLarge!;

  ///TODO: displayMedium textStyle
  /// text size 24
  /// text style w400
  /// text color textColor
  TextStyle displayMedium() => Theme.of(this).textTheme.displayMedium!;

  ///TODO: displaySmall textStyle
  /// text size 16
  /// text style w700
  /// text color textColor
  TextStyle displaySmall() => Theme.of(this).textTheme.displaySmall!;

  ///TODO: headlineLarge textStyle
  /// text size 32
  /// text style w400
  /// text color clockColor
  TextStyle headlineLarge() => Theme.of(this).textTheme.headlineLarge!;

  ///TODO: headlineMedium textStyle
  /// text size 14
  /// text style w400
  /// text color buttonColor
  TextStyle headlineMedium() => Theme.of(this).textTheme.headlineMedium!;

  ///TODO: headlineSmall textStyle
  /// text size 14
  /// text style w700
  /// text color buttonColor
  TextStyle headlineSmall() => Theme.of(this).textTheme.headlineSmall!;

  ///TODO: titleLarge textStyle
  /// text size 16
  /// text style w500
  /// text color buttonColor
  TextStyle titleLarge() => Theme.of(this).textTheme.titleLarge!;

  ///TODO: titleMedium textStyle
  /// text size 12
  /// text style w700
  /// text color buttonColor
  TextStyle titleMedium() => Theme.of(this).textTheme.titleMedium!;

  ///TODO: titleSmall textStyle
  /// text size 14
  /// text style w500
  /// text color buttonColor
  TextStyle titleSmall() => Theme.of(this).textTheme.titleSmall!;

  ///TODO: bodyLarge textStyle
  /// text size 16
  /// text style w500
  /// text color textColor
  TextStyle bodyLarge() => Theme.of(this).textTheme.bodyLarge!;

  ///TODO: bodyMedium textStyle
  /// text size 16
  /// text style w400
  /// text color textColor
  TextStyle bodyMedium() => Theme.of(this).textTheme.bodyMedium!;

  ///TODO: bodySmall textStyle
  /// text size 14
  /// text style w500
  /// text color textColor
  TextStyle bodySmall() => Theme.of(this).textTheme.bodySmall!;

  ///TODO: labelLarge textStyle
  /// text size 18
  /// text style w400
  /// text color hintColor
  TextStyle labelLarge() => Theme.of(this).textTheme.labelLarge!;

  ///TODO: labelMedium textStyle
  /// text size 14
  /// text style w400
  /// text color hintColor
  TextStyle labelMedium() => Theme.of(this).textTheme.labelMedium!;

  ///TODO: labelSmall textStyle
  /// text size 14
  /// text style w400
  /// text color errorColor
  TextStyle labelSmall() => Theme.of(this).textTheme.labelSmall!;
}
