import 'package:fortune_client/data/datasource/local/shared_pref_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/users/users_data_source.dart';
import 'package:fortune_client/data/model/users/post_v1_users/post_v1_users.dart';
import 'package:fortune_client/data/repository/auth/auth_repository.dart';
import 'package:fortune_client/data/repository/users/users_repository.dart';
import 'package:fortune_client/util/logger/logger.dart';
import 'package:fortune_client/util/storage/app_pref_key.dart';

class UsersRepositoryImpl implements UsersRepository {
  final UsersDataSource _usersDataSource;
  final AuthRepository _authRepository;
  final SharedPreferencesDataSource _prefs;

  UsersRepositoryImpl(this._usersDataSource, this._authRepository, this._prefs);

  @override
  Future<bool> create(String username, String birthday) async {
    logger.i("[$runtimeType] create");
    try {
      logger.i("終わった？");

      final form = PostV1UsersRequest(
        firebaseId: _authRepository.firebaseId,
        username: username,
        birthday: birthday,
      );

      logger.i("CreateUserForm 作成");

      /// 作成
      final fortuneId = await _usersDataSource.create(form.toJson());
      logger.i("終わった！");
      logger.i("Fortune ID : $fortuneId");

      /// ID 保存
      return await _prefs.setString(
        AppPrefKey.fortuneId.keyString,
        fortuneId.id,
      );
    } catch (e) {
      logger.i("エラー出たっぽい");
      logger.e(e);
      rethrow;
    }
  }
}
