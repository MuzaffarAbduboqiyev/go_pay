import 'package:flutter/material.dart';
import 'package:go_pay/utils/service/theme_service/styles.dart';
import 'package:theme_provider/theme_provider.dart';

extension ThemeExtension on BuildContext {
  ThemeData currentTheme() => ThemeProvider.controllerOf(this).theme.data;

  bool isDarkTheme() =>
      ThemeProvider.controllerOf(this).currentThemeId.contains("dark")
          ? true
          : false;

  changeTheme() {
    /// Change Application Theme
    /// when user tap on screen
    ThemeProvider.controllerOf(this).forgetSavedTheme();
    ThemeProvider.controllerOf(this).nextTheme();
    ThemeProvider.controllerOf(this).saveThemeToDisk();
  }

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
  /// text size 32
  /// text style w600
  /// text color buttonColor
  TextStyle displayLarge() => Theme.of(this).textTheme.displayLarge!;

  ///TODO: displayMedium textStyle
  /// text size 40
  /// text style w600
  /// text color buttonColor
  TextStyle displayMedium() => Theme.of(this).textTheme.displayMedium!;

  ///TODO: displaySmall textStyle
  /// text size 40
  /// text style w600
  /// text color hintColor
  TextStyle displaySmall() => Theme.of(this).textTheme.displaySmall!;

  ///TODO: headlineLarge textStyle
  /// text size 24
  /// text style w600
  /// text color buttonColor
  TextStyle headlineLarge() => Theme.of(this).textTheme.headlineLarge!;

  ///TODO: headlineMedium textStyle
  /// text size 24
  /// text style w400
  /// text color hintColor
  TextStyle headlineMedium() => Theme.of(this).textTheme.headlineMedium!;

  ///TODO: headlineSmall textStyle
  /// text size 24
  /// text style w600
  /// text color textColor
  TextStyle headlineSmall() => Theme.of(this).textTheme.headlineSmall!;

  ///TODO: titleLarge textStyle
  /// text size 20
  /// text style w500
  /// text color whiteColor
  TextStyle titleLarge() => Theme.of(this).textTheme.titleLarge!;

  ///TODO: titleMedium textStyle
  /// text size 18
  /// text style w500
  /// text color whiteColor
  TextStyle titleMedium() => Theme.of(this).textTheme.titleMedium!;

  ///TODO: titleSmall textStyle
  /// text size 18
  /// text style w600
  /// text color textColor
  TextStyle titleSmall() => Theme.of(this).textTheme.titleSmall!;

  ///TODO: bodyLarge textStyle
  /// text size 16
  /// text style w500
  /// text color textColor
  TextStyle bodyLarge() => Theme.of(this).textTheme.bodyLarge!;

  ///TODO: bodyMedium textStyle
  /// text size 16
  /// text style w300
  /// text color textColor
  TextStyle bodyMedium() => Theme.of(this).textTheme.bodyMedium!;

  ///TODO: bodySmall textStyle
  /// text size 14
  /// text style w500
  /// text color textColor
  TextStyle bodySmall() => Theme.of(this).textTheme.bodySmall!;

  ///TODO: labelLarge textStyle
  /// text size 14
  /// text style w500
  /// text color hintColor
  TextStyle labelLarge() => Theme.of(this).textTheme.labelLarge!;

  ///TODO: labelMedium textStyle
  /// text size 14
  /// text style w300
  /// text color textColor
  TextStyle labelMedium() => Theme.of(this).textTheme.labelMedium!;

  ///TODO: labelSmall textStyle
  /// text size 14
  /// text style w300
  /// text color buttonColor
  TextStyle labelSmall() => Theme.of(this).textTheme.labelSmall!;
}
