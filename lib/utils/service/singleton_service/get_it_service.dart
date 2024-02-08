import 'package:get_it/get_it.dart';
import 'package:go_pay/utils/service/singleton_service/get_it_service.config.dart';
import 'package:injectable/injectable.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async => getIt.init();
