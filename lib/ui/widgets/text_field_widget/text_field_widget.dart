import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_pay/utils/service/theme_service/colors.dart';
import 'package:go_pay/utils/service/theme_service/theme_extension.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController? textController;
  final TextStyle? textStyle;
  final Color? fillColor;
  final Color? cursorColor;
  final Color? enabledBorderColor;
  final Color? focusedBorderColor;
  final Color? disabledBorderColor;
  final String? hintText;
  final TextStyle? hintStyle;
  final String? labelText;
  final TextStyle? labelStyle;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Widget? prefix;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputAction textInputAction;
  final TextInputType? keyboardType;
  final double? horizontalPadding;
  final double? verticalPadding;
  final bool autofocus;
  final bool readOnly;
  final String? Function(String?)? onChanged;

  const TextFieldWidget({
    super.key,
    this.textController,
    this.textStyle,
    this.fillColor,
    this.enabledBorderColor,
    this.focusedBorderColor,
    this.disabledBorderColor,
    this.cursorColor,
    this.hintText,
    this.hintStyle,
    this.labelText,
    this.labelStyle,
    this.suffixIcon,
    this.prefixIcon,
    this.prefix,
    this.inputFormatters,
    this.textInputAction = TextInputAction.done,
    this.keyboardType,
    this.horizontalPadding,
    this.verticalPadding,
    this.autofocus = false,
    this.readOnly = false,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      style: textStyle,
      onChanged: onChanged,
      cursorColor: cursorColor,
      inputFormatters: inputFormatters,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      autofocus: autofocus,
      readOnly: readOnly,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          horizontal: horizontalPadding ?? 16.0,
          vertical: verticalPadding ?? 12.0,
        ),
        filled: true,
        fillColor: fillColor ?? backgroundColor,
        hintText: hintText,
        hintStyle: hintStyle ?? context.labelLarge(),
        labelText: labelText,
        labelStyle: labelStyle ?? context.titleSmall(),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: enabledBorderColor ?? greyHintColor),
            borderRadius: BorderRadius.circular(12.0)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: focusedBorderColor ?? blueColors),
          borderRadius: BorderRadius.circular(12.0),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: disabledBorderColor ?? greyHintColor),
          borderRadius: BorderRadius.circular(12.0),
        ),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        prefix: prefix,
      ),
    );
  }
}
