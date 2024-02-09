import 'package:go_pay/utils/service/network_service/request_service.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class HomeNetworkService {
  final NetworkService networkService;

  HomeNetworkService({required this.networkService});
}
