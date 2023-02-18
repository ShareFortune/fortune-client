import 'package:fortune_client/data/datasource/local/shared_pref_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/users/users_data_source.dart';
import 'package:fortune_client/data/model/users/post_v1_users/post_v1_users.dart';
import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/data/repository/users/users_repository.dart';
import 'package:fortune_client/util/logger/logger.dart';
import 'package:fortune_client/util/storage/app_pref_key.dart';

class UsersRepositoryImpl implements UsersRepository {
  final UsersDataSource _usersDataSource;
  final SharedPreferencesDataSource _prefs;

  UsersRepositoryImpl(this._usersDataSource, this._prefs);

  @override
  Future<bool> create(String username, String birthday) async {
    try {
      final form = PostV1UsersRequest(
        firebaseId: Repository.auth.firebaseId,
        username: username,
        birthday: birthday,
      );

      /// 作成
      final fortuneId = await _usersDataSource.create(form.toJson());

      /// ID 保存
      return await _prefs.setString(
        AppPrefKey.fortuneId.keyString,
        fortuneId.id,
      );
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }
}
