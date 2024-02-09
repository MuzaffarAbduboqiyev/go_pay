import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:go_pay/controller/auth_controller/otp_controller/otp_event.dart';
import 'package:go_pay/controller/auth_controller/otp_controller/otp_repository.dart';
import 'package:go_pay/controller/auth_controller/otp_controller/otp_state.dart';
import 'package:go_pay/utils/service/network_service/request_service.dart';

class OtpBloc extends Bloc<OtpEvent, OtpState> {
  final OtpRepository otpRepository;

  OtpBloc(this.otpRepository) : super(OtpState.initial()) {
    on<OtpSubmitEvent>(
      _onOtpVerifyEvent,
    );

    on<OtpResendEvent>(
      _onOtpResendEvent,
    );
  }

  FutureOr<void> _onOtpVerifyEvent(
      OtpSubmitEvent event, Emitter<OtpState> emit) async {
    if (state.networkStatus != NetworkStatus.loading &&
        state.networkStatus != NetworkStatus.success) {
      emit(
        state.copyWith(networkStatus: NetworkStatus.loading),
      );

      final response = await otpRepository.verifyOtp(
        otp: event.otp,
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

  FutureOr<void> _onOtpResendEvent(
      OtpResendEvent event, Emitter<OtpState> emit) async {
    if (state.networkStatus != NetworkStatus.loading &&
        state.networkStatus != NetworkStatus.success) {
      emit(
        state.copyWith(networkStatus: NetworkStatus.loading),
      );

      final response = await otpRepository.resendOtp();

      emit(
        state.copyWith(
          networkStatus:
              response.status ? NetworkStatus.success : NetworkStatus.failure,
          error: response.responseMessage ?? "",
        ),
      );
    }
  }
}
