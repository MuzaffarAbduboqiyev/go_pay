import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_pay/controller/home_controller/home_bloc.dart';
import 'package:go_pay/controller/home_controller/home_repository.dart';
import 'package:go_pay/controller/home_controller/home_state.dart';
import 'package:go_pay/controller/monitoring_controller/monitoring_bloc.dart';
import 'package:go_pay/controller/monitoring_controller/monitoring_repository.dart';
import 'package:go_pay/ui/widgets/appbar/appbar_widget.dart';
import 'package:go_pay/ui/widgets/buttons/button_widget.dart';
import 'package:go_pay/ui/widgets/image/svg_image.dart';
import 'package:go_pay/ui/widgets/sized_box/size_boxes.dart';
import 'package:go_pay/utils/service/language_service/language_translate_extension.dart';
import 'package:go_pay/utils/service/route_service/navigator_extension.dart';
import 'package:go_pay/utils/service/route_service/page_names.dart';
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

class _HomePageState extends State<HomePage> with AppbarWidget, SvgImageWidget {
  _sendMoneyButton() {}

  _notificationsIconButton() {
    log('1111111111111111');
    context.goScreen(
      screenName: PageName.monitoringScreen,
      arguments: {
        "bloc": MonitoringBloc(
          getIt<MonitoringRepository>(),
        ),
      },
    );
  }

  _personIconButton() {}

  _pushCountriesScreen() {
    context.goScreen(screenName: PageName.countriesScreen);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: cardColor,
            appBar: actionsAppBar(type: AppbarType.simple, actions: [
              _notificationsIconWidget(),
              _personIconWidget(),
            ]),
            body: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
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
  Widget _notificationsIconWidget() => Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: greyHintColor,
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
            width: 38,
            height: 38,
            fit: BoxFit.fill,
          ),
        ),
      );

  /// _imageCardWidget
  Widget _imageCardWidget() => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            "assets/images/telegram.png",
            fit: BoxFit.contain,
          ),
        ),
      );

  /// _firstCardWidget
  Widget _firstCardWidget() => Card(
        color: whiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/money.png",
                width: 143,
                height: 143,
                fit: BoxFit.fill,
              ),
              Text(
                "home.transfer_title".translate,
                style: context.titleSmall(),
              ),
              verticalBox(verticalSize: 16),
              Text(
                "home.transfer_description".translate,
                style: context.labelLarge(),
              ),
              verticalBox(verticalSize: 16),
              InkWell(
                onTap: _pushCountriesScreen,
                child: Container(
                  decoration: BoxDecoration(
                    color: greyHintColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: borderColor,
                    ),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          "home.select_country".translate,
                          style: context.labelLarge(),
                        ),
                      ),
                      horizontalBox(horizontalSize: 16),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: textColor,
                        size: 24,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
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
            Text(
              "home.features".translate,
              style: context.bodyLarge(),
            ),
            verticalBox(verticalSize: 16),
            _featureItem(
              title: "home.without_fee".translate,
              image: "percent",
            ),
            verticalBox(verticalSize: 16),
            _featureItem(
              title: "home.to_card".translate,
              image: "p2p",
            ),
            verticalBox(verticalSize: 16),
            _featureItem(
              title: "home.deliver_money".translate,
              image: "currency",
            ),
            verticalBox(verticalSize: 16),
          ],
        ),
      );

  Widget _featureItem({
    required String title,
    required String image,
  }) =>
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          svgImageWidget(
            imageName: image,
            imageHeight: 24,
            imageWidth: 24,
          ),
          horizontalBox(horizontalSize: 16),
          Expanded(
            child: Text(
              title.translate,
              style: context.labelLarge(),
            ),
          ),
        ],
      );

  /// _sendMoneyButtonWidget
  Widget _sendMoneyButtonWidget() => ContinueButton(
        onClick: _sendMoneyButton,
        title: "home.send_money".translate,
      );
}
