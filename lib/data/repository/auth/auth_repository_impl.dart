import 'package:fortune_client/data/datasource/local/shared_pref_data_source.dart';
import 'package:fortune_client/data/datasource/remote/firebase/apple_sign_in_data_source.dart';
import 'package:fortune_client/data/datasource/remote/firebase/auth_method_interface.dart';
import 'package:fortune_client/data/datasource/remote/firebase/firebase_auth_data_source.dart';
import 'package:fortune_client/data/datasource/remote/firebase/google_sign_in_data_source.dart';
import 'package:fortune_client/data/model/base/app_user/app_user.dart';
import 'package:fortune_client/data/model/enum/auth_type.dart';
import 'package:fortune_client/util/storage/app_pref_key.dart';

import 'auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final SharedPreferencesDataSource _prefs;
  final FirebaseAuthDataSource _firebaseAuthDataSource;

  AuthRepositoryImpl(this._prefs, this._firebaseAuthDataSource);

  AuthMethodInterface get _signInMethod {
    switch (authType()) {
      case AuthType.twitter:
        return AppleSignInDataSource.instance;
      case AuthType.apple:
        return AppleSignInDataSource.instance;
      case AuthType.google:
        return GoogleSignInDataSource.instance;
    }
  }

  @override
  AuthType authType() {
    final type = _prefs.getString(AppPrefKey.authType.keyString);
    return AuthType.values.byName(type!);
  }

  @override
  String get firebaseId => _firebaseAuthDataSource.firebaseId;

  @override
  bool get isLogin => _firebaseAuthDataSource.user != null;

  @override
  Future<String> idToken() => _firebaseAuthDataSource.idToken();

  @override
  Future<AppUser?> getLoginResult() => _signInMethod.getLoginResult();

  @override
  Future<AppUser?> login(AuthType type) async {
    /// ログイン
    final appUser = await _loginWithSns(type);

    /// 認証タイプを保存
    if (appUser != null) {
      _prefs.setString(AppPrefKey.authType.keyString, type.name);
    }

    return appUser;
  }

  /// 各種SNSでログイン
  Future<AppUser?> _loginWithSns(AuthType type) async {
    switch (type) {
      case AuthType.twitter:
        return null;
      case AuthType.apple:
        return AppleSignInDataSource.instance.login();
      case AuthType.google:
        return GoogleSignInDataSource.instance.login();
    }
  }

  @override
  Future<void> logout() => _signInMethod.logout();
}
