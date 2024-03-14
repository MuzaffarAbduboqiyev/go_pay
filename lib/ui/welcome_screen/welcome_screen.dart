import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_pay/controller/auth_controller/login_controller/login_bloc.dart';
import 'package:go_pay/controller/auth_controller/login_controller/login_repository.dart';
import 'package:go_pay/ui/widgets/buttons/button_widget.dart';
import 'package:go_pay/ui/widgets/image/svg_image.dart';
import 'package:go_pay/ui/widgets/sized_box/size_boxes.dart';
import 'package:go_pay/utils/extensions/keyboard_extension/keyboard_extension.dart';
import 'package:go_pay/utils/extensions/size_extension/size_extension.dart';
import 'package:go_pay/utils/service/language_service/language_translate_extension.dart';
import 'package:go_pay/utils/service/route_service/navigator_extension.dart';
import 'package:go_pay/utils/service/route_service/page_names.dart';
import 'package:go_pay/utils/service/singleton_service/get_it_service.dart';
import 'package:go_pay/utils/service/theme_service/colors.dart';
import 'package:go_pay/utils/service/theme_service/theme_extension.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SvgImageWidget {
  void _saveLocale(String language) async {
    await context.setLocale(
      Locale(
        language,
        (language == "en")
            ? "US"
            : (language == "ru")
                ? "RU"
                : "UZ",
      ),
    );
  }

  void _continue() async {
    await context.goScreen(
      screenName: PageName.loginScreen,
      arguments: {
        "bloc": LoginBloc(
          getIt<LoginRepository>(),
        ),
      },
    );
  }

  @override
  void initState() {
    super.initState();
    hideKeyboard();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalBox(verticalSize: 74),
            _welcome,
            verticalBox(verticalSize: 52),
            _language,
            verticalBox(verticalSize: 100),
            _continueButton,
          ],
        ),
      ),
    );
  }

  Widget get _continueButton => ContinueButton(
        onClick: _continue,
      );

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
              style: context.headlineSmall(),
            ),
            Text(
              "app".translate,
              style: context.displayLarge(),
            ),
            Text(
              "welcome.welcome_content".translate,
              style: context.labelSmall(),
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
            style: context.bodyMedium(),
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
      onTap: () async {
        await context.deleteSaveLocale();
        _saveLocale(language);
      },
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
            style: context.labelMedium(),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    context.read<LoginBloc>().close();
    hideKeyboard();
    super.dispose();
  }
}
