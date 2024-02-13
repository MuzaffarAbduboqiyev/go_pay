import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_pay/ui/widgets/appbar/appbar_widget.dart';
import 'package:go_pay/ui/widgets/divider_widget/divider.dart';
import 'package:go_pay/ui/widgets/image/svg_image.dart';
import 'package:go_pay/utils/service/language_service/language_translate_extension.dart';
import 'package:go_pay/utils/service/theme_service/colors.dart';
import 'package:go_pay/utils/service/theme_service/theme_extension.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen>
    with AppbarWidget, SvgImageWidget {
  bool uzb = false;
  bool rus = false;
  bool eng = false;
  bool isCheck = true;

  _localeSaved() {
    if (context.locale.languageCode == "uz") {
      uzb = true;
    } else if (context.locale.languageCode == "ru") {
      rus = true;
    } else if (context.locale.languageCode == "en") {
      eng = true;
    } else {
      return null;
    }
  }

  _buttonLocale() async {
    setState(() {
      if (uzb) {
        context.setLocale(const Locale('uz', 'UZ'));
      } else if (rus) {
        context.setLocale(const Locale('ru', 'RU'));
      } else if (eng) {
        context.setLocale(const Locale('en', 'US'));
      } else {
        return;
      }
    });
  }

  @override
  void didChangeDependencies() {
    setState(() {
      _localeSaved();
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cardColor,
      appBar: actionsAppBar(
        title: "language.appbar".translate,
        type: AppbarType.withBack,
        backgroundColor: backgroundColor,
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(16.0),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _engTitleWidget(),
              dividerBox(color: greyHintColor),
              _rusTitleWidget(),
              dividerBox(color: greyHintColor),
              _uzbTitleWidget(),
            ],
          ),
        ),
      ),
    );
  }

  /// _engTitleWidget
  Widget _engTitleWidget() => CheckboxListTile(
        value: eng,
        checkColor: blueColors,
        activeColor: Colors.transparent,
        contentPadding: const EdgeInsets.symmetric(vertical: 8),
        side: BorderSide.none,
        fillColor: const MaterialStatePropertyAll(Colors.transparent),
        checkboxShape: const RoundedRectangleBorder(side: BorderSide.none),
        secondary: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(color: greyHintColor),
          ),
          child: svgImageWidget(
            imageName: "en",
            imageWidth: 40,
            imageHeight: 40,
            isCircle: true,
            boxFitType: BoxFit.fill,
          ),
        ),
        title: Text(
          "language.en".translate,
          style: context.titleSmall(),
        ),
        onChanged: (value) {
          setState(() {
            eng = true;
            rus = false;
            uzb = false;
            value = eng;
            _buttonLocale();
          });
        },
      );

  /// _rusTitleWidget
  Widget _rusTitleWidget() => CheckboxListTile(
        value: rus,
        checkColor: blueColors,
        activeColor: Colors.transparent,
        side: BorderSide.none,
        contentPadding: const EdgeInsets.symmetric(vertical: 8),
        fillColor: const MaterialStatePropertyAll(Colors.transparent),
        checkboxShape: const RoundedRectangleBorder(side: BorderSide.none),
        secondary: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(color: greyHintColor),
          ),
          child: svgImageWidget(
            imageName: "ru",
            imageWidth: 40,
            imageHeight: 40,
            isCircle: true,
            boxFitType: BoxFit.fill,
          ),
        ),
        title: Text(
          "language.ru".translate,
          style: context.titleSmall(),
        ),
        onChanged: (value) {
          setState(() {
            rus = true;
            eng = false;
            uzb = false;
            value = rus;
            _buttonLocale();
          });
        },
      );

  /// _uzbTitleWidget
  Widget _uzbTitleWidget() => CheckboxListTile(
        value: uzb,
        checkColor: blueColors,
        activeColor: Colors.transparent,
        side: BorderSide.none,
        contentPadding: const EdgeInsets.symmetric(vertical: 8),
        fillColor: const MaterialStatePropertyAll(Colors.transparent),
        checkboxShape: const RoundedRectangleBorder(side: BorderSide.none),
        secondary: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(color: greyHintColor),
          ),
          child: svgImageWidget(
            imageName: "uz",
            imageWidth: 40,
            imageHeight: 40,
            isCircle: true,
            boxFitType: BoxFit.fill,
          ),
        ),
        title: Text(
          "language.uz".translate,
          style: context.titleSmall(),
        ),
        onChanged: (value) {
          setState(() {
            rus = false;
            eng = false;
            uzb = true;
            value = uzb;
            _buttonLocale();
          });
        },
      );
}
