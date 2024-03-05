import 'package:flutter/material.dart';
import 'package:go_pay/ui/widgets/sized_box/size_boxes.dart';
import 'package:go_pay/utils/service/language_service/language_translate_extension.dart';
import 'package:go_pay/utils/service/route_service/navigator_extension.dart';
import 'package:go_pay/utils/service/theme_service/theme_extension.dart';
import 'package:lottie/lottie.dart';

class WelcomeHomeScreen extends StatefulWidget {
  const WelcomeHomeScreen({super.key});

  @override
  State<WelcomeHomeScreen> createState() => _WelcomeHomeScreenState();
}

class _WelcomeHomeScreenState extends State<WelcomeHomeScreen> {
  /// Timer for splash screen
  /// After 3 seconds, the user will be redirected to the Home screen
  Future<void> _splashScreenTimer() async {
    await Future.delayed(const Duration(seconds: 3));
    await _navigateToHome();
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
                Lottie.asset(
                  'assets/animations/welcome.json',
                  repeat: true,
                  reverse: true,
                  animate: true,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
