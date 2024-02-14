import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_pay/ui/app/app.dart';
import 'package:go_pay/utils/service/firebase_service/firebase_service.dart';
import 'package:go_pay/utils/service/language_service/json_asset_loader.dart';
import 'package:go_pay/utils/service/singleton_service/get_it_service.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  initializeDateFormatting("en_EN", "/");
  await EasyLocalization.ensureInitialized();
  await initFirebase();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('ru', 'RU'),
        Locale('uz', 'UZ'),
      ],
      path: 'assets/languages',
      fallbackLocale: const Locale('en', 'US'),
      startLocale: const Locale('en', 'US'),
      useFallbackTranslations: true,
      saveLocale: true,
      assetLoader: JsonAssetLoader(),
      child: const MyApp(),
    ),
  );
}
