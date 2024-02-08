import 'package:go_pay/utils/service/network_service/request_service.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class AuthNetworkService {
  final NetworkService _networkService;

  AuthNetworkService(this._networkService);
}
