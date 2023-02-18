import 'package:firebase_auth/firebase_auth.dart';
import 'package:fortune_client/data/datasource/local/shared_pref_data_source.dart';
import 'package:fortune_client/data/datasource/remote/firebase/apple_sign_in_data_source.dart';
import 'package:fortune_client/data/datasource/remote/firebase/auth_method_interface.dart';
import 'package:fortune_client/data/datasource/remote/firebase/facebook_sign_in_data_source.dart';
import 'package:fortune_client/data/datasource/remote/firebase/firebase_auth_data_source.dart';
import 'package:fortune_client/data/datasource/remote/firebase/google_sign_in_data_source.dart';
import 'package:fortune_client/data/model/enum/auth_type.dart';
import 'package:fortune_client/util/storage/app_pref_key.dart';

import 'auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final SharedPreferencesDataSource _prefs;
  final FirebaseAuthDataSource _firebaseAuthDataSource;
  final FacebookSignInDataSource _facebookSignInDataSource;
  final AppleSignInDataSource _appleSignInDataSource;
  final GoogleSignInDataSource _googleSignInDataSource;

  AuthRepositoryImpl(
    this._prefs,
    this._firebaseAuthDataSource,
    this._facebookSignInDataSource,
    this._appleSignInDataSource,
    this._googleSignInDataSource,
  );

  AuthMethodInterface get _signInMethod {
    switch (authType()) {
      case AuthType.facebook:
        return _facebookSignInDataSource;
      case AuthType.apple:
        return _appleSignInDataSource;
      case AuthType.google:
        return _googleSignInDataSource;
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
  Future<UserCredential?> login(AuthType type) async {
    /// 各種SNSの認証情報取得
    final credential = await _loginWithSns(type);
    if (credential == null) return null;

    /// 認証タイプを保存
    _prefs.setString(AppPrefKey.authType.keyString, type.name);

    /// Firebaseにログイン
    return _firebaseAuthDataSource.login(credential);
  }

  /// 各種SNSでログイン
  Future<OAuthCredential?> _loginWithSns(AuthType type) async {
    switch (type) {
      case AuthType.facebook:
        return _facebookSignInDataSource.login();
      case AuthType.apple:
        return _appleSignInDataSource.login();
      case AuthType.google:
        return _googleSignInDataSource.login();
    }
  }

  @override
  Future<void> logout() async {
    await _signInMethod.logout();
    await _firebaseAuthDataSource.logout();
  }
}
