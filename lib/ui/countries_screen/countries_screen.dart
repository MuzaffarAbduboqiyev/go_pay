import 'package:flutter/material.dart';
import 'package:go_pay/controller/transfer_controller/receiver_controller/receiver_bloc.dart';
import 'package:go_pay/controller/transfer_controller/transfer_repository.dart';
import 'package:go_pay/ui/widgets/appbar/appbar_widget.dart';
import 'package:go_pay/ui/widgets/image/svg_image.dart';
import 'package:go_pay/ui/widgets/sized_box/size_boxes.dart';
import 'package:go_pay/ui/widgets/text_field_widget/text_field_widget.dart';
import 'package:go_pay/utils/service/language_service/language_translate_extension.dart';
import 'package:go_pay/utils/service/route_service/navigator_extension.dart';
import 'package:go_pay/utils/service/route_service/page_names.dart';
import 'package:go_pay/utils/service/singleton_service/get_it_service.dart';
import 'package:go_pay/utils/service/theme_service/colors.dart';
import 'package:go_pay/utils/service/theme_service/theme_extension.dart';

class CountriesScreen extends StatelessWidget {
  const CountriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CountriesPage();
  }
}

class CountriesPage extends StatefulWidget {
  const CountriesPage({super.key});

  @override
  State<CountriesPage> createState() => _CountriesPageState();
}

class _CountriesPageState extends State<CountriesPage>
    with AppbarWidget, SvgImageWidget {
  final TextEditingController _textController = TextEditingController();

  _notificationsIconButton() {}

  _personIconButton() {}

  _searchIconButton() {}

  _pushUzbTransferScreen() {
    context.goScreen(
      screenName: PageName.transferUzbScreen,
      arguments: {
        "bloc": ReceiverBloc(
          getIt<TransferRepository>()
        ),
      },
    );
  }

  _pushRusTransferScreen() {
    context.goScreen(screenName: PageName.transferRusScreen);
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _textFieldWidget(),
            verticalBox(verticalSize: 16),
            _titleWidget(),
            verticalBox(verticalSize: 16),
            _cardCountriesWidget(),
            verticalBox(verticalSize: 16),
          ],
        ),
      ),
    );
  }

  /// _textFieldWidget
  Widget _textFieldWidget() => TextFieldWidget(
        textController: _textController,
        hintText: "countries.sellect_country".translate,
        suffixIcon: InkWell(
          onTap: _searchIconButton,
          child: Icon(
            Icons.search,
            color: hintColor,
          ),
        ),
      );

  /// _titleWidget
  Widget _titleWidget() => Text(
        "countries.countries".translate,
        style: context.titleSmall().copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
      );

  /// _cardCountriesWidget
  Widget _cardCountriesWidget() => Expanded(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalBox(verticalSize: 12),
              ListTile(
                onTap: _pushUzbTransferScreen,
                leading: SizedBox(
                  height: 48,
                  width: 48,
                  child: svgImageWidget(
                    imageName: "uz",
                    imageHeight: 42,
                    imageWidth: 42,
                    isCircle: true,
                    boxFitType: BoxFit.cover,
                  ),
                ),
                title: Text(
                  "Uzbekistan".translate,
                  style: context.titleSmall(),
                ),
                trailing: Text(
                  "UZB",
                  style: context.labelLarge(),
                ),
              ),
              Divider(color: greyHintColor),
              ListTile(
                onTap: _pushRusTransferScreen,
                leading: Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                      border: Border.all(color: greyHintColor),
                      borderRadius: BorderRadius.circular(50)),
                  child: svgImageWidget(
                    imageName: "ru",
                    imageHeight: 42,
                    imageWidth: 42,
                    isCircle: true,
                    boxFitType: BoxFit.cover,
                  ),
                ),
                title: Text(
                  "Russia".translate,
                  style: context.titleSmall(),
                ),
                trailing: Text(
                  "RUB",
                  style: context.labelLarge(),
                ),
              ),
            ],
          ),
        ),
      );

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
            width: 40,
            height: 40,
            fit: BoxFit.fill,
          ),
        ),
      );
}
