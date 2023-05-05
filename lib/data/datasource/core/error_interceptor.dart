import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:fortune_client/injector.dart';
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
        shouldRetryOnHttpException(err);
        handler.resolve(
          await DioHttpRequestRetrier(dio: getIt<Dio>())
              .requestRetry(err.requestOptions)
              .catchError((e) => handler.next(err)),
        );
        throw FortuneError();
    }
  }

  bool shouldRetryOnHttpException(DioError err) {
    if (err.error is! HttpException) return false;

    const errorText = 'Connection closed before full header was received';
    return err.message?.contains(errorText) ?? false;
  }
}

class DioHttpRequestRetrier {
  final Dio dio;

  DioHttpRequestRetrier({
    required this.dio,
  });

  Future<Response> requestRetry(RequestOptions requestOptions) async {
    return dio.request(
      requestOptions.path,
      cancelToken: requestOptions.cancelToken,
      data: requestOptions.data,
      onReceiveProgress: requestOptions.onReceiveProgress,
      onSendProgress: requestOptions.onSendProgress,
      queryParameters: requestOptions.queryParameters,
      options: Options(
        contentType: requestOptions.contentType,
        headers: requestOptions.headers,
        sendTimeout: requestOptions.sendTimeout,
        receiveTimeout: requestOptions.receiveTimeout,
        extra: requestOptions.extra,
        followRedirects: requestOptions.followRedirects,
        listFormat: requestOptions.listFormat,
        maxRedirects: requestOptions.maxRedirects,
        method: requestOptions.method,
        receiveDataWhenStatusError: requestOptions.receiveDataWhenStatusError,
        requestEncoder: requestOptions.requestEncoder,
        responseDecoder: requestOptions.responseDecoder,
        responseType: requestOptions.responseType,
        validateStatus: requestOptions.validateStatus,
      ),
    );
  }
}
