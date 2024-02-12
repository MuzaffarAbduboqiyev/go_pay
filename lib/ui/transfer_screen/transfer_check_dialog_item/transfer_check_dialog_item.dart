import 'package:flutter/material.dart';
import 'package:go_pay/ui/widgets/buttons/button_widget.dart';
import 'package:go_pay/ui/widgets/sized_box/size_boxes.dart';
import 'package:go_pay/utils/service/language_service/language_translate_extension.dart';
import 'package:go_pay/utils/service/route_service/navigator_extension.dart';
import 'package:go_pay/utils/service/route_service/page_names.dart';
import 'package:go_pay/utils/service/theme_service/colors.dart';
import 'package:go_pay/utils/service/theme_service/theme_extension.dart';

class TransferCheckDialogItem extends StatefulWidget {
  const TransferCheckDialogItem({super.key});

  @override
  State<TransferCheckDialogItem> createState() =>
      _TransferCheckDialogItemState();
}

class _TransferCheckDialogItemState extends State<TransferCheckDialogItem> {
  _confirmButton() {
    context.goScreen(screenName: PageName.homeScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      verticalDirection: VerticalDirection.up,
      children: [
        _confirmButtonWidget(),
        _todayCourseWidget(),
        verticalBox(verticalSize: 16),
        _youPayCardWidget(),
        verticalBox(verticalSize: 16),
        _fromCardWidget(),
      ],
    );
  }

  /// _fromCardWidget
  Widget _fromCardWidget() => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        surfaceTintColor: backgroundColor,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        insetPadding: const EdgeInsets.symmetric(horizontal: 16),
        content: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "check.from".translate,
                    style: context.titleSmall(),
                  ),
                  Text(
                    "0000 0000 0000 0000",
                    style: context.bodyLarge(),
                  ),
                ],
              ),
              verticalBox(verticalSize: 8),
              Divider(color: hintColor),
              verticalBox(verticalSize: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "check.to".translate,
                    style: context.titleSmall(),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Olimov Azizbek",
                        style: context.labelLarge(),
                      ),
                      Text(
                        "0000 0000 0000 0000",
                        style: context.bodyLarge(),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  /// _youPayCardWidget
  Widget _youPayCardWidget() => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        surfaceTintColor: backgroundColor,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        insetPadding: const EdgeInsets.symmetric(horizontal: 16),
        content: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "check.you_pay".translate,
                    style: context.labelLarge(),
                  ),
                  Text(
                    "check.resipients".translate,
                    style: context.labelLarge(),
                  ),
                ],
              ),
              verticalBox(verticalSize: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "0 uzs",
                    style: context.headlineSmall(),
                  ),
                  Text(
                    "0 rub".translate,
                    style: context.headlineSmall(),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  /// _todayCourseWidget
  Widget _todayCourseWidget() => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        surfaceTintColor: backgroundColor,
        insetPadding: const EdgeInsets.symmetric(horizontal: 16),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        content: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "check.fee".translate,
                    style: context.titleSmall(),
                  ),
                  Text(
                    "0 uzs",
                    style: context.bodyLarge(),
                  ),
                ],
              ),
              verticalBox(verticalSize: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "check.should_arrive".translate,
                    style: context.titleSmall(),
                  ),
                  Text(
                    "check.minutes".translate,
                    style: context.bodyLarge(),
                  ),
                ],
              ),
              verticalBox(verticalSize: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "check.course".translate,
                    style: context.titleSmall(),
                  ),
                  Text(
                    "0.0 RUB = 0.0 UZS",
                    style: context.bodyLarge(),
                  ),
                ],
              ),
              verticalBox(verticalSize: 8),
              Divider(color: hintColor),
              verticalBox(verticalSize: 8),
              RichText(
                maxLines: 3,
                textAlign: TextAlign.start,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  text: "check.service1".translate,
                  style: context.labelLarge(),
                  children: [
                    const TextSpan(text: " "),
                    TextSpan(
                      text: "check.service2".translate,
                      style: context.labelLarge().copyWith(color: blueColors),
                    ),
                    const TextSpan(text: " "),
                    TextSpan(
                      text: "check.service3".translate,
                      style: context.labelLarge(),
                    ),
                    const TextSpan(text: " "),
                    TextSpan(
                      text: "check.service4".translate,
                      style: context.labelLarge().copyWith(color: blueColors),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  /// _confirmButtonWidget
  Widget _confirmButtonWidget() => Padding(
        padding: const EdgeInsets.all(16.0),
        child: ContinueButton(
          onClick: _confirmButton,
          title: "check.confirm".translate,
        ),
      );
}
