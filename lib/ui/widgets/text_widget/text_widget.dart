import 'package:flutter/material.dart';
import 'package:go_pay/ui/widgets/sized_box/size_boxes.dart';
import 'package:go_pay/utils/service/singleton_service/get_it_service.dart';
import 'package:go_pay/utils/service/theme_service/colors.dart';
import 'package:go_pay/utils/service/theme_service/theme_extension.dart';
import 'package:injectable/injectable.dart';

abstract class TextWidget {
  TextItem textWidget({
    required String text,
    TextStyle? textStyle,
    TextAlign? textAlign,
    int? maxLines,
    double? horizontalPadding,
    double? verticalPadding,
    TextOverflow? overflow,
  });

  TextRowIconItem textRowIconWidget({
    required String text,
    TextStyle? textStyle,
    TextAlign? textAlign,
    int? maxLines,
    double? horizontalPadding,
    double? verticalPadding,
    TextOverflow? overflow,
    required Widget widgets,
  });

  TextListTileItem textListTileWidget({
    required String text,
    TextStyle? textStyle,
    String? subtitle,
    TextStyle? subtitleStyle,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    required Widget widgets,
  });

  TextColumnItem columnTitleWidget({
    required String text,
    TextStyle? textStyle,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    required String subtitleText,
    TextStyle? subtitleStyle,
    int? subtitleMaxLines,
    TextAlign? subtitleAlign,
    Widget? widgets,
  });

  TextColumnWidgetItem textColumnWidget({
    required String text,
    TextStyle? textStyle,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    required String subtitleText,
    TextStyle? subtitleStyle,
    int? subtitleMaxLines,
    TextAlign? subtitleAlign,
    double? horizontalPadding,
    double? verticalPadding,
    double? verticalSize,
  });

  TextRowTitleItem rowTitleWidget({
    required String text,
    TextStyle? textStyle,
    TextAlign? textAlign,
    int? maxLines,
    double? verticalMargin,
    TextOverflow? overflow,
    required Widget widgets,
  });

  TextItem activeButtonText({
    required String text,
    TextStyle? textStyle,
  });

  TextItem cancelButtonText({
    required String text,
    TextStyle? textStyle,
  });

  AppbarTextItem textAppbarTitle({
    required String text,
  });
}

@Injectable(as: TextWidget)
class TextWidgetImplementation extends TextWidget {
  @override
  TextItem textWidget({
    required String text,
    TextStyle? textStyle,
    TextAlign? textAlign,
    int? maxLines,
    double? horizontalPadding,
    double? verticalPadding,
    TextOverflow? overflow,
  }) =>
      TextItem(
        text: text,
        textStyle: textStyle,
        textAlign: textAlign,
        maxLines: maxLines,
        verticalPadding: verticalPadding,
        horizontalPadding: horizontalPadding,
        overflow: overflow,
      );

  TextRowIconItem textRowIconWidget({
    required String text,
    TextStyle? textStyle,
    TextAlign? textAlign,
    int? maxLines,
    double? horizontalPadding,
    double? verticalPadding,
    TextOverflow? overflow,
    required Widget widgets,
  }) =>
      TextRowIconItem(
        text: text,
        textStyle: textStyle,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow,
        widgets: widgets,
        horizontalPadding: horizontalPadding,
        verticalPadding: verticalPadding,
      );

  TextListTileItem textListTileWidget({
    required String text,
    TextStyle? textStyle,
    TextAlign? textAlign,
    String? subtitle,
    TextStyle? subtitleStyle,
    int? maxLines,
    TextOverflow? overflow,
    required Widget widgets,
  }) =>
      TextListTileItem(
        text: text,
        textStyle: textStyle,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow,
        subtitle: subtitle,
        subtitleStyle: subtitleStyle,
        widgets: widgets,
      );

  TextColumnItem columnTitleWidget({
    required String text,
    TextStyle? textStyle,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    required String subtitleText,
    TextStyle? subtitleStyle,
    int? subtitleMaxLines,
    TextAlign? subtitleAlign,
    Widget? widgets,
  }) =>
      TextColumnItem(
        text: text,
        textStyle: textStyle,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow,
        subtitleText: subtitleText,
        subtitleStyle: subtitleStyle,
        subtitleMaxLines: subtitleMaxLines,
        subtitleAlign: subtitleAlign,
        widgets: widgets,
      );

  TextColumnWidgetItem textColumnWidget({
    required String text,
    TextStyle? textStyle,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    required String subtitleText,
    TextStyle? subtitleStyle,
    int? subtitleMaxLines,
    TextAlign? subtitleAlign,
    double? horizontalPadding,
    double? verticalPadding,
    double? verticalSize,
  }) =>
      TextColumnWidgetItem(
        text: text,
        textStyle: textStyle,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow,
        subtitleText: subtitleText,
        subtitleStyle: subtitleStyle,
        subtitleMaxLines: subtitleMaxLines,
        subtitleAlign: subtitleAlign,
        horizontalPadding: horizontalPadding,
        verticalPadding: verticalPadding,
        verticalSize: verticalSize,
      );

  TextRowTitleItem rowTitleWidget({
    required String text,
    TextStyle? textStyle,
    TextAlign? textAlign,
    int? maxLines,
    double? verticalMargin,
    TextOverflow? overflow,
    required Widget widgets,
  }) =>
      TextRowTitleItem(
        text: text,
        textStyle: textStyle,
        textAlign: textAlign,
        maxLines: maxLines,
        verticalMargin: verticalMargin,
        overflow: overflow,
        widgets: widgets,
      );

  @override
  AppbarTextItem textAppbarTitle({
    required String text,
  }) =>
      AppbarTextItem(
        text: text,
      );

  @override
  TextItem activeButtonText({
    required String text,
    TextStyle? textStyle,
  }) =>
      TextItem(
        text: text,
        textStyle: textStyle,
        textAlign: TextAlign.center,
      );

  @override
  TextItem cancelButtonText({
    required String text,
    TextStyle? textStyle,
  }) =>
      TextItem(
        text: text,
        textStyle: textStyle,
        textAlign: TextAlign.center,
      );
}

class TextItem extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final int? maxLines;
  final double? horizontalPadding;
  final double? verticalPadding;

  final TextOverflow? overflow;

  const TextItem({
    required this.text,
    required this.textStyle,
    this.textAlign,
    this.maxLines,
    this.horizontalPadding,
    this.verticalPadding,
    this.overflow,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding ?? 0.0,
        vertical: verticalPadding ?? 0.0,
      ),
      child: Text(
        text,
        style: textStyle ?? context.bodyLarge(),
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
      ),
    );
  }
}

class TextRowIconItem extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final Widget widgets;
  final double? horizontalPadding;
  final double? verticalPadding;

  const TextRowIconItem({
    required this.text,
    required this.textStyle,
    this.textAlign,
    this.maxLines,
    this.overflow,
    required this.widgets,
    this.horizontalPadding,
    this.verticalPadding,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding ?? 0.0,
        vertical: verticalPadding ?? 0.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: textStyle ?? context.bodyLarge(),
            maxLines: maxLines,
            overflow: overflow,
            textAlign: textAlign,
          ),
          widgets,
        ],
      ),
    );
  }
}

class TextListTileItem extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final Widget widgets;
  final String? subtitle;
  final TextStyle? subtitleStyle;

  const TextListTileItem({
    required this.text,
    required this.textStyle,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.subtitle,
    this.subtitleStyle,
    required this.widgets,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 10.0,
      contentPadding: EdgeInsets.zero,
      title: Text(
        text,
        style: textStyle ?? context.titleMedium(),
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
      ),
      subtitle: getIt<TextWidget>().textWidget(
        text: subtitle ?? "",
        textStyle:
            subtitleStyle ?? context.bodyMedium().copyWith(color: hintColor),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: widgets,
    );
  }
}

class TextColumnItem extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final String subtitleText;
  final TextStyle? subtitleStyle;
  final int? subtitleMaxLines;
  final TextAlign? subtitleAlign;
  final Widget? widgets;

  const TextColumnItem({
    required this.text,
    required this.textStyle,
    this.textAlign,
    this.maxLines,
    this.overflow,
    required this.subtitleText,
    required this.subtitleStyle,
    this.subtitleMaxLines,
    this.subtitleAlign,
    this.widgets,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 0.0,
      contentPadding: EdgeInsets.zero,
      titleAlignment: ListTileTitleAlignment.top,
      horizontalTitleGap: 8,
      title: Text(
        text,
        style: textStyle ?? context.titleMedium(),
        maxLines: maxLines,
        overflow: overflow ?? TextOverflow.ellipsis,
        textAlign: textAlign,
      ),
      subtitle: Text(
        subtitleText,
        style: subtitleStyle ?? context.titleMedium(),
        maxLines: subtitleMaxLines ?? 2,
        overflow: TextOverflow.ellipsis,
        textAlign: subtitleAlign ?? TextAlign.start,
      ),
      trailing: widgets,
    );
  }
}

class TextColumnWidgetItem extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final String subtitleText;
  final TextStyle? subtitleStyle;
  final int? subtitleMaxLines;
  final TextAlign? subtitleAlign;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? verticalSize;

  const TextColumnWidgetItem({
    required this.text,
    required this.textStyle,
    this.textAlign,
    this.maxLines,
    this.overflow,
    required this.subtitleText,
    required this.subtitleStyle,
    this.subtitleMaxLines,
    this.subtitleAlign,
    this.horizontalPadding,
    this.verticalPadding,
    this.verticalSize,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding ?? 0.0,
        vertical: verticalPadding ?? 0.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getIt<TextWidget>().textWidget(
            text: text,
            textStyle: textStyle,
            overflow: overflow,
            maxLines: maxLines,
            textAlign: textAlign,
          ),
          verticalBox(verticalSize: verticalSize ?? 0.0),
          getIt<TextWidget>().textWidget(
            text: subtitleText,
            textStyle: subtitleStyle,
            overflow: TextOverflow.ellipsis,
            maxLines: subtitleMaxLines,
            textAlign: subtitleAlign,
          ),
        ],
      ),
    );
  }
}

class TextRowTitleItem extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final int? maxLines;
  final double? verticalMargin;
  final TextOverflow? overflow;
  final Widget widgets;

  const TextRowTitleItem({
    required this.text,
    required this.textStyle,
    this.textAlign,
    this.maxLines,
    this.verticalMargin,
    this.overflow,
    required this.widgets,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: verticalMargin ?? 10.0,
      contentPadding: EdgeInsets.zero,
      title: Text(
        text,
        style: textStyle ?? context.titleMedium(),
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
      ),
      trailing: widgets,
    );
  }
}

class AppbarTextItem extends StatelessWidget {
  final String text;

  const AppbarTextItem({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.headlineLarge(),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
