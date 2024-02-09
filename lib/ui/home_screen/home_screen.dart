import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_pay/controller/home_controller/home_bloc.dart';
import 'package:go_pay/controller/home_controller/home_repository.dart';
import 'package:go_pay/controller/home_controller/home_state.dart';
import 'package:go_pay/ui/widgets/button_widget/button_widget.dart';
import 'package:go_pay/ui/widgets/card_widget/card_widget.dart';
import 'package:go_pay/ui/widgets/icon_widget/icon_widget.dart';
import 'package:go_pay/ui/widgets/image/image_widget.dart';
import 'package:go_pay/ui/widgets/image/svg_image.dart';
import 'package:go_pay/ui/widgets/sized_box/size_boxes.dart';
import 'package:go_pay/ui/widgets/text_widget/text_widget.dart';
import 'package:go_pay/utils/service/language_service/language_translate_extension.dart';
import 'package:go_pay/utils/service/singleton_service/get_it_service.dart';
import 'package:go_pay/utils/service/theme_service/colors.dart';
import 'package:go_pay/utils/service/theme_service/theme_extension.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(
        homeRepository: getIt<HomeRepository>(),
      ),
      child: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SvgImageWidget {
  _sendMoneyButton() {}

  _notificationsIconButton() {}

  _personIconButton() {}

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: greyBackgroundColor,
            appBar: AppBar(
              leading: getIt<ButtonWidget>().iconButton(
                iconData: Icons.arrow_back,
                iconColor: blackColors,
                onClick: () {
                  Navigator.pop(context);
                },
              ),
              backgroundColor: greyBackgroundColor,
              surfaceTintColor: greyBackgroundColor,
              actions: [
                _notificationsIconWidget(),
                horizontalBox(horizontalSize: 8),
                _personIconWidget(),
                horizontalBox(horizontalSize: 8),
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalBox(verticalSize: 8),
                  _imageCardWidget(),
                  verticalBox(verticalSize: 14),
                  _firstCardWidget(),
                  verticalBox(verticalSize: 14),
                  _secondCardWidget(),
                  _sendMoneyButtonWidget(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// _notificationsIconWidget
  Widget _notificationsIconWidget() =>
      getIt<ButtonWidget>().cardContainerButton(
          horizontalPadding: 10,
          verticalPadding: 10,
          borderRadius: 50,
          cardColors: whiteColor,
          child: getIt<IconWidget>().simpleIcon(
            iconData: Icons.notifications_none,
            color: hintColor,
            size: 24,
          ),
          onClick: _notificationsIconButton);

  /// _personIconWidget
  Widget _personIconWidget() => getIt<ButtonWidget>().cardContainerButton(
        horizontalPadding: 10,
        verticalPadding: 10,
        borderRadius: 50,
        cardColors: whiteColor,
        child: getIt<IconWidget>().simpleIcon(
          iconData: Icons.person,
          color: hintColor,
          size: 24,
        ),
        onClick: _personIconButton,
      );

  /// _imageCardWidget
  Widget _imageCardWidget() => getIt<CardWidget>().cardContainerItem(
        height: 124.0,
        horizontalMargin: 16,
        horizontalPadding: 0,
        verticalPadding: 0,
        verticalMargin: 0,
        width: double.infinity,
        child: getIt<ImageWidget>().localImageWidget(
          imageName: "telegram",
          imageWidth: double.infinity,
          imageHeight: double.infinity,
          boxFitType: BoxFit.fill,
        ),
      );

  /// _firstCardWidget
  Widget _firstCardWidget() => getIt<ButtonWidget>().cardContainerButton(
        width: double.infinity,
        verticalPadding: 12,
        horizontalMargin: 16,
        horizontalPadding: 16,
        cardColors: whiteColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getIt<ImageWidget>().localImageWidget(
              imageName: "money",
              imageWidth: 132.0,
              imageHeight: 132.0,
              boxFitType: BoxFit.fill,
            ),
            getIt<TextWidget>().textWidget(
              text:
                  "Fast money transfers between all accounts with us".translate,
              textStyle: context.displaySmall().copyWith(fontSize: 20),
              maxLines: 2,
            ),
            getIt<TextWidget>().textWidget(
              verticalPadding: 8,
              text: "Select the country to be transferred to".translate,
              textStyle: context.displaySmall().copyWith(color: hintColor),
            ),
            getIt<ButtonWidget>().cardContainerButton(
              verticalMargin: 8,
              horizontalPadding: 16,
              cardColors: greyHintColor,
              child: getIt<TextWidget>().rowTitleWidget(
                text: "Sellect country".translate,
                textStyle: context.displaySmall().copyWith(color: hintColor),
                widgets: getIt<IconWidget>().simpleIcon(
                  iconData: Icons.keyboard_arrow_right,
                  color: hintColor,
                  size: 24,
                ),
              ),
            ),
          ],
        ),
      );

  /// _secondCardWidget
  Widget _secondCardWidget() => getIt<ButtonWidget>().cardContainerButton(
        horizontalMargin: 16,
        width: double.infinity,
        cardColors: whiteColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalBox(verticalSize: 12),
            getIt<TextWidget>().textWidget(
              horizontalPadding: 12,
              text: "Features".translate,
              textStyle: context.displaySmall().copyWith(fontSize: 20),
            ),
            getIt<ButtonWidget>().titleButton(
              title: "Transferr money abroad with no fee".translate,
              textStyle: context.displaySmall(),
              iconData: Icons.percent,
              iconColor: hintColor,
              onClick: () {},
            ),
            getIt<ButtonWidget>().titleButton(
              title:
                  "To cards and many more - send and request money as it suits you better"
                      .translate,
              textStyle: context.displaySmall(),
              maxLines: 2,
              iconData: CupertinoIcons.creditcard,
              iconColor: hintColor,
              onClick: () {},
            ),
            getIt<ButtonWidget>().titleButton(
              title:
                  "We deliver money to your recipient's bank in a few seconds"
                      .translate,
              textStyle: context.displaySmall(),
              maxLines: 2,
              iconData: CupertinoIcons.money_dollar_circle,
              iconColor: hintColor,
              onClick: () {},
            ),
          ],
        ),
      );

  /// _sendMoneyButtonWidget
  Widget _sendMoneyButtonWidget() => Container(
        width: double.maxFinite,
        padding: const EdgeInsets.all(16.0),
        child: getIt<ButtonWidget>().activeButton(
          title: "Send Money".translate,
          textStyle: context.bodyMedium().copyWith(color: whiteColor),
          onClick: _sendMoneyButton,
        ),
      );
}
