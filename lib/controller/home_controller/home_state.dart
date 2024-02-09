
import 'package:go_pay/utils/service/network_service/request_service.dart';

class HomeState {
  final NetworkStatus networkStatus;
  final String? error;

  const HomeState({
    required this.networkStatus,
    required this.error,
  });

  factory HomeState.initial() => const HomeState(
        networkStatus: NetworkStatus.initial,
        error: "",
      );

  HomeState copyWith({
    NetworkStatus? networkStatus,
    String? error,
  }) {
    return HomeState(
      networkStatus: networkStatus ?? this.networkStatus,
      error: error ?? this.error,
    );
  }
}
