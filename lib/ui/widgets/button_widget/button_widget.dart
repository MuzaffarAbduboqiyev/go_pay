import 'package:animated_search_bar/animated_search_bar.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:go_pay/ui/widgets/divider_widget/divider.dart';
import 'package:go_pay/ui/widgets/icon_widget/icon_widget.dart';
import 'package:go_pay/ui/widgets/sized_box/size_boxes.dart';
import 'package:go_pay/ui/widgets/text_widget/text_widget.dart';
import 'package:go_pay/utils/service/singleton_service/get_it_service.dart';
import 'package:go_pay/utils/service/theme_service/colors.dart';
import 'package:go_pay/utils/service/theme_service/theme_extension.dart';
import 'package:injectable/injectable.dart';

abstract class ButtonWidget {
  ButtonItem activeButton({
    required String title,
    required Function onClick,
    double? borderRadius,
    TextStyle? textStyle,
    Color? color,
  });

  BorderButtonItem borderActiveButton({
    required String title,
    required Function onClick,
    double? borderRadius,
    TextStyle? textStyle,
    Color? color,
    Color? borderColors,
  });

  Widget textButton({
    required String title,
    required Function onClick,
    TextStyle? textStyle,
    double? borderRadius,
  });

  ButtonItem cancelButton({
    required String title,
    required Function? onClick,
    double? borderRadius,
    TextStyle? textStyle,
    Color? color,
  });

  ButtonBorderItem cancelBordersButton({
    required String title,
    required Function? onClick,
    double? borderRadius,
    TextStyle? textStyle,
    Color? color,
    Color? bordersColor,
  });

  Widget cancelButtonWithBorder({
    required String title,
    required Function? onClick,
    IconData? iconData,
  });

  Widget iconTextButtonBorder({
    required String title,
    required IconData iconData,
    required Function? onClick,
    required TextStyle textStyle,
    required Color iconColor,
  });

  Widget iconTextRowButton({
    required String title,
    required IconData iconData,
    required Function? onClick,
    required TextStyle textStyle,
    Color? iconColor,
    double? iconSize,
    double? horizontalSize,
  });

  Widget appbarAnimatedSearchBar({
    final TextEditingController textEditingController,
    required String appbarTitle,
    required String searchTitle,
    required IconData iconData,
    TextStyle textStyle,
    Color? iconColor,
    double? iconSize,
    double? width,
  });

  Widget titleButton({
    required String title,
    required TextStyle textStyle,
    required IconData iconData,
    required Color iconColor,
    required Function? onClick,
    double? iconSize,
    int? maxLines,
    double? heightSize,
    Widget? subtitleWidget,
    Widget? trailingWidget,
    double? horizontalPadding,
    double? verticalPadding,
  });

  Widget titleSubtitleButton({
    required String title,
    TextStyle? textStyle,
    int? titleMaxLines,
    int? subtitleMaxLines,
    required String subtitleTitle,
    TextStyle? subtitleStyle,
    required IconData iconData,
    required Color iconColor,
    required Function? onClick,
    double? iconSize,
    double? heightSize,
    Widget? subtitleWidget,
    Widget? trailingWidget,
  });

  Widget cardImageListTileItem({
    required Widget cardImageWidget,
    required String title,
    required TextStyle textStyle,
    String? subtitleTitle,
    TextStyle? subtitleStyle,
    required Function? onClick,
    Widget? trailingWidget,
    double? horizontalCard,
    double? verticalCard,
    double? verticalPadding,
    Color? cardColors,
    double? borderRadius,
    Widget? subtitleWidget,
    int? maxLines,
    int? subtitleMaxLines,
  });

  Widget cardColumnIconTitleItem({
    required Widget cardWidget,
    required String title,
    required TextStyle textStyle,
    required Function? onClick,
    double? verticalPadding,
    double borderRadius,
    Color? cardColors,
  });

  Widget cardContainerButton({
    required Widget child,
    Function? onClick,
    Color? cardColors,
    double borderRadius,
    double? width,
    double? height,
    double? horizontalPadding,
    double? verticalPadding,
    double? horizontalMargin,
    double? verticalMargin,
  });

  Widget imageListTileButton({
    required String title,
    required Widget leadingWidget,
    required TextStyle textStyle,
    required Function? onClick,
    String? subtitle,
    Widget? trailingWidget,
  });

  Widget textListTileTitleButton({
    required String title,
    required TextStyle textStyle,
    required Function? onClick,
    Widget? subtitleWidget,
    Widget? trailingWidget,
  });

  Widget listTileButton({
    required Widget leadingWidget,
    required String title,
    required TextStyle textStyle,
    required Function? onClick,
    double? horizontalPadding,
    Widget? subtitleWidget,
    Widget? trailingWidget,
  });

  Widget listTilesWidget({
    required Widget leadingWidget,
    required String title,
    required TextStyle textStyle,
    String? subtitle,
    Widget? trailingWidget,
  });

  Widget scrollOnExpandButton({
    required Widget headerWidget,
    required Widget collapsedWidget,
    Widget? trailingWidget,
  });

  Widget titleScrollExpandButton({
    required String text,
    required TextStyle textStyle,
    required Widget collapsedWidget,
  });

  Widget iconTextColumnButton({
    required String title,
    required IconData iconData,
    required Function? onClick,
    required TextStyle textStyle,
    required Color iconColor,
    double? iconSize,
  });

  Widget iconButton({
    required IconData iconData,
    required Function onClick,
    double? iconSize,
    Color? iconColor,
  });

  Widget iconButtonWithDecoration({
    required IconData iconData,
    required Function onClick,
    double? iconSize,
  });
}

@Injectable(as: ButtonWidget)
class ButtonWidgetImplementation extends ButtonWidget {
  @override
  ButtonItem activeButton({
    required String title,
    required Function onClick,
    double? borderRadius,
    TextStyle? textStyle,
    Color? color,
  }) =>
      ButtonItem(
        title: title,
        onClick: () => onClick.call(),
        backgroundColor: color ?? buttonColor,
        borderRadius: borderRadius ?? 16,
        isActiveButton: true,
        textStyle: textStyle,
      );

  @override
  BorderButtonItem borderActiveButton({
    required String title,
    required Function onClick,
    double? borderRadius,
    TextStyle? textStyle,
    Color? color,
    Color? borderColors,
  }) =>
      BorderButtonItem(
        title: title,
        onClick: () => onClick.call(),
        backgroundColor: color ?? buttonColor,
        borderColors: borderColors ?? Colors.transparent,
        borderRadius: borderRadius ?? 16,
        isActiveButton: true,
        textStyle: textStyle,
      );

  @override
  ButtonItem cancelButton({
    required String title,
    required Function? onClick,
    TextStyle? textStyle,
    double? borderRadius = 12,
    Color? color,
  }) =>
      ButtonItem(
        title: title,
        onClick: () => onClick?.call(),
        backgroundColor: color ?? cancelButtonBackgroundColor,
        borderRadius: borderRadius ?? 12,
        isActiveButton: false,
        textStyle: textStyle,
      );

  @override
  ButtonBorderItem cancelBordersButton({
    required String title,
    required Function? onClick,
    TextStyle? textStyle,
    double? borderRadius = 12,
    Color? color,
    Color? bordersColor,
  }) =>
      ButtonBorderItem(
        title: title,
        onClick: () => onClick?.call(),
        backgroundColor: color ?? cancelButtonBackgroundColor,
        bordersColor: bordersColor ?? cancelButtonBackgroundColor,
        borderRadius: borderRadius ?? 12,
        isActiveButton: false,
        textStyle: textStyle,
      );

  @override
  Widget iconButton({
    required IconData iconData,
    required Function onClick,
    double? iconSize,
    Color? iconColor,
  }) =>
      IconButtonItem(
        iconData: iconData,
        onClick: onClick,
        size: iconSize,
        color: iconColor,
        hasDecoration: false,
      );

  @override
  Widget iconButtonWithDecoration({
    required IconData iconData,
    required Function onClick,
    double? iconSize,
  }) =>
      IconButtonItem(
        iconData: iconData,
        onClick: onClick,
        size: iconSize,
        hasDecoration: true,
      );

  @override
  Widget textButton({
    required String title,
    required Function onClick,
    double? borderRadius,
    TextStyle? textStyle,
  }) =>
      TextButton(
        onPressed: () => onClick.call(),
        child: getIt<TextWidget>().textWidget(
          text: title,
          textStyle: textStyle,
        ),
      );

  @override
  Widget cancelButtonWithBorder({
    required String title,
    required Function? onClick,
    IconData? iconData,
  }) =>
      _CancelButtonItem(
        title: title,
        onClick: onClick,
        iconData: iconData,
      );

  @override
  Widget iconTextButtonBorder({
    required String title,
    required IconData iconData,
    required Function? onClick,
    required TextStyle textStyle,
    required Color iconColor,
  }) =>
      _IconTextButtonItem(
        title: title,
        textStyle: textStyle,
        iconData: iconData,
        iconColor: iconColor,
        onClick: onClick,
      );

  @override
  Widget iconTextRowButton({
    required String title,
    required IconData iconData,
    required Function? onClick,
    required TextStyle textStyle,
    Color? iconColor,
    double? iconSize,
    double? horizontalSize,
  }) =>
      _IconTextRowButtonItem(
        title: title,
        textStyle: textStyle,
        iconData: iconData,
        iconColor: iconColor,
        iconSize: iconSize,
        horizontalSize: horizontalSize,
        onClick: onClick,
      );

  @override
  Widget appbarAnimatedSearchBar({
    final TextEditingController? textEditingController,
    required String appbarTitle,
    required String searchTitle,
    TextStyle? textStyle,
    required IconData iconData,
    Color? iconColor,
    double? iconSize,
    double? width,
  }) =>
      _AppbarAnimatedSearchBarItem(
        textEditingController: textEditingController,
        appbarTitle: appbarTitle,
        searchTitle: searchTitle,
        textStyle: textStyle,
        iconData: iconData,
        iconColor: iconColor,
        iconSize: iconSize,
        width: width,
      );

  @override
  Widget titleButton({
    required String title,
    required TextStyle textStyle,
    required IconData iconData,
    required Color iconColor,
    required Function? onClick,
    int? maxLines,
    double? iconSize,
    double? heightSize,
    Widget? subtitleWidget,
    Widget? trailingWidget,
    double? horizontalPadding,
    double? verticalPadding,
  }) =>
      _TitleButtonItem(
        title: title,
        textStyle: textStyle,
        iconData: iconData,
        iconColor: iconColor,
        iconSize: iconSize,
        heightSize: heightSize,
        maxLines: maxLines,
        onClick: onClick,
        subtitleWidget: subtitleWidget,
        trailingWidget: trailingWidget,
        horizontalPadding: horizontalPadding,
        verticalPadding: verticalPadding,
      );

  @override
  Widget titleSubtitleButton({
    required String title,
    TextStyle? textStyle,
    int? titleMaxLines,
    int? subtitleMaxLines,
    required String subtitleTitle,
    TextStyle? subtitleStyle,
    required IconData iconData,
    required Color iconColor,
    required Function? onClick,
    double? iconSize,
    double? heightSize,
    Widget? subtitleWidget,
    Widget? trailingWidget,
  }) =>
      _TitleSubtitleButtonItem(
        title: title,
        textStyle: textStyle,
        titleMaxLines: titleMaxLines,
        subtitleMaxLines: subtitleMaxLines,
        subtitleTitle: subtitleTitle,
        subtitleStyle: subtitleStyle,
        iconData: iconData,
        iconColor: iconColor,
        iconSize: iconSize,
        heightSize: heightSize,
        onClick: onClick,
        subtitleWidget: subtitleWidget,
        trailingWidget: trailingWidget,
      );

  @override
  Widget cardImageListTileItem({
    required Widget cardImageWidget,
    required String title,
    required TextStyle textStyle,
    String? subtitleTitle,
    TextStyle? subtitleStyle,
    required Function? onClick,
    Widget? trailingWidget,
    double? verticalPadding,
    double? horizontalCard,
    double? verticalCard,
    Color? cardColors,
    double? borderRadius,
    Widget? subtitleWidget,
    int? maxLines,
    int? subtitleMaxLines,
  }) =>
      _CardImageListTileItemItem(
        cardImageWidget: cardImageWidget,
        title: title,
        textStyle: textStyle,
        subtitleTitle: subtitleTitle,
        subtitleStyle: subtitleStyle,
        trailingWidget: trailingWidget,
        onClick: onClick,
        verticalPadding: verticalPadding,
        horizontalCard: horizontalCard,
        verticalCard: verticalCard,
        cardColors: cardColors,
        borderRadius: borderRadius,
        subtitleWidget: subtitleWidget,
        maxLines: maxLines,
        subtitleMaxLines: subtitleMaxLines,
      );

  @override
  Widget cardColumnIconTitleItem({
    required Widget cardWidget,
    required String title,
    required TextStyle textStyle,
    required Function? onClick,
    double? verticalPadding,
    double borderRadius = 12,
    Color? cardColors,
  }) =>
      _CardColumnIconTitleItem(
        cardWidget: cardWidget,
        title: title,
        textStyle: textStyle,
        onClick: onClick,
        verticalPadding: verticalPadding,
        borderRadius: borderRadius,
        cardColors: cardColors,
      );

  @override
  Widget cardContainerButton({
    required Widget child,
    Function? onClick,
    double? width,
    double? height,
    Color? cardColors,
    double borderRadius = 12,
    double? horizontalPadding,
    double? verticalPadding,
    double? horizontalMargin,
    double? verticalMargin,
  }) =>
      _CardContainerButtonItem(
        cardColors: cardColors,
        borderRadius: borderRadius,
        width: width,
        height: height,
        onClick: onClick,
        horizontalPadding: horizontalPadding,
        verticalPadding: verticalPadding,
        horizontalMargin: horizontalMargin,
        verticalMargin: verticalMargin,
        child: child,
      );

  @override
  Widget textListTileTitleButton({
    required String title,
    required Function? onClick,
    required TextStyle textStyle,
    Widget? subtitleWidget,
    Widget? trailingWidget,
  }) =>
      _TextListTileTitleButtonItem(
        title: title,
        textStyle: textStyle,
        onClick: onClick,
        subtitleWidget: subtitleWidget,
        trailingWidget: trailingWidget,
      );

  @override
  Widget imageListTileButton({
    required String title,
    required Widget leadingWidget,
    required Function? onClick,
    required TextStyle textStyle,
    String? subtitle,
    Widget? trailingWidget,
  }) =>
      _ImageListTileButtonItem(
        title: title,
        leadingWidget: leadingWidget,
        textStyle: textStyle,
        onClick: onClick,
        subtitle: subtitle,
        trailingWidget: trailingWidget,
      );

  @override
  Widget listTileButton({
    required String title,
    required Widget leadingWidget,
    required Function? onClick,
    required TextStyle textStyle,
    double? horizontalPadding,
    Widget? subtitleWidget,
    Widget? trailingWidget,
  }) =>
      _ListTileButtonItem(
        title: title,
        leadingWidget: leadingWidget,
        textStyle: textStyle,
        onClick: onClick,
        horizontalPadding: horizontalPadding,
        subtitleWidget: subtitleWidget,
        trailingWidget: trailingWidget,
      );

  @override
  Widget listTilesWidget({
    required String title,
    required Widget leadingWidget,
    required TextStyle textStyle,
    String? subtitle,
    Widget? trailingWidget,
  }) =>
      _ListTilesWidgetItem(
        title: title,
        leadingWidget: leadingWidget,
        textStyle: textStyle,
        subtitle: subtitle,
        trailingWidget: trailingWidget,
      );

  @override
  Widget scrollOnExpandButton({
    required Widget headerWidget,
    required Widget collapsedWidget,
    Widget? trailingWidget,
  }) =>
      _ScrollOnExpandButtonItem(
        headerWidget: headerWidget,
        collapsedWidget: collapsedWidget,
        trailingWidget: trailingWidget,
      );

  @override
  Widget titleScrollExpandButton({
    required String text,
    required TextStyle textStyle,
    required Widget collapsedWidget,
  }) =>
      _TitleScrollExpandButtonItem(
        text: text,
        textStyle: textStyle,
        collapsedWidget: collapsedWidget,
      );

  @override
  Widget iconTextColumnButton({
    required String title,
    required IconData iconData,
    required Function? onClick,
    required TextStyle textStyle,
    required Color iconColor,
    double? iconSize,
  }) =>
      _IconTextColumnButtonItem(
        title: title,
        textStyle: textStyle,
        iconData: iconData,
        iconColor: iconColor,
        onClick: onClick,
        iconSize: iconSize,
      );
}

class ButtonBorderItem extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color bordersColor;
  final Function onClick;
  final double borderRadius;
  final bool isActiveButton;
  final TextStyle? textStyle;

  const ButtonBorderItem({
    required this.title,
    required this.onClick,
    required this.backgroundColor,
    required this.bordersColor,
    required this.borderRadius,
    this.isActiveButton = true,
    this.textStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onClick.call(),
      child: Container(
        margin: EdgeInsets.zero,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            border: Border.all(width: 1.0, color: bordersColor),
            color: context.currentTheme().backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius)),
        child: (isActiveButton)
            ? getIt<TextWidget>().activeButtonText(
                text: title,
                textStyle: textStyle ?? context.headlineMedium(),
              )
            : getIt<TextWidget>().cancelButtonText(
                text: title,
                textStyle: textStyle ?? context.headlineSmall(),
              ),
      ),
    );
  }
}

class ButtonItem extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Function onClick;
  final double borderRadius;
  final bool isActiveButton;
  final TextStyle? textStyle;

  const ButtonItem({
    required this.title,
    required this.onClick,
    required this.backgroundColor,
    required this.borderRadius,
    this.isActiveButton = true,
    this.textStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => onClick.call(),
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        backgroundColor: backgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (isActiveButton)
            ? getIt<TextWidget>().activeButtonText(
                text: title,
                textStyle: textStyle ?? context.headlineMedium(),
              )
            : getIt<TextWidget>().cancelButtonText(
                text: title,
                textStyle: textStyle ?? context.headlineSmall(),
              ),
      ),
    );
  }
}

class BorderButtonItem extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color borderColors;
  final Function onClick;
  final double borderRadius;
  final bool isActiveButton;
  final TextStyle? textStyle;

  const BorderButtonItem({
    required this.title,
    required this.onClick,
    required this.backgroundColor,
    required this.borderRadius,
    required this.borderColors,
    this.isActiveButton = true,
    this.textStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onClick.call(),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: borderColors),
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            getIt<TextWidget>().activeButtonText(
              text: title,
              textStyle: textStyle ?? context.titleMedium(),
            ),
            horizontalBox(horizontalSize: 12),
            getIt<IconWidget>().simpleIcon(
              iconData: Icons.keyboard_arrow_down_rounded,
              color: context.currentTheme().iconTheme.color,
              size: 24,
            ),
          ],
        ),
      ),
    );
  }
}

class _CancelButtonItem extends StatelessWidget {
  final String title;
  final Function? onClick;
  final IconData? iconData;

  const _CancelButtonItem({
    required this.title,
    required this.onClick,
    this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onClick?.call(),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: buttonColor,
            width: 1,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (iconData != null)
                  Icon(
                    iconData,
                    size: 22,
                    color: buttonColor,
                  ),
                if (iconData != null) horizontalBox(horizontalSize: 8),
                getIt<TextWidget>().activeButtonText(
                  text: title,
                  textStyle: context.headlineLarge().copyWith(
                        color: buttonColor,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _IconTextButtonItem extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Function? onClick;
  final TextStyle textStyle;
  final Color iconColor;

  const _IconTextButtonItem({
    required this.title,
    required this.iconData,
    required this.onClick,
    required this.textStyle,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onClick?.call(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (iconData != null)
            Icon(
              iconData,
              size: 25,
              color: iconColor,
            ),
          if (iconData != null) verticalBox(verticalSize: 8),
          getIt<TextWidget>().activeButtonText(
            text: title,
            textStyle: textStyle,
          ),
        ],
      ),
    );
  }
}

class _IconTextRowButtonItem extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Function? onClick;
  final TextStyle textStyle;
  final Color? iconColor;
  final double? iconSize;
  final double? horizontalSize;

  const _IconTextRowButtonItem({
    required this.title,
    required this.iconData,
    required this.onClick,
    required this.textStyle,
    required this.iconColor,
    required this.iconSize,
    required this.horizontalSize,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onClick?.call(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (iconData != null)
            Icon(
              iconData,
              size: iconSize,
              color: iconColor,
            ),
          horizontalBox(horizontalSize: horizontalSize ?? 2),
          if (iconData != null) verticalBox(verticalSize: 8),
          getIt<TextWidget>().activeButtonText(
            text: title,
            textStyle: textStyle,
          ),
        ],
      ),
    );
  }
}

class _AppbarAnimatedSearchBarItem extends StatelessWidget {
  final TextEditingController? textEditingController;
  final String appbarTitle;
  final String searchTitle;
  final TextStyle? textStyle;
  final IconData iconData;
  final Color? iconColor;
  final double? iconSize;
  final double? width;

  const _AppbarAnimatedSearchBarItem({
    required this.textEditingController,
    required this.appbarTitle,
    required this.searchTitle,
    required this.iconData,
    required this.textStyle,
    required this.iconColor,
    required this.iconSize,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 350,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: AnimatedSearchBar(
          controller: textEditingController,
          labelAlignment: Alignment.center,
          label: appbarTitle,
          labelStyle:
              textStyle ?? context.headlineLarge().copyWith(fontSize: 21.0),
          searchStyle: context.titleMedium(),
          cursorColor: blueColors,
          textInputAction: TextInputAction.search,
          closeIcon: getIt<IconWidget>().simpleIcon(
            iconData: Icons.close,
            color: context.currentTheme().iconTheme.color,
            size: 24,
          ),
          searchDecoration: InputDecoration(
            hintText: searchTitle,
            helperStyle: context.titleMedium(),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: BorderSide(color: hintColor),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: BorderSide(color: hintColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: BorderSide(color: hintColor),
            ),
          ),
          searchIcon: getIt<IconWidget>().simpleIcon(
            iconData: iconData,
            color: iconColor ?? context.currentTheme().iconTheme.color,
            size: iconSize ?? 24,
          ),
        ),
      ),
    );
  }
}

class _TitleButtonItem extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Function? onClick;
  final TextStyle textStyle;
  final int? maxLines;
  final Color iconColor;
  final double? iconSize;
  final double? heightSize;
  final Widget? subtitleWidget;
  final Widget? trailingWidget;
  final double? horizontalPadding;
  final double? verticalPadding;

  const _TitleButtonItem({
    required this.title,
    required this.textStyle,
    required this.iconData,
    required this.onClick,
    required this.maxLines,
    required this.iconColor,
    required this.iconSize,
    required this.heightSize,
    required this.subtitleWidget,
    required this.trailingWidget,
    required this.horizontalPadding,
    required this.verticalPadding,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onClick?.call(),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding ?? 16.0,
          vertical: verticalPadding ?? 2.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: getIt<IconWidget>().simpleIcon(
                iconData: iconData,
                size: iconSize ?? 26,
                color: iconColor,
              ),
            ),
            horizontalBox(horizontalSize: 16),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    minVerticalPadding: 0.0,
                    contentPadding: EdgeInsets.zero,
                    title: getIt<TextWidget>().textWidget(
                      text: title,
                      textStyle: textStyle,
                      maxLines: maxLines ?? 1,
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: trailingWidget,
                  ),
                  SizedBox(child: subtitleWidget),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TitleSubtitleButtonItem extends StatelessWidget {
  final String title;
  final String subtitleTitle;
  final IconData iconData;
  final Function? onClick;
  final TextStyle? textStyle;
  final TextStyle? subtitleStyle;
  final Color iconColor;
  final double? iconSize;
  final int? titleMaxLines;
  final int? subtitleMaxLines;
  final double? heightSize;
  final Widget? subtitleWidget;
  final Widget? trailingWidget;

  const _TitleSubtitleButtonItem({
    required this.title,
    required this.textStyle,
    required this.subtitleTitle,
    required this.subtitleStyle,
    required this.iconData,
    required this.onClick,
    required this.iconColor,
    required this.iconSize,
    required this.titleMaxLines,
    required this.subtitleMaxLines,
    required this.heightSize,
    required this.subtitleWidget,
    required this.trailingWidget,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onClick?.call(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            getIt<IconWidget>().simpleIcon(
              iconData: iconData,
              color: iconColor,
              size: iconSize ?? 26,
            ),
            horizontalBox(horizontalSize: 16),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    minVerticalPadding: 0.0,
                    contentPadding: EdgeInsets.zero,
                    title: getIt<TextWidget>().textWidget(
                      text: title,
                      textStyle: textStyle ?? context.titleMedium(),
                      maxLines: titleMaxLines ?? 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                    ),
                    subtitle: getIt<TextWidget>().textWidget(
                      text: subtitleTitle,
                      textStyle: subtitleStyle ??
                          context.bodyMedium().copyWith(color: hintColor),
                      maxLines: subtitleMaxLines ?? 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                    ),
                    trailing: SizedBox(child: trailingWidget),
                  ),
                  SizedBox(child: subtitleWidget),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CardImageListTileItemItem extends StatelessWidget {
  final Widget cardImageWidget;
  final String title;
  final String? subtitleTitle;
  final Function? onClick;
  final TextStyle textStyle;
  final TextStyle? subtitleStyle;
  final Widget? trailingWidget;
  final double? verticalPadding;
  final double? horizontalCard;
  final double? verticalCard;
  final Color? cardColors;
  final double? borderRadius;
  final Widget? subtitleWidget;
  final int? maxLines;
  final int? subtitleMaxLines;

  const _CardImageListTileItemItem({
    required this.cardImageWidget,
    required this.title,
    required this.subtitleTitle,
    required this.onClick,
    required this.textStyle,
    required this.subtitleStyle,
    required this.trailingWidget,
    required this.verticalPadding,
    required this.horizontalCard,
    required this.verticalCard,
    required this.cardColors,
    required this.borderRadius,
    required this.subtitleWidget,
    required this.maxLines,
    required this.subtitleMaxLines,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onClick?.call(),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 16, vertical: verticalPadding ?? 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              color: cardColors ?? cardColor,
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 10.0),
                side: BorderSide(width: 0.5, color: hintColor),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: horizontalCard ?? 0.0,
                  vertical: verticalCard ?? 0.0,
                ),
                child: cardImageWidget,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.only(left: 14),
                    title: getIt<TextWidget>().textWidget(
                      text: title,
                      textStyle: textStyle,
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      maxLines: maxLines ?? 2,
                    ),
                    subtitle: getIt<TextWidget>().textWidget(
                      text: subtitleTitle ?? "",
                      textStyle: subtitleStyle ?? context.bodyMedium(),
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      maxLines: subtitleMaxLines ?? 2,
                    ),
                    trailing: trailingWidget,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: SizedBox(child: subtitleWidget),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CardColumnIconTitleItem extends StatelessWidget {
  final Widget cardWidget;
  final String title;
  final Function? onClick;
  final TextStyle textStyle;
  final double? verticalPadding;
  final double borderRadius;
  final Color? cardColors;

  const _CardColumnIconTitleItem({
    required this.cardWidget,
    required this.title,
    required this.onClick,
    required this.textStyle,
    required this.verticalPadding,
    required this.borderRadius,
    required this.cardColors,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onClick?.call(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            color: cardColors ?? greyBackgroundColor,
            clipBehavior: Clip.antiAlias,
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              side: BorderSide(width: 0.5, color: hintColor),
            ),
            child: SizedBox(
              width: 64,
              height: 64,
              child: Center(child: cardWidget),
            ),
          ),
          verticalBox(verticalSize: 12),
          SizedBox(
            width: 100,
            child: getIt<TextWidget>().textWidget(
              text: title,
              textStyle: textStyle,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}

class _CardContainerButtonItem extends StatelessWidget {
  final Widget child;
  final Color? cardColors;
  final double? width;
  final double? height;
  final double borderRadius;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? horizontalMargin;
  final double? verticalMargin;
  final Function? onClick;

  const _CardContainerButtonItem({
    required this.child,
    required this.cardColors,
    required this.width,
    required this.height,
    required this.borderRadius,
    required this.horizontalPadding,
    required this.verticalPadding,
    required this.horizontalMargin,
    required this.verticalMargin,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onClick?.call() ?? () {},
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalMargin ?? 0.0,
          vertical: verticalMargin ?? 0.0,
        ),
        child: Card(
          color: cardColors ?? greyBackgroundColor,
          clipBehavior: Clip.antiAlias,
          margin: EdgeInsets.zero,
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: BorderSide(width: 1.0, color: greyHintColor),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding ?? 8.0,
              vertical: verticalPadding ?? 0.0,
            ),
            child: SizedBox(
              width: width,
              height: height,
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}

class _TextListTileTitleButtonItem extends StatelessWidget {
  final String title;
  final TextStyle textStyle;
  final Function? onClick;
  final Widget? subtitleWidget;
  final Widget? trailingWidget;

  const _TextListTileTitleButtonItem({
    required this.title,
    required this.textStyle,
    required this.onClick,
    required this.subtitleWidget,
    required this.trailingWidget,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onClick?.call(),
      child: SizedBox(
        height: 60.0,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getIt<TextWidget>().textWidget(
                  text: title,
                  textStyle: textStyle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                ),
                SizedBox(child: trailingWidget),
              ],
            ),
            SizedBox(child: dividerBox(color: hintColor)),
          ],
        ),
      ),
    );
  }
}

class _ImageListTileButtonItem extends StatelessWidget {
  final String title;
  final Widget leadingWidget;
  final TextStyle textStyle;
  final Function? onClick;
  final String? subtitle;
  final Widget? trailingWidget;

  const _ImageListTileButtonItem({
    required this.title,
    required this.leadingWidget,
    required this.textStyle,
    required this.onClick,
    required this.subtitle,
    required this.trailingWidget,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => onClick?.call(),
        child: ListTile(
          leading: leadingWidget,
          title: getIt<TextWidget>().textWidget(
            text: title,
            textStyle: textStyle,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
          ),
          subtitle: getIt<TextWidget>().textWidget(
            text: subtitle ?? "",
            textStyle: context.titleMedium().copyWith(color: hintColor),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
          ),
          trailing: trailingWidget,
        ));
  }
}

class _ListTileButtonItem extends StatelessWidget {
  final String title;
  final Widget leadingWidget;
  final TextStyle textStyle;
  final Function? onClick;
  final double? horizontalPadding;
  final Widget? subtitleWidget;
  final Widget? trailingWidget;

  const _ListTileButtonItem({
    required this.title,
    required this.leadingWidget,
    required this.textStyle,
    required this.horizontalPadding,
    required this.subtitleWidget,
    required this.trailingWidget,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onClick?.call(),
      child: ListTile(
        leading: leadingWidget,
        minVerticalPadding: 0.0,
        titleAlignment: ListTileTitleAlignment.titleHeight,
        contentPadding:
            EdgeInsets.symmetric(horizontal: horizontalPadding ?? 16),
        title: getIt<TextWidget>().textWidget(
          text: title,
          textStyle: textStyle,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.start,
        ),
        subtitle: subtitleWidget,
        trailing: trailingWidget,
      ),
    );
  }
}

class _ListTilesWidgetItem extends StatelessWidget {
  final String title;
  final Widget leadingWidget;
  final TextStyle textStyle;
  final String? subtitle;
  final Widget? trailingWidget;

  const _ListTilesWidgetItem({
    required this.title,
    required this.leadingWidget,
    required this.textStyle,
    required this.subtitle,
    required this.trailingWidget,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leadingWidget,
      contentPadding: const EdgeInsets.symmetric(vertical: 16),
      minVerticalPadding: 0.0,
      titleAlignment: ListTileTitleAlignment.top,
      title: getIt<TextWidget>().textWidget(
        text: title,
        textStyle: textStyle,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.start,
      ),
      subtitle: getIt<TextWidget>().textWidget(
        text: subtitle ?? "",
        textStyle: context.titleMedium().copyWith(color: hintColor),
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.start,
      ),
      trailing: trailingWidget,
    );
  }
}

class _ScrollOnExpandButtonItem extends StatelessWidget {
  final Widget? trailingWidget;
  final Widget headerWidget;
  final Widget collapsedWidget;

  const _ScrollOnExpandButtonItem({
    required this.trailingWidget,
    required this.headerWidget,
    required this.collapsedWidget,
  });

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      initialExpanded: true,
      child: ScrollOnExpand(
        scrollOnExpand: true,
        scrollOnCollapse: false,
        child: ExpandablePanel(
          theme: const ExpandableThemeData(
            tapBodyToCollapse: true,
            hasIcon: true,
            iconPadding: EdgeInsets.only(left: 12.0),
            expandIcon: Icons.keyboard_arrow_up,
            collapseIcon: Icons.keyboard_arrow_down,
            headerAlignment: ExpandablePanelHeaderAlignment.center,
            iconPlacement: ExpandablePanelIconPlacement.left,
          ),
          header: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: headerWidget,
          ),
          collapsed: collapsedWidget,
          expanded: Container(),
          builder: (_, collapsed, expanded) {
            return Expandable(
              collapsed: collapsed,
              expanded: expanded,
            );
          },
        ),
      ),
    );
  }
}

class _TitleScrollExpandButtonItem extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final Widget collapsedWidget;

  const _TitleScrollExpandButtonItem({
    required this.text,
    required this.textStyle,
    required this.collapsedWidget,
  });

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      initialExpanded: true,
      child: ScrollOnExpand(
        scrollOnExpand: true,
        scrollOnCollapse: false,
        child: ExpandablePanel(
          theme: const ExpandableThemeData(
            tapBodyToCollapse: true,
            hasIcon: true,
            iconPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 12),
            expandIcon: Icons.keyboard_arrow_up,
            collapseIcon: Icons.keyboard_arrow_down,
            headerAlignment: ExpandablePanelHeaderAlignment.center,
            iconPlacement: ExpandablePanelIconPlacement.right,
          ),
          header: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: getIt<TextWidget>().textWidget(
              text: text,
              textStyle: textStyle,
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          collapsed: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: collapsedWidget,
          ),
          expanded: Container(),
          builder: (_, collapsed, expanded) {
            return Expandable(
              collapsed: collapsed,
              expanded: expanded,
            );
          },
        ),
      ),
    );
  }
}

class _IconTextColumnButtonItem extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Function? onClick;
  final TextStyle textStyle;
  final Color iconColor;
  final double? iconSize;

  const _IconTextColumnButtonItem({
    required this.title,
    required this.iconData,
    required this.onClick,
    required this.textStyle,
    required this.iconColor,
    required this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onClick?.call(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (iconData != null) verticalBox(verticalSize: 8),
          getIt<TextWidget>().activeButtonText(
            text: title,
            textStyle: textStyle,
          ),
          verticalBox(verticalSize: 4),
          if (iconData != null)
            Icon(
              iconData,
              size: iconSize,
              color: iconColor,
            ),
        ],
      ),
    );
  }
}

class IconButtonItem extends StatelessWidget {
  final IconData iconData;
  final Function onClick;
  final bool hasDecoration;
  final double? size;
  final Color? color;

  const IconButtonItem({
    required this.iconData,
    required this.onClick,
    required this.hasDecoration,
    this.size,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: () => onClick.call(),
      icon: hasDecoration
          ? getIt<IconWidget>().iconWithDecoration(
              iconData: iconData,
              size: size ?? 24,
            )
          : getIt<IconWidget>().simpleIcon(
              iconData: iconData,
              size: size ?? 24,
              color: color,
            ),
    );
  }
}
