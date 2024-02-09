import 'package:go_pay/controller/transfer_controller/transfer_network_service.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class TransferRepository{
  final TransferNetworkService transferNetworkService;

  TransferRepository(this.transferNetworkService);
}