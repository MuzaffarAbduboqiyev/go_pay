import 'package:flutter/material.dart';
import 'package:go_pay/utils/service/language_service/language_translate_extension.dart';
import 'package:go_pay/utils/service/theme_service/colors.dart';
import 'package:go_pay/utils/service/theme_service/theme_extension.dart';

class ContinueButton extends StatelessWidget {
  final Function onClick;
  final String? title;

  const ContinueButton({
    super.key,
    required this.onClick,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 12.0,
          ),
        ),
        onPressed: () => onClick.call(),
        child: Text(
           title ??  "dialog.continue".translate,
          style: context.titleMedium(),
        ),
      ),
    );
  }
}
