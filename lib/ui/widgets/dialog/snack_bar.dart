import 'package:flutter/material.dart';
import 'package:go_pay/utils/service/theme_service/colors.dart';

extension ScanckBarExtension on BuildContext {
  void showSnackBar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: hintColor,
      ),
    );
  }
}
