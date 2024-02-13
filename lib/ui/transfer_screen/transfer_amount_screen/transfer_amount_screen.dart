import 'package:flutter/material.dart';
import 'package:go_pay/ui/transfer_screen/transfer_check_dialog_item/transfer_check_dialog_item.dart';
import 'package:go_pay/ui/widgets/appbar/appbar_widget.dart';
import 'package:go_pay/ui/widgets/image/svg_image.dart';
import 'package:go_pay/ui/widgets/sized_box/size_boxes.dart';
import 'package:go_pay/ui/widgets/text_field_widget/text_field_widget.dart';
import 'package:go_pay/utils/service/language_service/language_translate_extension.dart';
import 'package:go_pay/utils/service/theme_service/colors.dart';
import 'package:go_pay/utils/service/theme_service/theme_extension.dart';

class TransferAmountScreen extends StatefulWidget {
  const TransferAmountScreen({super.key});

  @override
  State<TransferAmountScreen> createState() => _TransferAmountScreenState();
}

class _TransferAmountScreenState extends State<TransferAmountScreen>
    with AppbarWidget, SvgImageWidget {
  final TextEditingController _payTextController = TextEditingController();

  _notificationsIconButton() {}

  _personIconButton() {}

  _pushPromoCodeButton() {
    showDialog(
      context: context,
      builder: (context) => const TransferCheckDialogItem(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cardColor,
      appBar: actionsAppBar(
          backgroundColor: backgroundColor,
          type: AppbarType.withBack,
          actions: [
            _notificationsIconWidget(),
            _personIconWidget(),
          ]),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _transferWidget(),
            verticalBox(verticalSize: 12),
            _textFieldCardWidget(),
            verticalBox(verticalSize: 8),
            _answerCardWidget(),
            verticalBox(verticalSize: 8),
            _textCodeWidget(),
            verticalBox(verticalSize: 100),
            _secondCardWidget(),
          ],
        ),
      ),
    );
  }

  /// _transferWidget
  Widget _transferWidget() => Text(
        "transfer.transfer".translate,
        style: context.titleSmall().copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
      );

  /// _textFieldCardWidget
  Widget _textFieldCardWidget() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        width: double.infinity,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalBox(verticalSize: 16),
            Text(
              "transfer.you_pay".translate,
              style: context.labelLarge().copyWith(fontSize: 16),
            ),
            verticalBox(verticalSize: 8),
            TextFieldWidget(
              autofocus: true,
              textController: _payTextController,
              textStyle: context.displayMedium(),
              keyboardType: TextInputType.number,
              disabledBorderColor: Colors.transparent,
              enabledBorderColor: Colors.transparent,
              focusedBorderColor: Colors.transparent,
              horizontalPadding: 0.0,
              onChanged: (onChanged) {
                setState(() {
                  _payTextController.text == onChanged;
                });
              },
              suffixIcon: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  "UZS",
                  style: context.headlineLarge(),
                ),
              ),
            ),
          ],
        ),
      );

  /// _answerCardWidget
  Widget _answerCardWidget() => Container(
        padding: const EdgeInsets.all(16.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "transfer.resipients".translate,
              style: context.labelLarge().copyWith(fontSize: 16),
            ),
            verticalBox(verticalSize: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _payTextController.text,
                  style: context.displaySmall(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Text(
                    "RUB",
                    style: context.headlineLarge().copyWith(color: hintColor),
                  ),
                ),
              ],
            )
          ],
        ),
      );

  /// _textCodeWidget
  Widget _textCodeWidget() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          horizontalBox(horizontalSize: 0.0),
          InkWell(
            onTap: _pushPromoCodeButton,
            child: Text(
              "transfer.promo_code".translate,
              style: context.bodyLarge().copyWith(color: blueColors),
            ),
          ),
        ],
      );

  /// _secondCardWidget
  Widget _secondCardWidget() => Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _titleItem(
              title: "transfer.today_course".translate,
              trailingTitle: "1.00 RUB = 142.2566 UZS",
            ),
            _titleItem(
              title: "transfer.fee".translate,
              trailingTitle: "transfer.minimum_amount".translate,
            ),
            _titleItem(
              title: "transfer.should_arrive".translate,
              trailingTitle: "transfer.few_minutes".translate,
            ),
          ],
        ),
      );

  /// _notificationsIconWidget
  Widget _notificationsIconWidget() => Container(
        width: 42,
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: InkWell(
          onTap: _notificationsIconButton,
          child: Icon(
            Icons.notifications_none,
            color: textColor,
          ),
        ),
      );

  /// _personIconWidget
  Widget _personIconWidget() => InkWell(
        onTap: _personIconButton,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Image.asset(
            "assets/images/person.png",
            width: 40,
            height: 40,
            fit: BoxFit.fill,
          ),
        ),
        // svgImageWidget(
        //   imageName: "person",
        //   imageHeight: 50,
        //   imageWidth: 50,
        //   isCircle: true,
        // ),
      );

  Widget _titleItem({
    required String title,
    required String trailingTitle,
  }) =>
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: context.titleSmall(),
            ),
            Text(
              trailingTitle,
              style: context.labelLarge(),
            ),
          ],
        ),
      );
}
