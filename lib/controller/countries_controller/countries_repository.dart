import 'package:go_pay/controller/countries_controller/countries_network_service.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class CountriesRepository {
  final CountriesNetworkService countriesNetworkService;

  CountriesRepository(this.countriesNetworkService);
}
