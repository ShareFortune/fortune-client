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
    logger.i("[AppendTokenInterceptor] onRequest");
    final appendToken = options.extra[_appendTokenExtraKey] ?? false;
    if (appendToken) {
      final token = await _authRepository.idToken();
      print(token);
      options.headers['Authorization'] = 'Bearer $token';
      options.extra.remove(_appendTokenExtraKey);

      return super.onRequest(options, handler);
    }
  }
}
