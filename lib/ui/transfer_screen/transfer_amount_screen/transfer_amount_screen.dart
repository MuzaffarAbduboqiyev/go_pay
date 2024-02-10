import 'package:flutter/material.dart';
import 'package:go_pay/ui/widgets/appbar/appbar_widget.dart';
import 'package:go_pay/ui/widgets/image/svg_image.dart';
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
            _textFieldCardWidget(),
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
  Widget _textFieldCardWidget() => TextFieldWidget(
        textController: _payTextController,
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
        child: svgImageWidget(
          imageName: "person",
          imageHeight: 50,
          imageWidth: 50,
          isCircle: true,
        ),
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
