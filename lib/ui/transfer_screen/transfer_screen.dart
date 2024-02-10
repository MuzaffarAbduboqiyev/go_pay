import 'package:flutter/material.dart';
import 'package:go_pay/ui/widgets/appbar/appbar_widget.dart';
import 'package:go_pay/ui/widgets/buttons/button_widget.dart';
import 'package:go_pay/ui/widgets/dialog/loading_dialog.dart';
import 'package:go_pay/ui/widgets/image/svg_image.dart';
import 'package:go_pay/ui/widgets/sized_box/size_boxes.dart';
import 'package:go_pay/ui/widgets/text_field_widget/mask_formatters.dart';
import 'package:go_pay/ui/widgets/text_field_widget/text_field_widget.dart';
import 'package:go_pay/utils/service/language_service/language_translate_extension.dart';
import 'package:go_pay/utils/service/route_service/navigator_extension.dart';
import 'package:go_pay/utils/service/route_service/page_names.dart';
import 'package:go_pay/utils/service/theme_service/colors.dart';
import 'package:go_pay/utils/service/theme_service/theme_extension.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({super.key});

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen>
    with AppbarWidget, SvgImageWidget {
  final TextEditingController _cardController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _surnameController = TextEditingController();
  bool showLoading = true;

  _notificationsIconButton() {}

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
            _cardNumberWidget(),
            verticalBox(verticalSize: 16),
            _imageCardWidget(),
            verticalBox(verticalSize: 16),
            _cardNumberFormFieldWidget(),
            verticalBox(verticalSize: 16),
            _nameSurnameWidget(),
            verticalBox(verticalSize: 16),
            _nameFormFieldWidget(),
            verticalBox(verticalSize: 16),
            _surnameFormFieldWidget(),
            verticalBox(verticalSize: 32),
            _continueButtonWidget(),
          ],
        ),
      ),
    );
  }

  /// _cardNumberWidget
  Widget _cardNumberWidget() => Text(
        "transfer.card_text".translate,
        style: context.titleSmall().copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
      );

  /// _imageCardWidget
  Widget _imageCardWidget() => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
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
        textController: _nameController,
        hintText: "transfer.name".translate,
        keyboardType: TextInputType.name,
      );

  /// _surnameFormFieldWidget
  Widget _surnameFormFieldWidget() => TextFieldWidget(
        textController: _surnameController,
        hintText: "transfer.surname".translate,
        keyboardType: TextInputType.name,
      );

  /// _notificationsIconWidget
  Widget _notificationsIconWidget() => Container(
        width: 42,
        height: 42,
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

  /// _continueButtonWidget
  Widget _continueButtonWidget() => ContinueButton(
        onClick: _continueButton,
        title: "transfer.continue".translate,
      );
}
