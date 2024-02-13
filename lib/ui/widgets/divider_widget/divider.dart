import 'package:flutter/material.dart';

Divider dividerBox({required Color? color, double? heightSize}) => Divider(
      color: color,
      indent: 0.0,
      endIndent: 0.0,
      height: 0.0,
      thickness: heightSize ?? 0.5,
    );
