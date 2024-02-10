import 'package:go_pay/utils/service/network_service/request_service.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class CountriesNetworkService {
  final NetworkService networkService;

  CountriesNetworkService(this.networkService);
}
