import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:go_pay/controller/auth_controller/login_controller/login_event.dart';
import 'package:go_pay/controller/auth_controller/login_controller/login_repository.dart';
import 'package:go_pay/controller/auth_controller/login_controller/login_state.dart';
import 'package:go_pay/utils/mask_formatters/mask_formatters.dart';
import 'package:go_pay/utils/service/network_service/request_service.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository loginRepository;

  LoginBloc(this.loginRepository)
      : super(LoginState(
          networkStatus: NetworkStatus.initial,
          country: "uz",
          phoneMaskFormatter: uzPhoneMaskFormatter,
          error: "",
        )) {
    on<LoginSubmitEvent>(
      _onLoginSubmitEvent,
    );

    on<LoginCountryEvent>(
      _onCountryChanged,
    );
  }

  FutureOr<void> _onLoginSubmitEvent(
      LoginSubmitEvent event, Emitter<LoginState> emit) async {
    if (state.networkStatus != NetworkStatus.loading &&
        state.networkStatus != NetworkStatus.success) {
      emit(
        state.copyWith(networkStatus: NetworkStatus.loading),
      );

      final response = await loginRepository.login(
        phone:
            "${state.country == "uz" ? "998" : "7"}${state.phoneMaskFormatter.unmaskText(event.phone)}",
      );

      emit(
        state.copyWith(
          networkStatus:
              response.status ? NetworkStatus.success : NetworkStatus.failure,
          error: response.responseMessage ?? "",
        ),
      );
    }
  }

  FutureOr<void> _onCountryChanged(
      LoginCountryEvent event, Emitter<LoginState> emit) {
    emit(
      state.copyWith(
        country: event.country,
        phoneMaskFormatter:
            event.country == "uz" ? uzPhoneMaskFormatter : ruPhoneMaskFormatter,
      ),
    );
  }
}