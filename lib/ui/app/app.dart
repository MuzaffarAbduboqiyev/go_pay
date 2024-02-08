import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_pay/utils/service/route_service/page_generator.dart';
import 'package:go_pay/utils/service/theme_service/app_theme.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final PageGenerator pageGenerator;

  final globalKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    pageGenerator = PageGenerator();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Go Pay',
      theme: MyTheme.theme(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      onGenerateRoute: pageGenerator.getRoutes,
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(),
      navigatorObservers: [
        pageGenerator.routeObserver,
      ],
    );
  }
}
