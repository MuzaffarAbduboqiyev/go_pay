import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_pay/model/commission_model/commission_model.dart';
import 'package:go_pay/utils/service/network_service/request_service.dart';

part 'amount_state.freezed.dart';

@freezed
class AmountState with _$AmountState {
  const factory AmountState({
    required NetworkStatus networkStatus,
    required NetworkStatus commissionNetworkStatus,
    required CommissionModel? commissionModel,
    required String transferLink,
    required double amount,
    required String receiverCard,
    required String receiverName,
    required String error,
  }) = _AmountState;

  factory AmountState.initial() => const AmountState(
        networkStatus: NetworkStatus.initial,
        commissionNetworkStatus: NetworkStatus.initial,
        commissionModel: null,
        amount: 0,
        transferLink: "",
        receiverCard: "",
        receiverName: "",
        error: "",
      );
}
