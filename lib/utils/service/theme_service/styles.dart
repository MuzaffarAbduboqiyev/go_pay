import 'package:flutter/material.dart';
import 'package:go_pay/utils/service/theme_service/colors.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle textStyle({
  double? size,
  FontStyle? style,
  FontWeight? weight,
  Color? color,
}) {
  return GoogleFonts.inter(
    fontSize: (size ?? 16.0),
    fontStyle: style ?? FontStyle.normal,
    fontWeight: weight ?? FontWeight.w500,
    color: color ?? textColor,
  );
}

TextStyle underlineTextStyle({
  double? size,
  FontStyle? style,
  FontWeight? weight,
  Color? color,
}) {
  return GoogleFonts.inter(
    decoration: TextDecoration.underline,
    fontSize: (size ?? 16.0),
    fontStyle: style ?? FontStyle.normal,
    fontWeight: weight ?? FontWeight.w500,
    color: color ?? textColor,
  );
}
