import 'package:flutter/material.dart';

extension SizeExtension on BuildContext {
  double get height => MediaQuery.of(this).size.height;

  double get width => MediaQuery.of(this).size.width;

  double get shortestSize => MediaQuery.of(this).size.shortestSide;

  Orientation get orientation => MediaQuery.of(this).orientation;

  bool get isPortrait => orientation == Orientation.portrait;

  double get gridOrderWidth => (width - 32) / 2;

  double get gridOrderHeight => 400;

  bool get isMobile => shortestSize < 600;
}
