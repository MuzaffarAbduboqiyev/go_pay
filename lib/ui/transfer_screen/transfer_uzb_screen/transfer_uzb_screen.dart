import 'package:flutter/material.dart';
import 'package:go_pay/ui/widgets/appbar/appbar_widget.dart';
import 'package:go_pay/ui/widgets/buttons/button_widget.dart';
import 'package:go_pay/ui/widgets/dialog/loading_dialog.dart';
import 'package:go_pay/ui/widgets/image/svg_image.dart';
import 'package:go_pay/ui/widgets/sized_box/size_boxes.dart';
import 'package:go_pay/ui/widgets/text_field_widget/text_field_widget.dart';
import 'package:go_pay/utils/mask_formatters/mask_formatters.dart';
import 'package:go_pay/utils/service/language_service/language_translate_extension.dart';
import 'package:go_pay/utils/service/route_service/navigator_extension.dart';
import 'package:go_pay/utils/service/route_service/page_names.dart';
import 'package:go_pay/utils/service/theme_service/colors.dart';
import 'package:go_pay/utils/service/theme_service/theme_extension.dart';

class TransferUzbScreen extends StatefulWidget {
  const TransferUzbScreen({super.key});

  @override
  State<TransferUzbScreen> createState() => _TransferUzbScreenState();
}

class _TransferUzbScreenState extends State<TransferUzbScreen>
    with AppbarWidget, SvgImageWidget {
  final TextEditingController _cardController = TextEditingController();
  bool showLoading = true;

  _pushNotificationsScreen() {
    context.goScreen(screenName: PageName.notificationScreen);
  }

  _personIconButton() {}

  _continueButton() {
    showLoadingDialog();
    Future.delayed(const Duration(seconds: 3), () async {
      if (showLoading) {
        hideLoadingDialog();
      }
      context.goScreen(screenName: PageName.transferAmountScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cardColor,
      appBar: actionsAppBar(
          backgroundColor: cardColor,
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
            _titleNumberWidget(),
            _imageCardWidget(),
            _cardNumberFormFieldWidget(),
            verticalBox(verticalSize: 16),
            _nameSurnameWidget(),
            verticalBox(verticalSize: 16),
            _nameFormFieldWidget(),
            verticalBox(verticalSize: 16),
            _surnameFormFieldWidget(),
          ],
        ),
      ),
      bottomNavigationBar: _continueButtonWidget(),
    );
  }

  /// _titleNumberWidget
  Widget _titleNumberWidget() => Text(
        "transfer.card_text".translate,
        style: context.titleSmall().copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
      );

  /// _imageCardWidget
  Widget _imageCardWidget() => Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: ClipRRect(
          clipBehavior: Clip.antiAlias,
          borderRadius: BorderRadius.circular(12),
          child: svgImageWidget(
            imageName: "frame",
            imageWidth: double.infinity,
            imageHeight: 143,
            boxFitType: BoxFit.fill,
          ),
        ),
      );

  /// _cardNumberFormFieldWidget
  Widget _cardNumberFormFieldWidget() => TextFieldWidget(
        textController: _cardController,
        hintText: "transfer.card_number".translate,
        inputFormatters: [cardMaskFormatter],
        keyboardType: TextInputType.phone,
      );

  /// _nameSurnameWidget
  Widget _nameSurnameWidget() => Text(
        "transfer.name_text".translate,
        style: context.titleSmall().copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
      );

  /// _nameFormFieldWidget
  Widget _nameFormFieldWidget() => TextFieldWidget(
        readOnly: true,
        focusedBorderColor: greyHintColor,
        hintText: "transfer.name".translate,
        keyboardType: TextInputType.name,
      );

  /// _surnameFormFieldWidget
  Widget _surnameFormFieldWidget() => TextFieldWidget(
        readOnly: true,
        focusedBorderColor: greyHintColor,
        hintText: "transfer.surname".translate,
        keyboardType: TextInputType.name,
      );

  /// _notificationsIconWidget
  Widget _notificationsIconWidget() => Container(
        width: 40,
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: InkWell(
          onTap: _pushNotificationsScreen,
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
      );

  /// _continueButtonWidget
  Widget _continueButtonWidget() => Padding(
        padding: const EdgeInsets.all(16.0),
        child: ContinueButton(
          onClick: _continueButton,
          title: "transfer.continue".translate,
        ),
      );
}
