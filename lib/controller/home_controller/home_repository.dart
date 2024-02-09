import 'package:go_pay/controller/home_controller/home_network_service.dart';
import 'package:go_pay/model/local_database/shared_pref/shared_pref_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class HomeRepository {
  final SharedPreferencesRepository sharedPreferencesRepository;
  final HomeNetworkService homeNetworkService;

  HomeRepository(
    this.sharedPreferencesRepository,
    this.homeNetworkService,
  );
}
