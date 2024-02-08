import 'package:dio/dio.dart';
import 'package:go_pay/utils/service/network_service/network_urls.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ServiceModule {
  @lazySingleton
  Dio get dio => initDao();
}

@pragma('vm:entry-point')
Dio initDao() {
  final dio = Dio(
    BaseOptions(
      baseUrl: NetworkUrl.baseUrl,
      connectTimeout: const Duration(seconds: 50),
      receiveTimeout: const Duration(seconds: 50),
    ),
  );
  return dio;
}
