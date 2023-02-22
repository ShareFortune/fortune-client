import 'package:dio/dio.dart';
import 'package:fortune_client/data/datasource/core/append_token_interceptor.dart';
import 'package:fortune_client/foundation/constants.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioClient {
  static get client => Dio(options)..interceptors.addAll(interceptors);

  static get options => BaseOptions(
      baseUrl: Constants.of().baseUrl,
      contentType: Headers.jsonContentType,
      responseType: ResponseType.json,
      connectTimeout: 30 * 1000, // 30 seconds
      receiveTimeout: 30 * 1000 // 30 seconds
      );

  static get interceptors => [
        AppendTokenInterceptor(),
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: true,
          error: true,
          compact: true,
          maxWidth: 90,
        ),
      ];
}