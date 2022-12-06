import 'package:dio/dio.dart';
import 'package:fortune_client/data/datasource/remote/firebase/firebase_auth_data_source.dart';

class AppendTokenInterceptor extends Interceptor {
  AppendTokenInterceptor(this._authDataSource);

  final FirebaseAuthDataSource _authDataSource;

  /// オプションに[append-token]が存在したらtokenをヘッダーに含めるようにする
  static const _appendTokenExtraKey = 'append-token';

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final appendToken = options.extra[_appendTokenExtraKey] ?? false;
    if (appendToken) {
      final token = await _authDataSource.getToken();
      options.headers['Authorization'] = 'Bearer $token';
      options.extra.remove(_appendTokenExtraKey);

      return super.onRequest(options, handler);
    }
  }
}
