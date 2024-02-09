import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

abstract class CardShape {
  RoundedRectangleBorder cardCircularShape({
    required double borderRadius,
  });

  RoundedRectangleBorder cardTopCircularShape({
    required double borderRadius,
  });
}

@Injectable(as: CardShape)
class CardShapeImplementation implements CardShape {
  @override
  RoundedRectangleBorder cardCircularShape({
    required double borderRadius,
  }) {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(borderRadius),
    );
  }

  @override
  RoundedRectangleBorder cardTopCircularShape({
    required double borderRadius,
  }) {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(borderRadius),
        topRight: Radius.circular(borderRadius),
      ),
    );
  }
}
