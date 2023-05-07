import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:fortune_client/util/error/error_type.dart';
import 'package:fortune_client/util/error/fortune_error.dart';

class ErrorInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(options, handler) async {
    /// オフラインチェック
    final result = await (Connectivity().checkConnectivity());
    if (result == ConnectivityResult.none) {
      throw FortuneError(type: ErrorType.offline);
    } else {
      super.onRequest(options, handler);
    }
  }

  @override
  Future<void> onError(err, handler) async {
    switch (err.type) {
      case DioErrorType.connectionTimeout:
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
        throw FortuneError(type: ErrorType.timeout);

      case DioErrorType.badCertificate:
      case DioErrorType.badResponse:
      case DioErrorType.connectionError:
        throw FortuneError(type: ErrorType.apiFailure);

      case DioErrorType.cancel:
      case DioErrorType.unknown:
        throw FortuneError();
    }
  }

  bool shouldRetryOnHttpException(DioError err) {
    if (err.error is! HttpException) return false;

    const errorText = 'Connection closed before full header was received';
    return err.message?.contains(errorText) ?? false;
  }
}
