import 'package:flutter/material.dart';
import 'package:go_pay/ui/transfer_screen/promo_code_dialog_item/promo_code_dialog_item.dart';
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

class TransferRusScreen extends StatefulWidget {
  const TransferRusScreen({super.key});

  @override
  State<TransferRusScreen> createState() => _TransferRusScreenState();
}

class _TransferRusScreenState extends State<TransferRusScreen>
    with AppbarWidget, SvgImageWidget {
  final TextEditingController _cardTextController = TextEditingController();
  final TextEditingController _cardExpController = TextEditingController();
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
      showDialog(
        context: context,
        builder: (context) => const PromoCodeDialogItem(),
      );
    });
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
            _titleNumberWidget(),
            _imageCardWidget(),
            _cardTextFieldWidget(),
            verticalBox(verticalSize: 16),
            _cardExpWidget(),
            verticalBox(verticalSize: 16),
            _cardWidget(),
            verticalBox(verticalSize: 16),
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

  /// _cardTextFieldWidget
  Widget _cardTextFieldWidget() => TextFieldWidget(
        textController: _cardTextController,
        textStyle: context.titleSmall(),
        hintText: "transfer.card_number".translate,
        inputFormatters: [cardMaskFormatter],
        keyboardType: TextInputType.phone,
      );

  /// _cardExpWidget
  Widget _cardExpWidget() => SizedBox(
        width: 132.0,
        child: TextFieldWidget(
          textController: _cardExpController,
          hintText: "xx/xx",
          hintStyle: context.labelLarge().copyWith(fontSize: 16),
          textStyle: context.titleSmall(),
          inputFormatters: [cardExpireMaskFormatter],
          keyboardType: TextInputType.phone,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "transfer.exp".translate,
              style: context.labelLarge(),
            ),
          ),
        ),
      );

  /// _cardWidget
  Widget _cardWidget() => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        surfaceTintColor: backgroundColor,
        contentPadding: const EdgeInsets.all(16.0),
        insetPadding: EdgeInsets.zero,
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
                    "transfer.fee".translate,
                    style: context.titleSmall(),
                  ),
                  Text(
                    "transfer.minimum_amount".translate,
                    style: context.labelLarge(),
                  ),
                ],
              ),
              verticalBox(verticalSize: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "transfer.should_arrive".translate,
                    style: context.titleSmall(),
                  ),
                  Text(
                    "transfer.few_minutes".translate,
                    style: context.labelLarge(),
                  ),
                ],
              ),
            ],
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

  /// _notificationsIconWidget
  Widget _notificationsIconWidget() => Container(
        width: 38,
        height: 38,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: greyBackgroundColor,
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
            width: 38,
            height: 38,
            fit: BoxFit.fill,
          ),
        ),
      );
}
