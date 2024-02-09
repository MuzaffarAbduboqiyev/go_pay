import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_pay/ui/auth/otp_screen/otp_timer_item/otp_timer_item.dart';
import 'package:go_pay/ui/widgets/button_widget/button_widget.dart';
import 'package:go_pay/ui/widgets/sized_box/size_boxes.dart';
import 'package:go_pay/ui/widgets/text_widget/text_widget.dart';
import 'package:go_pay/utils/service/language_service/language_translate_extension.dart';
import 'package:go_pay/utils/service/route_service/navigator_extension.dart';
import 'package:go_pay/utils/service/route_service/page_names.dart';
import 'package:go_pay/utils/service/singleton_service/get_it_service.dart';
import 'package:go_pay/utils/service/theme_service/colors.dart';
import 'package:go_pay/utils/service/theme_service/theme_extension.dart';
import 'package:sms_autofill/sms_autofill.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const OtpPage();
  }
}

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final TextEditingController _otpController = TextEditingController();

  _continueButton() {
    context.goScreen(screenName: PageName.homeScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getIt<TextWidget>().textWidget(
                  text: "Enter the security code".translate,
                  textStyle: context.displayMedium().copyWith(
                        fontSize: 26,
                        fontWeight: FontWeight.w900,
                      ),
                ),
                verticalBox(verticalSize: 10),
                getIt<TextWidget>().textWidget(
                  text: "We send an SMS to: +998 91 123 45 67".translate,
                  textStyle: context.customStyle(
                    textSize: 16,
                    color: hintColor,
                    weight: FontWeight.w600,
                  ),
                ),
                verticalBox(verticalSize: 12),
                _oTPTextFieldWidget(),
                verticalBox(verticalSize: 12),
                const OtpTimerItem(),
              ],
            ),
            _continueWidget(),
          ],
        ),
      ),
    );
  }

  /// _oTPTextField Widget
  Widget _oTPTextFieldWidget() => getIt<ButtonWidget>().cardContainerButton(
        verticalPadding: 16,
        horizontalPadding: 12,
        cardColors: greyBackgroundColor,
        height: 100,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getIt<TextWidget>().textWidget(
              text: "Confirmation code".translate,
              textStyle: context.displaySmall(),
            ),
            verticalBox(verticalSize: 8),
            SizedBox(
              height: 66,
              child: PinFieldAutoFill(
                controller: _otpController,
                codeLength: 6,
                autoFocus: true,
                enableInteractiveSelection: true,
                decoration: BoxLooseDecoration(
                  gapSpace: 8,
                  radius: const Radius.circular(14.0),
                  bgColorBuilder: PinListenColorBuilder(
                    whiteColor,
                    inputBackgroundColor,
                  ),
                  strokeColorBuilder: PinListenColorBuilder(
                    buttonColor,
                    hintColor,
                  ),
                  textStyle: context.displayLarge().copyWith(fontSize: 26),
                ),
                keyboardType: TextInputType.phone,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                textInputAction: TextInputAction.done,
                smsCodeRegexPattern: r'[0-9]{4,10}',
              ),
            ),
          ],
        ),
      );

  /// _continueWidget
  Widget _continueWidget() => SizedBox(
        width: double.maxFinite,
        height: 56,
        child: getIt<ButtonWidget>().activeButton(
          title: "Continue".translate,
          textStyle: context.bodyMedium().copyWith(color: whiteColor),
          onClick: _continueButton,
        ),
      );
}
