import 'package:flutter/material.dart';
import 'package:go_pay/ui/widgets/appbar/appbar_widget.dart';
import 'package:go_pay/ui/widgets/image/svg_image.dart';
import 'package:go_pay/ui/widgets/sized_box/size_boxes.dart';
import 'package:go_pay/ui/widgets/text_field_widget/text_field_widget.dart';
import 'package:go_pay/utils/service/language_service/language_translate_extension.dart';
import 'package:go_pay/utils/service/route_service/navigator_extension.dart';
import 'package:go_pay/utils/service/route_service/page_names.dart';
import 'package:go_pay/utils/service/theme_service/colors.dart';
import 'package:go_pay/utils/service/theme_service/theme_extension.dart';

class CountriesScreen extends StatelessWidget {
  const CountriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // return BlocProvider(
    //   create: (context) => CountriesBloc(
    //     countriesRepository: getIt<CountriesRepository>(),
    //   ),
    //   child: const CountriesPage(),
    // );
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
    context.goScreen(screenName: PageName.transferScreen);
  }

  _pushRusTransferScreen() {}

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
              verticalBox(verticalSize: 8),
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
              Divider(color: hintColor),
              ListTile(
                onTap: _pushRusTransferScreen,
                leading: SizedBox(
                  height: 48,
                  width: 48,
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
}
