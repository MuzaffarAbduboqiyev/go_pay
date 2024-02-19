import 'package:go_pay/controller/transfer_controller/transfer_network_service.dart';
import 'package:go_pay/model/commission_model/commission_model.dart';
import 'package:go_pay/model/response_model/response_model.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class TransferRepository {
  final TransferNetworkService transferNetworkService;

  TransferRepository(this.transferNetworkService);

  Future<DataResponseModel<String>> getReceiver({
    required String receiverCard,
  }) async {
    return await transferNetworkService.getReceiver(receiverCard: receiverCard);
  }

  Future<DataResponseModel<CommissionModel>> getCommission() =>
      transferNetworkService.getCommission();

  /// Create transfer link
  Future<DataResponseModel<String>> createTransferLink({
    required String receiverCard,
    required double amount,
    required int currency,
  }) =>
      transferNetworkService.createTransferLink(
        receiverCard: receiverCard,
        amount: amount,
        currency: currency,
      );
}