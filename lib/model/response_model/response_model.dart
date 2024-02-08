import 'package:dio/dio.dart';
import 'package:go_pay/utils/service/network_service/request_service.dart';

class SimpleResponseModel {
  bool status;
  String? responseMessage;
  NetworkStatus? networkStatus;

  SimpleResponseModel({
    required this.status,
    required this.responseMessage,
    this.networkStatus,
  });

  factory SimpleResponseModel.success({
    String? responseMessage,
  }) =>
      SimpleResponseModel(
        status: true,
        responseMessage: responseMessage,
        networkStatus: NetworkStatus.success,
      );

  factory SimpleResponseModel.error({
    String? responseMessage,
  }) =>
      SimpleResponseModel(
        status: false,
        responseMessage: responseMessage,
        networkStatus: NetworkStatus.failure,
      );
}

class DataResponseModel<T> {
  bool status;
  T? data;
  String? responseMessage;
  NetworkStatus? networkStatus;

  DataResponseModel({
    required this.status,
    this.data,
    this.responseMessage,
    this.networkStatus,
  });

  factory DataResponseModel.success({
    T? model,
    String? responseMessage,
  }) =>
      DataResponseModel(
        status: true,
        data: model,
        responseMessage: responseMessage,
        networkStatus: NetworkStatus.success,
      );

  factory DataResponseModel.error({
    String? responseMessage,
  }) =>
      DataResponseModel(
        status: false,
        data: null,
        responseMessage: responseMessage,
        networkStatus: NetworkStatus.failure,
      );
}

class NetworkResponseModel {
  bool status;
  Response? response;
  String? responseMessage;

  NetworkResponseModel({
    required this.status,
    required this.response,
    required this.responseMessage,
  });

  factory NetworkResponseModel.success({
    Response? response,
  }) =>
      NetworkResponseModel(
        status: true,
        response: response,
        responseMessage: null,
      );

  factory NetworkResponseModel.error({String? errorMessage}) =>
      NetworkResponseModel(
        status: false,
        response: null,
        responseMessage: errorMessage,
      );
}

extension DataResponseExtension on DataResponseModel {
  SimpleResponseModel parseToSimpleResponseModel() {
    return SimpleResponseModel(
      status: status,
      responseMessage: responseMessage,
      networkStatus: networkStatus,
    );
  }
}
