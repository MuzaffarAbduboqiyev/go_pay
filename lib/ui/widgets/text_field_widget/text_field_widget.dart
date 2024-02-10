import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_pay/utils/service/theme_service/colors.dart';
import 'package:go_pay/utils/service/theme_service/theme_extension.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController textController;
  final TextStyle? textStyle;
  final Color? fillColor;
  final Color? cursorColor;
  final String? hintText;
  final TextStyle? hintStyle;
  final String? labelText;
  final TextStyle? labelStyle;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputAction textInputAction;
  final TextInputType? keyboardType;

  const TextFieldWidget({
    super.key,
    required this.textController,
    this.textStyle,
    this.fillColor,
    this.cursorColor,
    this.hintText,
    this.hintStyle,
    this.labelText,
    this.labelStyle,
    this.suffixIcon,
    this.prefixIcon,
    this.inputFormatters,
    this.textInputAction = TextInputAction.done,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      style: textStyle,
      cursorColor: cursorColor,
      inputFormatters: inputFormatters,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor ?? backgroundColor,
        hintText: hintText,
        hintStyle: hintStyle ?? context.labelLarge(),
        labelText: labelText,
        labelStyle: labelStyle ?? context.titleSmall(),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: greyHintColor),
            borderRadius: BorderRadius.circular(12.0)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: blueColors),
          borderRadius: BorderRadius.circular(12.0),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: greyHintColor),
          borderRadius: BorderRadius.circular(12.0),
        ),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
    );
  }
}
