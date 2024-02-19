import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_pay/controller/auth_controller/login_controller/login_bloc.dart';
import 'package:go_pay/controller/auth_controller/login_controller/login_repository.dart';
import 'package:go_pay/controller/auth_controller/otp_controller/otp_bloc.dart';
import 'package:go_pay/controller/countries_controller/countries_bloc.dart';
import 'package:go_pay/controller/home_controller/home_bloc.dart';
import 'package:go_pay/controller/transfer_controller/amount_controller/amount_bloc.dart';
import 'package:go_pay/controller/transfer_controller/receiver_controller/receiver_bloc.dart';
import 'package:go_pay/controller/transfer_controller/transfer_bloc.dart';
import 'package:go_pay/ui/auth/login_screen/login_screen.dart';
import 'package:go_pay/ui/auth/otp_screen/otp_screen.dart';
import 'package:go_pay/ui/auth/pin_code_screen/pin_code_screen.dart';
import 'package:go_pay/ui/countries_screen/countries_screen.dart';
import 'package:go_pay/ui/home_screen/home_screen.dart';
import 'package:go_pay/ui/language_screen/language_screen.dart';
import 'package:go_pay/ui/splash_screen/splash_screen.dart';
import 'package:go_pay/ui/transfer_screen/resend_again_screen/resend_again_screen.dart';
import 'package:go_pay/ui/transfer_screen/transfer_amount_screen/transfer_amount_screen.dart';
import 'package:go_pay/ui/transfer_screen/transfer_rus_screen/transfer_rus_screen.dart';
import 'package:go_pay/ui/transfer_screen/transfer_uzb_screen/transfer_uzb_screen.dart';
import 'package:go_pay/ui/welcome_screen/welcome_home_screen.dart';
import 'package:go_pay/ui/welcome_screen/welcome_screen.dart';
import 'package:go_pay/utils/service/language_service/language_translate_extension.dart';
import 'package:go_pay/utils/service/route_service/page_names.dart';
import 'package:go_pay/utils/service/singleton_service/get_it_service.dart';
import 'package:page_transition/page_transition.dart';

class PageGenerator {
  final RouteObserver<PageRoute> routeObserver;

  PageGenerator() : routeObserver = RouteObserver<PageRoute>();

  Route<dynamic> getRoutes(
    RouteSettings settings,
  ) {
    switch (settings.name) {
      case PageName.splashScreen:
        settings = RouteSettings(
          name: PageName.splashScreen,
          arguments: {
            "bloc": LoginBloc(
              getIt<LoginRepository>(),
            ),
          },
        );
        return _buildRoute<LoginBloc>(
          settings: settings,
          screen: const SplashScreen(),
        );

      case PageName.welcomeScreen:
        return _fadeBuildRoute<LoginBloc>(
          settings: settings,
          screen: const WelcomeScreen(),
        );

      case PageName.welcomeHomeScreen:
        settings = RouteSettings(
          name: PageName.welcomeHomeScreen,
          arguments: {
            "bloc": LoginBloc(
              getIt<LoginRepository>(),
            ),
          },
        );
        return _fadeBuildRoute<LoginBloc>(
          settings: settings,
          screen: const WelcomeHomeScreen(),
        );

      case PageName.loginScreen:
        return _fadeBuildRoute<LoginBloc>(
          settings: settings,
          screen: const LoginScreen(),
        );

      case PageName.otpScreen:
        return _fadeBuildRoute<OtpBloc>(
          settings: settings,
          screen: OtpScreen(
            phone: (settings.arguments as Map)["phone"],
            sessionId: (settings.arguments as Map)["session"],
          ),
        );

      case PageName.homeScreen:
        return _buildRoute<HomeBloc>(
          settings: settings,
          screen: const HomeScreen(),
        );

      case PageName.countriesScreen:
        return _buildRoute<CountriesBloc>(
          settings: settings,
          screen: const CountriesScreen(),
        );

      case PageName.transferUzbScreen:
        return _buildRoute<ReceiverBloc>(
          settings: settings,
          screen: const TransferUzbScreen(),
        );

      case PageName.transferRusScreen:
        return _buildRoute<TransferBloc>(
          settings: settings,
          screen: const TransferRusScreen(),
        );

      case PageName.transferAmountScreen:
        return _buildRoute<AmountBloc>(
          settings: settings,
          screen: TransferAmountScreen(
            receiverCard: (settings.arguments as Map)["receiverCard"],
            receiverName: (settings.arguments as Map)["receiverName"],
          ),
        );

      case PageName.resendAgainScreen:
        return _buildRoute<TransferBloc>(
          settings: settings,
          screen: const ResendAgainScreen(),
        );

      case PageName.pinCodeScreen:
        return _buildRoute(
          settings: settings,
          screen: const PinCodeScreen(),
        );

      case PageName.languageScreen:
        return _buildRoute(
          settings: settings,
          screen: const LanguageScreen(),
        );

      default:
        return _buildRoute(
          settings: settings,
          screen: errorRoute(),
        );
    }
  }

  PageTransition _buildRoute<T extends Bloc>({
    required RouteSettings settings,
    required Widget screen,
    PageTransitionType? transitionType,
  }) {
    return PageTransition(
      type: transitionType ?? PageTransitionType.rightToLeft,
      settings: settings,
      child: BlocProvider<T>(
        create: (context) => (settings.arguments as Map)["bloc"],
        child: screen,
      ),
      isIos: true,
    );
  }

  PageTransition _fadeBuildRoute<T extends Bloc>({
    required RouteSettings settings,
    required Widget screen,
  }) {
    return PageTransition(
      type: PageTransitionType.bottomToTopJoined,
      settings: settings,
      childCurrent: BlocProvider<T>(
        create: (context) => (settings.arguments as Map)["bloc"],
        child: screen,
      ),
      duration: const Duration(milliseconds: 500),
      child: BlocProvider<T>(
        create: (context) => (settings.arguments as Map)["bloc"],
        child: screen,
      ),
    );
  }

  Widget errorRoute() {
    return Scaffold(
      appBar: AppBar(
        title: Text("error.page_not_found".translate),
      ),
      body: Expanded(
        child: Center(
          child: SvgPicture.asset("assets/images/page_not_found.svg"),
        ),
      ),
    );
  }
}
