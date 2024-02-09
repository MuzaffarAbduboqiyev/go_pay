import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_pay/utils/service/theme_service/colors.dart';
import 'package:go_pay/utils/service/theme_service/styles.dart';

class MyTheme {
  static ThemeData theme() {
    return ThemeData(
      brightness: Brightness.dark,
      dividerColor: dividerColor,
      scaffoldBackgroundColor: backgroundColor,
      indicatorColor: buttonColor,
      disabledColor: disableButtonColor,
      hintColor: hintColor,
      cardColor: cardColor,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: buttonColor,
        foregroundColor: whiteColor,
        shape: const CircleBorder(),
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: buttonColor,
        selectionColor: buttonColor.withOpacity(0.5),
        selectionHandleColor: buttonColor.withOpacity(0.5),
      ),
      appBarTheme: AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: statusBarColor,
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.dark, // For iOS (dark icons)
        ),
        iconTheme: IconThemeData(
          color: whiteColor,
        ),
        backgroundColor: buttonColor,
        centerTitle: true,
        titleTextStyle: textStyle(
          color: whiteColor,
          size: 22,
          weight: FontWeight.w400,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: BorderSide(
            color: buttonColor,
            width: 1,
          ),
        ),
        fillColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return buttonColor; // The fill color when checkbox is checked
          }
          return backgroundColor; // The fill color when checkbox is unchecked
        }),
        checkColor: MaterialStateProperty.all(
          whiteColor,
        ), // The color of the check icon
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: buttonColor,
        selectedIconTheme: IconThemeData(
          color: buttonColor,
          size: 24,
        ),
        selectedLabelStyle: textStyle(
          color: buttonColor,
          size: 12,
        ),
        unselectedItemColor: hintColor,
        unselectedIconTheme: IconThemeData(
          color: hintColor,
        ),
        unselectedLabelStyle: textStyle(
          color: hintColor,
          size: 12,
        ),
        backgroundColor: cardColor,
      ),
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        labelStyle: textStyle(
          color: borderColor,
          size: 12,
          weight: FontWeight.w400,
        ),
        floatingLabelStyle: textStyle(
          color: buttonColor,
          size: 12,
          weight: FontWeight.w400,
        ),
        hintStyle: textStyle(
          color: hintColor,
          size: 14,
          weight: FontWeight.w400,
        ),
        prefixStyle: textStyle(
          color: hintColor,
        ),
        suffixIconColor: hintColor,
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12),
        ),
        errorStyle: textStyle(
          size: 14,
          color: errorColor,
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: errorColor,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.lerp(
            BorderSide(
              color: buttonColor,
            ),
            BorderSide(
              color: borderColor,
            ),
            1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      buttonTheme: ButtonThemeData(
        disabledColor: disableButtonColor,
        buttonColor: buttonColor,
      ),
      textTheme: TextTheme(
        displayLarge: textStyle(
          size: 32,
          color: buttonColor,
          weight: FontWeight.w600,
        ),
        displayMedium: textStyle(
          size: 40,
          color: buttonColor,
          weight: FontWeight.w600,
        ),
        displaySmall: textStyle(
          size: 40,
          weight: FontWeight.w600,
          color: hintColor,
        ),
        headlineLarge: textStyle(
          size: 24,
          color: buttonColor,
          weight: FontWeight.w600,
        ),
        headlineMedium: textStyle(
          color: hintColor,
          size: 24,
          weight: FontWeight.w400,
        ),
        headlineSmall: textStyle(
          color: textColor,
          size: 24,
          weight: FontWeight.w600,
        ),
        titleLarge: textStyle(
          color: whiteColor,
          size: 20,
          weight: FontWeight.w500,
        ),
        titleMedium: textStyle(
          color: whiteColor,
          size: 18,
          weight: FontWeight.w500,
        ),
        titleSmall: textStyle(
          color: textColor,
          size: 18,
          weight: FontWeight.w600,
        ),
        bodyLarge: textStyle(),
        bodyMedium: textStyle(
          size: 16,
          weight: FontWeight.w300,
        ),
        bodySmall: textStyle(
          size: 14,
          weight: FontWeight.w500,
        ),
        labelLarge: textStyle(
          size: 14,
          weight: FontWeight.w500,
          color: hintColor,
        ),
        labelMedium: textStyle(
          size: 14,
          color: textColor,
          weight: FontWeight.w300,
        ),
        labelSmall: textStyle(
          size: 14,
          weight: FontWeight.w300,
          color: buttonColor,
        ),
      ),
      colorScheme: ColorScheme(
        background: backgroundColor,
        error: errorColor,
        onBackground: backgroundColor,
        onError: errorColor,
        onPrimary: primaryColor,
        onSecondary: buttonColor,
        onSurface: backgroundColor,
        primary: primaryColor,
        secondary: buttonColor,
        brightness: Brightness.dark,
        surface: backgroundColor,
      ),
    );
  }
}
