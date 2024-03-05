import 'package:flutter/material.dart';
import 'package:go_pay/controller/auth_controller/login_controller/login_bloc.dart';
import 'package:go_pay/controller/auth_controller/login_controller/login_repository.dart';
import 'package:go_pay/controller/home_controller/home_bloc.dart';
import 'package:go_pay/controller/home_controller/home_repository.dart';
import 'package:go_pay/utils/service/route_service/page_names.dart';
import 'package:go_pay/utils/service/singleton_service/get_it_service.dart';

extension NavigatorExtension on BuildContext {
  /// TODO: This function is used to replace the screen with the new screen
  /// This function is used to replace the screen with the new screen
  Future<Object?> replaceScreen({
    required String screenName,
    Object? arguments,
  }) async {
    final response = await Navigator.pushReplacementNamed(
      this,
      screenName,
      arguments: arguments,
    );
    return response;
  }

  /// TODO: This function is used to replace the screen with the [DashboardScreen]
  /// This function is used to replace the screen with the [DashboardScreen]
  // Future<Object?> replaceDashboard() async {
  //   final response = await Navigator.pushNamedAndRemoveUntil(
  //     this,
  //     PageName.dashboardScreen,
  //     arguments: this,
  //     (Route<dynamic> route) => false,
  //   );
  //   return response;
  // }

  /// TODO: This function is used to replace the screen with the [DashboardScreen]
  /// This function is used to replace the screen with the [DashboardScreen]
  Future<Object?> replaceHome() async {
    final response = await Navigator.pushNamedAndRemoveUntil(
      this,
      PageName.homeScreen,
      arguments: {
        "bloc": HomeBloc(
          homeRepository: getIt<HomeRepository>(),
        ),
      },
      (Route<dynamic> route) => false,
    );
    return response;
  }


  /// TODO: This function is used to replace the screen with the [DashboardScreen]
  /// This function is used to replace the screen with the [DashboardScreen]
  Future<Object?> replaceWelcome() async {
    final response = await Navigator.pushNamedAndRemoveUntil(
      this,
      PageName.welcomeScreen,
      arguments: {
        "bloc": LoginBloc(
        getIt<LoginRepository>(),
    ),
      },
      (Route<dynamic> route) => false,
    );
    return response;
  }




  /// TODO: This function is used to replace the screen with the [LoginScreen]
  /// This function is used to replace the screen with the [LoginScreen]
  // Future<Object?> replaceLogin() async {
  //   final response = await Navigator.pushNamedAndRemoveUntil(
  //     this,
  //     PageName.loginScreen,
  //     arguments: {
  //       "bloc": LoginBloc(
  //         getIt<LoginRepository>(),
  //       ),
  //     },
  //     (Route<dynamic> route) => false,
  //   );
  //   return response;
  // }

  /// TODO: This function is used to navigate to the new screen
  /// This function is used to navigate to the new screen
  Future<Object?> goScreen({
    required String screenName,
    Object? arguments,
  }) async {
    final response = await Navigator.pushNamed(
      this,
      screenName,
      arguments: arguments,
    );
    return response;
  }

  /// TODO: This function is used to navigate to the new screen and back to other screen
  /// This function is used to navigate to the new screen and back to other screen
  Future<Object?> goAndBackOtherScreen({
    required String goScreenName,
    required String backScreenName,
    Object? arguments,
  }) async {
    final response = await Navigator.pushNamedAndRemoveUntil(
      this,
      goScreenName,
      ModalRoute.withName(backScreenName),
      arguments: arguments,
    );
    return response;
  }

  /// TODO: Navigate to the back screen with the result;
  /// This function is used to navigate to the back screen with the result
  popWithResult<T>({
    required T result,
  }) {
    Navigator.pop<T>(
      this,
      result,
    );
  }

  /// TODO: Navigate to the back screen;
  /// This function is used to navigate to the back screen
  pop() {
    Navigator.pop(
      this,
    );
  }
}
