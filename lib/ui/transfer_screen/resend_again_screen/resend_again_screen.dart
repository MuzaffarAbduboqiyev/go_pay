import 'package:flutter/material.dart';
import 'package:go_pay/ui/widgets/appbar/appbar_widget.dart';
import 'package:go_pay/ui/widgets/buttons/button_widget.dart';
import 'package:go_pay/ui/widgets/image/svg_image.dart';
import 'package:go_pay/ui/widgets/sized_box/size_boxes.dart';
import 'package:go_pay/utils/service/language_service/language_translate_extension.dart';
import 'package:go_pay/utils/service/theme_service/colors.dart';
import 'package:go_pay/utils/service/theme_service/theme_extension.dart';

class ResendAgainScreen extends StatefulWidget {
  const ResendAgainScreen({super.key});

  @override
  State<ResendAgainScreen> createState() => _ResendAgainScreenState();
}

class _ResendAgainScreenState extends State<ResendAgainScreen>
    with AppbarWidget, SvgImageWidget {
  _notificationsIconButton() {}

  _personIconButton() {}

  _tryAgainButton() {}

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _imageWidget(),
          verticalBox(verticalSize: 24),
          _textWidget(),
          verticalBox(verticalSize: 8),
          _errorTextWidget(),
        ],
      ),
      bottomNavigationBar: _continueButtonWidget(),
    );
  }

  /// _personIconWidget
  Widget _imageWidget() => Image.asset(
        "assets/images/credit_card.png",
        width: double.infinity,
        height: 250,
        fit: BoxFit.contain,
      );

  /// _textWidget
  Widget _textWidget() => Text(
        "resend.something".translate,
        style: context.headlineSmall(),
      );

  /// _errorTextWidget
  Widget _errorTextWidget() => Text(
        "resend.error_text".translate,
        style: context.labelLarge(),
        textAlign: TextAlign.center,
        maxLines: 2,
      );

  /// _continueButtonWidget
  Widget _continueButtonWidget() => Padding(
        padding: const EdgeInsets.all(16.0),
        child: ContinueButton(
          onClick: _tryAgainButton,
          title: "resend.try_again".translate,
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
}
