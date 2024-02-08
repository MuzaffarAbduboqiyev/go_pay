import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_pay/ui/widgets/image/svg_image.dart';
import 'package:go_pay/ui/widgets/sized_box/size_boxes.dart';
import 'package:go_pay/utils/extensions/size_extension/size_extension.dart';
import 'package:go_pay/utils/service/language_service/language_translate_extension.dart';
import 'package:go_pay/utils/service/theme_service/colors.dart';
import 'package:go_pay/utils/service/theme_service/theme_extension.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SvgImageWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalBox(verticalSize: 16),
            _welcome,
            verticalBox(verticalSize: 16),
            _language,
            verticalBox(verticalSize: 16),
            _continueButton,
          ],
        ),
      ),
    );
  }

  Widget get _continueButton => SizedBox(
        width: double.maxFinite,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            padding: const EdgeInsets.symmetric(vertical: 12.0,),
          ),

          onPressed: () {},
          child: Text(
            "dialog.continue".translate,
            style: context.labelLarge().copyWith(
                  color: Colors.white,
                ),
          ),
        ),
      );

  // OutlinedButton(
  // style: OutlinedButton.styleFrom(
  // backgroundColor: buttonColor,
  // ),
  // onPressed: _onSubmit,
  // child: Text(
  // "login.login".translate,
  // style: context.bodySmall().copyWith(color: Colors.white),
  // ),
  // );

  Widget get _welcome => Container(
        height: context.height / 2,
        padding: const EdgeInsets.all(16.0),
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "welcome.welcome".translate,
              style: context.displayMedium(),
            ),
            Text(
              "app".translate,
              style: context.headlineLarge().copyWith(
                    fontWeight: FontWeight.w600,
                    color: buttonColor,
                  ),
            ),
            Text(
              "welcome.welcome_content".translate,
              style: context.titleSmall().copyWith(
                    fontWeight: FontWeight.w300,
                  ),
            ),
          ],
        ),
      );

  Widget get _language => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "language.choose".translate,
            style: context.bodyLarge().copyWith(
                  fontWeight: FontWeight.w300,
                ),
            textAlign: TextAlign.center,
          ),
          verticalBox(verticalSize: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _languageButton(
                language: "uz",
              ),
              _languageButton(
                language: "ru",
              ),
              _languageButton(
                language: "en",
              ),
            ],
          ),
        ],
      );

  Widget _languageButton({
    required String language,
  }) {
    return InkWell(
      onTap: () => context.setLocale(Locale(language.toLowerCase())),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: hintColor,
                width: 1,
              ),
            ),
            child: svgImageWidget(
              imageName: language,
              imageWidth: 50,
              imageHeight: 50,
              isCircle: true,
              boxFitType: BoxFit.cover,
            ),
          ),
          verticalBox(verticalSize: 6),
          Text(
            "language.$language".translate,
            style: context.labelMedium().copyWith(
                  fontWeight: FontWeight.w300,
                  color: textColor,
                ),
          ),
        ],
      ),
    );
  }
}
