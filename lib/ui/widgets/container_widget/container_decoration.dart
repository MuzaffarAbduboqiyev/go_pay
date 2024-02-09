import 'package:flutter/material.dart';
import 'package:go_pay/utils/service/theme_service/colors.dart';
import 'package:injectable/injectable.dart';


abstract class ContainerDecoration {
  BoxDecoration containerDecoration({
    Color? color,
    double borderRadius,
  });

  BoxDecoration containerCardCircularDecoration({
    Color? color,
    double borderRadius,
  });

  BoxDecoration containerCardTopCircularShape({
    Color? color,
    double borderRadius,
  });

  BoxDecoration containerShimmerDecoration({
    Color? color,
    double borderRadius,
  });

  BoxDecoration containerHasBorderDecoration({
    Color? color,
    double? borderWidth,
    double? borderRadius,
  });

  BoxDecoration containerCircularDecoration({
    Color? color,
  });
}

@Injectable(as: ContainerDecoration)
class ContainerDecorationImplementation extends ContainerDecoration {
  @override
  BoxDecoration containerCardCircularDecoration({
    Color? color,
    double borderRadius = 10,
  }) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(borderRadius),
    );
  }

  @override
  BoxDecoration containerCardTopCircularShape({
    Color? color,
    double borderRadius = 10,
  }) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(borderRadius),
        topRight: Radius.circular(borderRadius),
      ),
    );
  }

  @override
  BoxDecoration containerDecoration({
    Color? color,
    double borderRadius = 10,
  }) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(borderRadius),
    );
  }

  @override
  BoxDecoration containerShimmerDecoration({
    Color? color,
    double borderRadius = 10,
  }) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(borderRadius),
      border: Border.all(
        color: Colors.grey[300]!,
        width: 1,
      ),
    );
  }

  @override
  BoxDecoration containerCircularDecoration({
    Color? color,
  }) =>
      BoxDecoration(
        shape: BoxShape.circle,
        color: color ?? buttonColor,
      );

  @override
  BoxDecoration containerHasBorderDecoration({
    Color? color,
    double? borderWidth,
    double? borderRadius,
  }) =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 10),
        border: Border.all(
          color: color ?? hintColor,
          width: borderWidth ?? 1,
        ),
      );
}
