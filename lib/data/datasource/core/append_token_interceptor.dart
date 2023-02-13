import 'package:dio/dio.dart';
import 'package:fortune_client/data/repository/auth/auth_repository.dart';

class AppendTokenInterceptor extends Interceptor {
  AppendTokenInterceptor(this._authRepository);

  final AuthRepository _authRepository;

  static const _appendTokenExtraKey = 'append-token';

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    /// オプションに[append-token]が存在するか
    final bool appendToken = options.extra[_appendTokenExtraKey] ?? false;

    /// オプションに[append-token]が存在したらtokenをヘッダーに含めるようにする
    if (appendToken) {
      /// Tokenを取得する
      final token = await _authRepository.idToken();

      /// Headerに取得したTokenを設定する
      options.headers['Authorization'] = 'Bearer $token';
      options.extra.remove(_appendTokenExtraKey);
    }
    return super.onRequest(options, handler);
  }
}
