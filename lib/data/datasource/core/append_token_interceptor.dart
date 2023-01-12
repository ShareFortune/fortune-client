import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:fortune_client/data/repository/auth/auth_repository.dart';
import 'package:fortune_client/util/logger/logger.dart';

class AppendTokenInterceptor extends Interceptor {
  AppendTokenInterceptor(this._authRepository);

  final AuthRepository _authRepository;

  /// オプションに[append-token]が存在したらtokenをヘッダーに含めるようにする
  static const _appendTokenExtraKey = 'append-token';

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final appendToken = options.extra[_appendTokenExtraKey] ?? false;
    if (appendToken) {
      logger.i("$runtimeType handler: onRequest");
      final token = await _authRepository.idToken();
      options.headers['Authorization'] = 'Bearer $token';
      options.extra.remove(_appendTokenExtraKey);

      return super.onRequest(options, handler);
    }
  }
}

class AppendLanguageInterceptor extends Interceptor {
  AppendLanguageInterceptor(this._getCurrentLocale);

  final Locale Function() _getCurrentLocale;

  static const _appendLanguageExtraKey = 'append-language';

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final appendLanguage = options.extra[_appendLanguageExtraKey] ?? false;
    if (appendLanguage) {
      logger.i("$runtimeType handler: onRequest");
      final language = _getCurrentLocale().languageCode;
      options.headers['Accept-Language'] = language;
    }
    options.extra.remove(_appendLanguageExtraKey);

    return super.onRequest(options, handler);
  }
}
