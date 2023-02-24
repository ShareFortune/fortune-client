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
  void onError(err, handler) {
    switch (err.type) {
      case DioErrorType.connectTimeout:
        throw FortuneError(type: ErrorType.timeout);
      case DioErrorType.sendTimeout:
        throw FortuneError(type: ErrorType.timeout);
      case DioErrorType.receiveTimeout:
        throw FortuneError(type: ErrorType.timeout);
      case DioErrorType.response:
        throw FortuneError(type: ErrorType.apiFailure);
      case DioErrorType.cancel:
        throw FortuneError();
      case DioErrorType.other:
        throw FortuneError();
    }
  }
}
