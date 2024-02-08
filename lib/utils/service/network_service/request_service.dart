import 'package:dio/dio.dart';
import 'package:go_pay/model/local_database/shared_pref/shared_pref_repository.dart';
import 'package:go_pay/model/response_model/response_model.dart';
import 'package:go_pay/utils/service/language_service/language_translate_extension.dart';
import 'package:go_pay/utils/service/log_service/log_service.dart';
import 'package:injectable/injectable.dart';

enum NetworkStatus {
  initial,
  loading,
  success,
  failure,
  refresh,
}

@Injectable()
class NetworkService {
  final SharedPreferencesRepository sharedPreferencesRepository;
  final Dio dio;

  NetworkService(this.sharedPreferencesRepository, this.dio);

  Future<NetworkResponseModel> getMethod({
    required String url,
    bool hasHeader = true,
    Map<String, dynamic>? queryParameters,
  }) async {
    if (hasHeader) {
      final header = _getHeader();
      dio.options.headers = header;
    } else {
      dio.options.headers = {};
    }
    try {
      showLogWithTag(
          "Request Url: $url", "\nRequest options: ${dio.options.headers}");
      final response = await dio.get(url, queryParameters: queryParameters);

      showLogWithTag("Response Url: $url", "\nResponse body: $response");
      return NetworkResponseModel.success(response: response);
    } on DioException catch (error) {
      if (error.type == DioExceptionType.connectionTimeout) {
        return NetworkResponseModel.error(
          errorMessage: "error.connection_timeout".translate,
        );
      } else {
        return NetworkResponseModel.error(
          errorMessage: error.message,
        );
      }
    } catch (error) {
      return NetworkResponseModel.error(
        errorMessage: error.toString(),
      );
    }
  }

  Future<NetworkResponseModel> postMethod({
    required String url,
    required dynamic body,
    bool hasHeader = true,
  }) async {
    if (hasHeader) {
      final header = _getHeader();
      dio.options.headers = header;
    } else {
      dio.options.headers = {};
    }
    try {
      showLogWithTag(
          "Request Url: $url", "\nRequest options: ${dio.options.headers}");

      showLogWithTag("Request Url: $url", "\nRequest body: $body");

      final response = await dio.post(
        url,
        data: body,
      );

      showLogWithTag("Response url: $url", "Response body: $response");
      return NetworkResponseModel.success(response: response);
    } on DioException catch (error) {
      showLogWithTag(
        "Network error $url",
        error.message,
      );

      if (error.type == DioExceptionType.connectionTimeout) {
        return NetworkResponseModel.error(
          errorMessage: "error.connection_timeout".translate,
        );
      } else {
        return NetworkResponseModel.error(
          errorMessage: error.message,
        );
      }
    } catch (error) {
      return NetworkResponseModel.error(
        errorMessage: error.toString(),
      );
    }
  }

  Future<NetworkResponseModel> putMethod({
    required String url,
    required dynamic body,
    bool hasHeader = true,
  }) async {
    if (hasHeader) {
      final header = _getHeader();
      dio.options.headers = header;
    } else {
      dio.options.headers = {};
    }
    try {
      showLogWithTag(
          "Request Url: $url", "\nRequest options: ${dio.options.headers}");

      showLogWithTag("Request Url: $url", "\nRequest body: $body");

      final response = await dio.put(
        url,
        data: body,
      );

      showLogWithTag("Response url: $url", "Response body: $response");
      return NetworkResponseModel.success(response: response);
    } on DioException catch (error) {
      showLogWithTag(
        "Network error $url",
        error.message,
      );

      if (error.type == DioExceptionType.connectionTimeout) {
        return NetworkResponseModel.error(
          errorMessage: "error.connection_timeout".translate,
        );
      } else {
        return NetworkResponseModel.error(
          errorMessage: error.message,
        );
      }
    } catch (error) {
      return NetworkResponseModel.error(
        errorMessage: error.toString(),
      );
    }
  }

  Future<NetworkResponseModel> deleteMethod({
    required String url,
    required dynamic body,
    bool hasHeader = true,
  }) async {
    if (hasHeader) {
      final header = _getHeader();
      dio.options.headers = header;
    } else {
      dio.options.headers = {};
    }
    try {
      showLogWithTag(
          "Request Url: $url", "\nRequest options: ${dio.options.headers}");

      showLogWithTag("Request Url: $url", "\nRequest body: $body");

      final response = await dio.delete(
        url,
        data: body,
      );

      showLogWithTag("Response url: $url", "Response body: $response");
      return NetworkResponseModel.success(response: response);
    } on DioException catch (error) {
      showLogWithTag(
        "Network error $url",
        error.message,
      );

      if (error.type == DioExceptionType.connectionTimeout) {
        return NetworkResponseModel.error(
          errorMessage: "error.connection_timeout".translate,
        );
      } else {
        return NetworkResponseModel.error(
          errorMessage: error.message,
        );
      }
    } catch (error) {
      return NetworkResponseModel.error(
        errorMessage: error.toString(),
      );
    }
  }

  Map<String, String> _getHeader() {
    final Map<String, String> headers = {};
    headers["Accept"] = "*/*";
    headers["Content-Type"] = "application/json";

    final String token = sharedPreferencesRepository.token;
    showLogWithTag("Token status", token.isNotEmpty);
    showLogWithTag("Token", token);

    if (token.isNotEmpty) {
      headers["Authorization"] = "Bearer $token";
    }

    return headers;
  }

  Future<NetworkResponseModel> filePostMethod({
    required String url,
    required dynamic body,
    bool hasHeader = true,
  }) async {
    try {
      dio.options.headers = fileHeader(hasHeader: hasHeader);
      showLogWithTag("Request url: $url", "Request body: $body");

      final response = await dio.post(
        url,
        data: body,
      );

      showLogWithTag("Response url: $url", "Response body: $response");
      return NetworkResponseModel.success(response: response);
    } on DioException catch (error) {
      showLogWithTag(
        "Network error $url",
        error.message,
      );

      showLogWithTag(
        "Network error2 $url",
        error.response,
      );
      if (error.type == DioExceptionType.connectionTimeout) {
        return NetworkResponseModel.error(
          errorMessage: "error.connection_timeout".translate,
        );
      } else {
        return NetworkResponseModel.error(
          errorMessage: error.message,
        );
      }
    } catch (error) {
      return NetworkResponseModel.error(
        errorMessage: error.toString(),
      );
    }
  }

  Map<String, String> fileHeader({required bool hasHeader}) {
    final Map<String, String> headers = {};
    headers["Accept"] = "application/json";
    headers["Content-Type"] = "multipart/form-data";

    final String token = sharedPreferencesRepository.token;

    showLogWithTag("TOKEN", token);

    if (token.isNotEmpty) {
      headers["Authorization"] = "Bearer $token";
    }

    return headers;
  }
}
