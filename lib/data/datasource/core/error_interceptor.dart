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
}
