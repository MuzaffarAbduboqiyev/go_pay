import 'package:flutter/material.dart';
import 'package:go_pay/ui/widgets/container_widget/container_decoration.dart';
import 'package:go_pay/ui/widgets/container_widget/container_widget.dart';
import 'package:go_pay/utils/service/singleton_service/get_it_service.dart';
import 'package:go_pay/utils/service/theme_service/colors.dart';
import 'package:go_pay/utils/service/theme_service/theme_extension.dart';
import 'package:injectable/injectable.dart';

abstract class IconWidget {
  Widget iconWithDecoration({
    required IconData iconData,
    required double size,
  });

  Widget simpleIcon({
    required IconData iconData,
    double size = 24,
    Color? color,
  });

  Widget rowIconTitle({
    required IconData iconData,
    required String title,
    TextStyle? textStyle,
    double size = 24,
    Color? color,
  });
}

@Injectable(as: IconWidget)
class IconWidgetImpl implements IconWidget {
  @override
  Widget iconWithDecoration({
    required IconData iconData,
    required double size,
  }) =>
      getIt<ContainerWidget>().containerWidget(
        child: IconWidgetItem(
          iconData: iconData,
          size: size,
          color: whiteColor,
        ),
        containerDecoration:
            getIt<ContainerDecoration>().containerCardCircularDecoration(
          color: buttonColor,
          borderRadius: 30,
        ),
        verticalMargin: 0,
        horizontalMargin: 0,
        verticalPadding: 8,
        horizontalPadding: 8,
      );

  @override
  Widget simpleIcon({
    required IconData iconData,
    double size = 24,
    Color? color,
  }) =>
      IconWidgetItem(
        iconData: iconData,
        size: size,
        color: color,
      );

  @override
  Widget rowIconTitle({
    required IconData iconData,
    required String title,
    TextStyle? textStyle,
    double size = 24,
    Color? color,
  }) =>
      RowIconTitleItem(
        title: title,
        textStyle: textStyle,
        iconData: iconData,
        size: size,
        color: color,
      );
}

class IconWidgetItem extends StatelessWidget {
  final IconData iconData;
  final double size;
  final Color? color;

  const IconWidgetItem({
    required this.iconData,
    required this.size,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconData,
      color: color,
      size: size,
    );
  }
}

class RowIconTitleItem extends StatelessWidget {
  final IconData iconData;
  final String title;
  final TextStyle? textStyle;
  final double size;
  final Color? color;

  const RowIconTitleItem({
    required this.title,
    this.textStyle,
    required this.iconData,
    required this.size,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconData,
        color: color,
        size: size,
      ),
      title: Text(
        title,
        style: textStyle ?? context.displaySmall(),
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),
    );
  }
}
