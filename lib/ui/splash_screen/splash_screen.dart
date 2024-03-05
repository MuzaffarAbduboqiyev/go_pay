import 'package:flutter/material.dart';
import 'package:go_pay/model/local_database/shared_pref/shared_pref_repository.dart';
import 'package:go_pay/ui/widgets/sized_box/size_boxes.dart';
import 'package:go_pay/utils/service/language_service/language_translate_extension.dart';
import 'package:go_pay/utils/service/route_service/navigator_extension.dart';
import 'package:go_pay/utils/service/singleton_service/get_it_service.dart';
import 'package:go_pay/utils/service/theme_service/theme_extension.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  /// Timer for splash screen
  /// After 3 seconds, the user will be redirected to the Home screen
  Future<void> _splashScreenTimer() async {
    await Future.delayed(const Duration(seconds: 3));
    if (getIt<SharedPreferencesRepository>().token.isNotEmpty) {
      await _navigateToHome();
    } else {
      await _navigateToWelcome();
    }
  }

  Future<void> _navigateToWelcome() async {
    await context.replaceWelcome();
  }

  Future<void> _navigateToHome() async {
    await context.replaceHome();
  }

  @override
  void initState() {
    super.initState();
    _splashScreenTimer();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "app".translate,
                  style: context.displayLarge(),
                ),
                verticalBox(verticalSize: 16),
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Lottie.asset(
                    'assets/animations/splash.json',
                    repeat: true,
                    reverse: false,
                    animate: true,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
