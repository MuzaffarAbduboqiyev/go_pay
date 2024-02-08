import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_pay/ui/app/app.dart';
import 'package:go_pay/utils/service/language_service/json_asset_loader.dart';
import 'package:go_pay/utils/service/singleton_service/get_it_service.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  initializeDateFormatting("en_EN", "/");
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('ru', 'RU'),
        Locale('en', 'EN'),
        Locale('uz', 'UZ'),
      ],
      path: 'assets/languages',
      fallbackLocale: const Locale('en', 'EN'),
      startLocale: const Locale('en', 'EN'),
      useFallbackTranslations: true,
      saveLocale: true,
      assetLoader: JsonAssetLoader(),
      child: const MyApp(),
    ),
  );
}
