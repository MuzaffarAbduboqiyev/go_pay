import 'package:go_pay/utils/service/network_service/request_service.dart';

class CountriesState {
  final NetworkStatus networkStatus;
  final String? error;

  const CountriesState({
    required this.networkStatus,
    required this.error,
  });

  factory CountriesState.initial() => const CountriesState(
        networkStatus: NetworkStatus.initial,
        error: "",
      );

  CountriesState copyWith({
    NetworkStatus? networkStatus,
    String? error,
  }) {
    return CountriesState(
      networkStatus: networkStatus ?? this.networkStatus,
      error: error ?? this.error,
    );
  }
}
