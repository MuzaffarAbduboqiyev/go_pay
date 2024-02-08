import 'package:flutter/material.dart';
import 'package:go_pay/utils/service/singleton_service/get_it_service.dart';
import 'package:injectable/injectable.dart';

import 'container_decoration.dart';

abstract class ContainerWidget {
  ContainerItem containerWidget({
    required Widget child,
    BoxDecoration? containerDecoration,
    double verticalMargin,
    double horizontalMargin,
    double verticalPadding,
    double horizontalPadding,
    double? width,
    double? height,
  });

  ContainerItem cardContainerWidget({
    required Widget child,
    BoxDecoration? containerDecoration,
    double verticalPadding,
    double horizontalPadding,
    double? width,
    double? height,
  });
}

@Injectable(as: ContainerWidget)
class ContainerWidgetImplementation extends ContainerWidget {
  @override
  ContainerItem cardContainerWidget({
    required Widget child,
    BoxDecoration? containerDecoration,
    double verticalPadding = 0,
    double horizontalPadding = 0,
    double? width,
    double? height,
  }) {
    return ContainerItem(
      containerDecoration: containerDecoration ??
          getIt<ContainerDecoration>().containerCardCircularDecoration(),
      width: width,
      height: height,
      verticalMargin: 0,
      horizontalMargin: 0,
      verticalPadding: verticalPadding,
      horizontalPadding: horizontalPadding,
      child: child,
    );
  }

  @override
  ContainerItem containerWidget({
    required Widget child,
    BoxDecoration? containerDecoration,
    double verticalMargin = 0,
    double horizontalMargin = 0,
    double verticalPadding = 0,
    double horizontalPadding = 0,
    double? width,
    double? height,
  }) {
    return ContainerItem(
      containerDecoration: containerDecoration ??
          getIt<ContainerDecoration>().containerDecoration(),
      width: width,
      height: height,
      verticalMargin: verticalMargin,
      horizontalMargin: horizontalMargin,
      verticalPadding: verticalPadding,
      horizontalPadding: horizontalPadding,
      child: child,
    );
  }
}

class ContainerItem extends StatelessWidget {
  final double horizontalMargin;
  final double verticalMargin;

  final double horizontalPadding;
  final double verticalPadding;

  final Widget child;
  final BoxDecoration containerDecoration;

  final double? width;
  final double? height;

  const ContainerItem({
    required this.child,
    required this.containerDecoration,
    required this.verticalMargin,
    required this.horizontalMargin,
    required this.verticalPadding,
    required this.horizontalPadding,
    this.width,
    this.height,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: containerDecoration,
      width: width,
      height: height,
      margin: EdgeInsets.symmetric(
        vertical: verticalMargin,
        horizontal: horizontalMargin,
      ),
      padding: EdgeInsets.symmetric(
        vertical: verticalPadding,
        horizontal: horizontalPadding,
      ),
      child: child,
    );
  }
}
