import 'package:flutter/material.dart';
import 'package:go_pay/ui/widgets/icon_widget/icon_widget.dart';
import 'package:go_pay/ui/widgets/text_widget/text_widget.dart';
import 'package:go_pay/utils/service/singleton_service/get_it_service.dart';
import 'package:go_pay/utils/service/theme_service/colors.dart';
import 'package:injectable/injectable.dart';

import '../container_widget/container_decoration.dart';
import '../container_widget/container_widget.dart';
import 'card_shape.dart';

abstract class CardWidget {
  CardItem cardItem({
    required Widget child,
    required Function onClick,
    double? width,
    double? height,
    double borderRadius,
    Color? cardColor,
    double verticalMargin,
    double horizontalMargin,
    double verticalPadding,
    double horizontalPadding,
    double? elevation,
  });

  CardContainerItem cardContainerItem({
    required Widget child,
    double? width,
    double? height,
    double borderRadius,
    Color? cardColor,
    double verticalMargin,
    double horizontalMargin,
    double verticalPadding,
    double horizontalPadding,
    double? elevation,
  });

  CardImageItem cardImageItem({
    required Widget child,
    double? width,
    double? height,
    double borderRadius,
    Color? cardColor,
    double verticalMargin,
    double horizontalMargin,
    double verticalPadding,
    double horizontalPadding,
    double? elevation,
  });

  CardCategoryItem cardCategoryItem({
    required String title,
    required TextStyle textStyle,
    required Function onClick,
    required IconData iconData,
    Color? iconColor,
    double? iconSize,
    double borderRadius,
    double? width,
    double? height,
    Color? cardColor,
    double verticalMargin,
    double horizontalMargin,
    double verticalPadding,
    double horizontalPadding,
    double? elevation,
  });

  CardCategoryColumnItem cardCategoryColumnItem({
    required String title,
    required TextStyle textStyle,
    required String subtitle,
    TextStyle? subtitleStyle,
    required Function onClick,
    required IconData iconData,
    Color? iconColor,
    double? iconSize,
    double borderRadius,
    double? width,
    double? height,
    Color? cardColor,
    double verticalMargin,
    double horizontalMargin,
    double verticalPadding,
    double horizontalPadding,
    double? elevation,
  });

  CardImageTitleItem cardImageTitleItem({
    required String title,
    required TextStyle textStyle,
    required String subtitle,
    TextStyle? subtitleStyle,
    required Function onClick,
    required Widget leadingWidget,
    double borderRadius,
    double? width,
    double? height,
    Color? cardColor,
    double verticalMargin,
    double horizontalMargin,
    double verticalPadding,
    double horizontalPadding,
    double? elevation,
  });

  CardImageIconItem cardImageIconItem({
    required String title,
    required TextStyle textStyle,
    required Function onClick,
    required Widget leadingWidget,
    IconData? iconData,
    Color? iconColor,
    double? iconSize,
    double borderRadius,
    double? width,
    double? height,
    Color? cardColor,
    double verticalMargin,
    double horizontalMargin,
    double verticalPadding,
    double horizontalPadding,
    double? elevation,
  });

  CardItem cardCircularItem({
    required Widget child,
    required Function onClick,
    double? width,
    double? height,
    double borderRadius,
    Color? cardColor,
    double verticalMargin,
    double horizontalMargin,
    double verticalPadding,
    double horizontalPadding,
  });

  CardItem cardTopCircularItem({
    required Widget child,
    required Function onClick,
    double? width,
    double? height,
    double borderRadius,
    Color? cardColor,
    double verticalPadding,
    double horizontalPadding,
  });

  CardICenterIconItem cardICenterIconItem({
    required Widget child,
    required Function onClick,
    double? width,
    double? height,
    double borderRadius,
    Color? cardColor,
    double verticalPadding,
    double horizontalPadding,
  });

  CardTitleItem cardTitleItem({
    required Widget child,
    required Function onClick,
    double? width,
    double? height,
    double borderRadius,
    Color? cardColor,
    double verticalPadding,
    double horizontalPadding,
  });
}

@Injectable(as: CardWidget)
class CardWidgetImplementation extends CardWidget {
  final CardShape cardShape;
  final ContainerWidget containerWidget;
  final ContainerDecoration containerDecoration;

  CardWidgetImplementation(
    this.cardShape,
    this.containerWidget,
    this.containerDecoration,
  );

  @override
  CardItem cardCircularItem({
    required Widget child,
    required Function onClick,
    double borderRadius = 12,
    double? width,
    double? height,
    Color? cardColor,
    double verticalMargin = 8,
    double horizontalMargin = 8,
    double verticalPadding = 16,
    double horizontalPadding = 16,
  }) {
    return CardItem(
      shape: cardShape.cardCircularShape(
        borderRadius: borderRadius,
      ),
      onClick: () => onClick.call(),
      cardColor: cardColor,
      verticalMargin: verticalMargin,
      horizontalMargin: horizontalMargin,
      child: containerWidget.cardContainerWidget(
        child: child,
        width: width,
        height: height,
        containerDecoration:
            containerDecoration.containerCardCircularDecoration(
          color: cardColor,
          borderRadius: borderRadius,
        ),
        verticalPadding: verticalPadding,
        horizontalPadding: horizontalPadding,
      ),
    );
  }

  @override
  CardItem cardItem({
    required Widget child,
    required Function onClick,
    double? width,
    double? height,
    double borderRadius = 12,
    Color? cardColor,
    double verticalMargin = 8,
    double horizontalMargin = 8,
    double verticalPadding = 16,
    double horizontalPadding = 16,
    double? elevation,
  }) {
    return CardItem(
      shape: cardShape.cardCircularShape(
        borderRadius: borderRadius,
      ),
      cardColor: cardColor,
      onClick: () => onClick.call(),
      verticalMargin: verticalMargin,
      horizontalMargin: horizontalMargin,
      child: containerWidget.cardContainerWidget(
        child: child,
        width: width,
        height: height,
        containerDecoration:
            containerDecoration.containerCardCircularDecoration(
          color: cardColor,
          borderRadius: borderRadius,
        ),
        verticalPadding: verticalPadding,
        horizontalPadding: horizontalPadding,
      ),
    );
  }

  @override
  CardContainerItem cardContainerItem({
    required Widget child,
    double? width,
    double? height,
    double borderRadius = 12,
    Color? cardColor,
    double verticalMargin = 8,
    double horizontalMargin = 8,
    double verticalPadding = 16,
    double horizontalPadding = 16,
    double? elevation,
  }) {
    return CardContainerItem(
      shape: cardShape.cardCircularShape(
        borderRadius: borderRadius,
      ),
      cardColor: cardColor,
      verticalMargin: verticalMargin,
      horizontalMargin: horizontalMargin,
      child: containerWidget.cardContainerWidget(
        child: child,
        width: width,
        height: height,
        containerDecoration:
            containerDecoration.containerCardCircularDecoration(
          color: cardColor,
          borderRadius: borderRadius,
        ),
        verticalPadding: verticalPadding,
        horizontalPadding: horizontalPadding,
      ),
    );
  }

  @override
  CardImageItem cardImageItem({
    required Widget child,
    double? width,
    double? height,
    double borderRadius = 12,
    Color? cardColor,
    double verticalMargin = 0.0,
    double horizontalMargin = 0.0,
    double verticalPadding = 0.0,
    double horizontalPadding = 0.0,
    double? elevation,
  }) {
    return CardImageItem(
      shape: cardShape.cardCircularShape(
        borderRadius: borderRadius,
      ),
      cardColor: cardColor,
      verticalMargin: verticalMargin,
      horizontalMargin: horizontalMargin,
      child: containerWidget.cardContainerWidget(
        child: child,
        width: width,
        height: height,
        containerDecoration:
            containerDecoration.containerCardCircularDecoration(
          color: cardColor,
          borderRadius: borderRadius,
        ),
        verticalPadding: verticalPadding,
        horizontalPadding: horizontalPadding,
      ),
    );
  }

  @override
  CardCategoryItem cardCategoryItem({
    required String title,
    required TextStyle textStyle,
    required Function onClick,
    required IconData iconData,
    Color? iconColor,
    double? iconSize,
    double borderRadius = 12,
    double? width,
    double? height = 90,
    Color? cardColor,
    double verticalMargin = 6,
    double horizontalMargin = 6,
    double verticalPadding = 12,
    double horizontalPadding = 12,
    double? elevation,
  }) {
    return CardCategoryItem(
      shape: cardShape.cardCircularShape(
        borderRadius: borderRadius,
      ),
      cardColor: cardColor,
      onClick: () => onClick.call(),
      verticalMargin: verticalMargin,
      horizontalMargin: horizontalMargin,
      child: containerWidget.cardContainerWidget(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getIt<IconWidget>().simpleIcon(
              iconData: iconData,
              color: iconColor ?? backgroundColor,
              size: iconSize ?? 24,
            ),
            getIt<TextWidget>().textWidget(
              text: title,
              textStyle: textStyle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
            ),
          ],
        ),
        width: width,
        height: height = 90,
        containerDecoration:
            containerDecoration.containerCardCircularDecoration(
          color: greyBackgroundColor,
          borderRadius: borderRadius,
        ),
        verticalPadding: verticalPadding,
        horizontalPadding: horizontalPadding,
      ),
    );
  }

  @override
  CardCategoryColumnItem cardCategoryColumnItem({
    required String title,
    required TextStyle textStyle,
    TextStyle? subtitleStyle,
    required String subtitle,
    required Function onClick,
    required IconData iconData,
    Color? iconColor,
    double? iconSize,
    double borderRadius = 12,
    double? width,
    double? height = 90,
    Color? cardColor,
    double verticalMargin = 6,
    double horizontalMargin = 6,
    double verticalPadding = 12,
    double horizontalPadding = 12,
    double? elevation,
  }) {
    return CardCategoryColumnItem(
      shape: cardShape.cardCircularShape(
        borderRadius: borderRadius,
      ),
      cardColor: cardColor,
      onClick: () => onClick.call(),
      verticalMargin: verticalMargin,
      horizontalMargin: horizontalMargin,
      child: containerWidget.cardContainerWidget(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getIt<IconWidget>().simpleIcon(
              iconData: iconData,
              color: iconColor ?? backgroundColor,
              size: iconSize ?? 24,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getIt<TextWidget>().textWidget(
                  text: title,
                  textStyle: textStyle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                ),
                getIt<TextWidget>().textWidget(
                  text: subtitle,
                  textStyle: subtitleStyle ??
                      TextStyle(fontSize: 14.0, color: hintColor),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ],
        ),
        width: width,
        height: height = 90,
        containerDecoration:
            containerDecoration.containerCardCircularDecoration(
          color: greyBackgroundColor,
          borderRadius: borderRadius,
        ),
        verticalPadding: verticalPadding,
        horizontalPadding: horizontalPadding,
      ),
    );
  }

  @override
  CardImageTitleItem cardImageTitleItem({
    required String title,
    required TextStyle textStyle,
    TextStyle? subtitleStyle,
    required String subtitle,
    required Function onClick,
    required Widget leadingWidget,
    double borderRadius = 12,
    double? width = 132,
    double? height = 90,
    Color? cardColor,
    double verticalMargin = 6,
    double horizontalMargin = 6,
    double verticalPadding = 12,
    double horizontalPadding = 12,
    double? elevation,
  }) {
    return CardImageTitleItem(
      shape: cardShape.cardCircularShape(
        borderRadius: borderRadius,
      ),
      cardColor: cardColor,
      onClick: () => onClick.call(),
      verticalMargin: verticalMargin,
      horizontalMargin: horizontalMargin,
      child: containerWidget.cardContainerWidget(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            leadingWidget,
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getIt<TextWidget>().textWidget(
                  text: title,
                  textStyle: textStyle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                ),
                getIt<TextWidget>().textWidget(
                  text: subtitle,
                  textStyle: subtitleStyle ??
                      TextStyle(fontSize: 14.0, color: hintColor),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ],
        ),
        width: width,
        height: height = 90,
        containerDecoration:
            containerDecoration.containerCardCircularDecoration(
          color: greyBackgroundColor,
          borderRadius: borderRadius,
        ),
        verticalPadding: verticalPadding,
        horizontalPadding: horizontalPadding,
      ),
    );
  }

  @override
  CardImageIconItem cardImageIconItem({
    required String title,
    required TextStyle textStyle,
    required Function onClick,
    required Widget leadingWidget,
    IconData? iconData,
    Color? iconColor,
    double? iconSize,
    double borderRadius = 12,
    double? width = 130,
    double? height = 90,
    Color? cardColor,
    double verticalMargin = 6,
    double horizontalMargin = 6,
    double verticalPadding = 12,
    double horizontalPadding = 12,
    double? elevation,
  }) {
    return CardImageIconItem(
      shape: cardShape.cardCircularShape(
        borderRadius: borderRadius,
      ),
      cardColor: cardColor,
      onClick: () => onClick.call(),
      verticalMargin: verticalMargin,
      horizontalMargin: horizontalMargin,
      child: containerWidget.cardContainerWidget(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                leadingWidget,
                (iconData != null)
                    ? getIt<IconWidget>().simpleIcon(
                        iconData: iconData,
                        color: iconColor ?? hintColor,
                        size: iconSize ?? 24,
                      )
                    : const Icon(null),
              ],
            ),
            getIt<TextWidget>().textWidget(
              text: title,
              textStyle: textStyle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
            ),
          ],
        ),
        width: width = 130,
        height: height = 90,
        containerDecoration:
            containerDecoration.containerCardCircularDecoration(
          color: greyBackgroundColor,
          borderRadius: borderRadius,
        ),
        verticalPadding: verticalPadding,
        horizontalPadding: horizontalPadding,
      ),
    );
  }

  @override
  CardItem cardTopCircularItem({
    required Widget child,
    required Function onClick,
    double? width,
    double? height,
    double borderRadius = 12,
    Color? cardColor,
    double verticalPadding = 40,
    double horizontalPadding = 40,
  }) {
    return CardItem(
      shape: cardShape.cardTopCircularShape(
        borderRadius: borderRadius,
      ),
      onClick: () => onClick.call(),
      cardColor: cardColor,
      verticalMargin: 0,
      horizontalMargin: 0,
      child: containerWidget.cardContainerWidget(
        child: child,
        width: width,
        height: height,
        containerDecoration: containerDecoration.containerCardTopCircularShape(
          color: cardColor,
          borderRadius: borderRadius,
        ),
        verticalPadding: verticalPadding,
        horizontalPadding: horizontalPadding,
      ),
    );
  }

  @override
  CardICenterIconItem cardICenterIconItem({
    required Widget child,
    required Function onClick,
    double? width = 64,
    double? height = 64,
    double borderRadius = 12,
    Color? cardColor,
    double verticalPadding = 0,
    double horizontalPadding = 6,
  }) {
    return CardICenterIconItem(
      shape: cardShape.cardCircularShape(
        borderRadius: borderRadius,
      ),
      onClick: () => onClick.call(),
      cardColor: greyBackgroundColor,
      verticalMargin: verticalPadding,
      horizontalMargin: horizontalPadding,
      child: Container(
        width: width = 64,
        height: height = 64,
        padding: const EdgeInsets.all(16.0),
        alignment: Alignment.center,
        decoration: containerDecoration.containerDecoration(
          color: cardColor ?? greyBackgroundColor,
          borderRadius: borderRadius,
        ),
        child: child,
      ),
    );
  }

  @override
  CardTitleItem cardTitleItem({
    required Widget child,
    required Function onClick,
    double? width,
    double? height,
    double borderRadius = 32,
    Color? cardColor,
    double verticalPadding = 16,
    double horizontalPadding = 4,
  }) {
    return CardTitleItem(
      shape: cardShape.cardCircularShape(
        borderRadius: borderRadius,
      ),
      onClick: () => onClick.call(),
      cardColor: greyBackgroundColor,
      verticalMargin: verticalPadding,
      horizontalMargin: horizontalPadding,
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.center,
        decoration: containerDecoration.containerDecoration(
          color: cardColor ?? greyBackgroundColor,
          borderRadius: borderRadius,
        ),
        child: Center(child: child),
      ),
    );
  }
}

class CardContainerItem extends StatelessWidget {
  final double horizontalMargin;
  final double verticalMargin;
  final Color? cardColor;
  final Widget child;
  final RoundedRectangleBorder shape;
  final double? elevation;

  const CardContainerItem({
    required this.child,
    required this.shape,
    required this.verticalMargin,
    required this.horizontalMargin,
    required this.cardColor,
    this.elevation,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor ?? cardColor,
      shape: shape,
      elevation: elevation,
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.symmetric(
        vertical: verticalMargin,
        horizontal: horizontalMargin,
      ),
      child: child,
    );
  }
}

class CardImageItem extends StatelessWidget {
  final double horizontalMargin;
  final double verticalMargin;
  final Color? cardColor;
  final Widget child;
  final RoundedRectangleBorder shape;
  final double? elevation;

  const CardImageItem({
    required this.child,
    required this.shape,
    required this.verticalMargin,
    required this.horizontalMargin,
    required this.cardColor,
    this.elevation,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor ?? cardColor,
      shape: shape,
      elevation: elevation,
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.symmetric(
        vertical: verticalMargin,
        horizontal: horizontalMargin,
      ),
      child: child,
    );
  }
}

class CardItem extends StatelessWidget {
  final double horizontalMargin;
  final double verticalMargin;
  final Function onClick;
  final Color? cardColor;
  final Widget child;
  final RoundedRectangleBorder shape;
  final double? elevation;

  const CardItem({
    required this.child,
    required this.shape,
    required this.onClick,
    required this.verticalMargin,
    required this.horizontalMargin,
    required this.cardColor,
    this.elevation,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClick.call(),
      child: Card(
        color: cardColor ?? cardColor,
        shape: shape,
        elevation: elevation,
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.symmetric(
          vertical: verticalMargin,
          horizontal: horizontalMargin,
        ),
        child: child,
      ),
    );
  }
}

class CardCategoryItem extends StatelessWidget {
  final double horizontalMargin;
  final double verticalMargin;
  final Function onClick;
  final Color? cardColor;
  final Widget child;
  final RoundedRectangleBorder shape;
  final double? elevation;

  const CardCategoryItem({
    required this.child,
    required this.shape,
    required this.onClick,
    required this.verticalMargin,
    required this.horizontalMargin,
    required this.cardColor,
    this.elevation,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onClick.call(),
      child: Card(
        color: cardColor ?? cardColor,
        shape: shape,
        elevation: elevation,
        margin: EdgeInsets.symmetric(
          vertical: verticalMargin,
          horizontal: horizontalMargin,
        ),
        child: child,
      ),
    );
  }
}

class CardCategoryColumnItem extends StatelessWidget {
  final double horizontalMargin;
  final double verticalMargin;
  final Function onClick;
  final Color? cardColor;
  final Widget child;
  final RoundedRectangleBorder shape;
  final double? elevation;

  const CardCategoryColumnItem({
    required this.child,
    required this.shape,
    required this.onClick,
    required this.verticalMargin,
    required this.horizontalMargin,
    required this.cardColor,
    this.elevation,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onClick.call(),
      child: Card(
        color: cardColor ?? cardColor,
        shape: shape,
        elevation: elevation,
        margin: EdgeInsets.symmetric(
          vertical: verticalMargin,
          horizontal: horizontalMargin,
        ),
        child: child,
      ),
    );
  }
}

class CardImageTitleItem extends StatelessWidget {
  final double horizontalMargin;
  final double verticalMargin;
  final Function onClick;
  final Color? cardColor;
  final Widget child;
  final RoundedRectangleBorder shape;
  final double? elevation;

  const CardImageTitleItem({
    required this.child,
    required this.shape,
    required this.onClick,
    required this.verticalMargin,
    required this.horizontalMargin,
    required this.cardColor,
    this.elevation,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onClick.call(),
      child: Card(
        color: cardColor ?? cardColor,
        shape: shape,
        elevation: elevation,
        margin: EdgeInsets.symmetric(
          vertical: verticalMargin,
          horizontal: horizontalMargin,
        ),
        child: child,
      ),
    );
  }
}

class CardImageIconItem extends StatelessWidget {
  final double horizontalMargin;
  final double verticalMargin;
  final Function onClick;
  final Color? cardColor;
  final Widget child;
  final RoundedRectangleBorder shape;
  final double? elevation;

  const CardImageIconItem({
    required this.child,
    required this.shape,
    required this.onClick,
    required this.verticalMargin,
    required this.horizontalMargin,
    required this.cardColor,
    this.elevation,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onClick.call(),
      child: Card(
        color: cardColor ?? cardColor,
        shape: shape,
        elevation: elevation,
        margin: EdgeInsets.symmetric(
          vertical: verticalMargin,
          horizontal: horizontalMargin,
        ),
        child: child,
      ),
    );
  }
}

class CardICenterIconItem extends StatelessWidget {
  final double horizontalMargin;
  final double verticalMargin;
  final Function onClick;
  final Color? cardColor;
  final Widget child;
  final RoundedRectangleBorder shape;
  final double? elevation;

  const CardICenterIconItem({
    required this.child,
    required this.shape,
    required this.onClick,
    required this.verticalMargin,
    required this.horizontalMargin,
    required this.cardColor,
    this.elevation,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onClick.call(),
      child: Card(
        color: cardColor ?? cardColor,
        shape: shape,
        elevation: elevation,
        margin: EdgeInsets.symmetric(
          vertical: verticalMargin,
          horizontal: horizontalMargin,
        ),
        child: child,
      ),
    );
  }
}

class CardTitleItem extends StatelessWidget {
  final double horizontalMargin;
  final double verticalMargin;
  final Function onClick;
  final Color? cardColor;
  final Widget child;
  final RoundedRectangleBorder shape;
  final double? elevation;

  const CardTitleItem({
    required this.child,
    required this.shape,
    required this.onClick,
    required this.verticalMargin,
    required this.horizontalMargin,
    required this.cardColor,
    this.elevation,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onClick.call(),
      child: Card(
        color: cardColor ?? cardColor,
        shape: shape,
        elevation: elevation,
        margin: EdgeInsets.symmetric(
          vertical: verticalMargin,
          horizontal: horizontalMargin,
        ),
        child: child,
      ),
    );
  }
}
