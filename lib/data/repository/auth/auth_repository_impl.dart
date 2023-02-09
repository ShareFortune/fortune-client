import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fortune_client/data/datasource/remote/firebase/firebase_auth_data_source.dart';

import 'auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._dataSource);
  final FirebaseAuthDataSource _dataSource;

  User? get _user => _dataSource.user;

  @override
  String get firebaseId => _user!.uid;

  @override
  bool get isLogin {
    Fluttertoast.showToast(
      gravity: ToastGravity.CENTER,
      msg: "ログインユーザー: ${_user?.email}",
    );
    final result = _user != null;
    return result;
  }

  @override
  Future<String> idToken() => _user!.getIdToken();

  @override
  Future<bool> logout() async {
    return false;
  }

  @override
  Future<void> signInWithGoogle() async {
    try {
      await _dataSource.sigInWithGoogle();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> signInWithApple() async {
    try {
      await _dataSource.sigInWithGoogle();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> signInWithTwitter() async {
    try {
      await _dataSource.sigInWithGoogle();
    } catch (e) {
      rethrow;
    }
  }
}
