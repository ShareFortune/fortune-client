import 'package:dio/dio.dart';
import 'package:fortune_client/util/error/fortune_exception.dart';

class ErrorInterceptor extends InterceptorsWrapper {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    switch (err.type) {
      case DioErrorType.connectTimeout:
        throw FortuneException('1006');
      case DioErrorType.sendTimeout:
        throw FortuneException('1006');
      case DioErrorType.receiveTimeout:
        throw FortuneException('1006');
      case DioErrorType.response:
        throw FortuneException('1003');
      case DioErrorType.cancel:
        throw FortuneException('9999');
      case DioErrorType.other:
        throw FortuneException('9999');
    }
  }
}
