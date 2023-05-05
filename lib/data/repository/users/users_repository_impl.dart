import 'package:fortune_client/data/datasource/local/shared_pref_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/users/users_data_source.dart';
import 'package:fortune_client/data/model/users/users_request/users_request.dart';
import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/data/repository/users/users_repository.dart';
import 'package:fortune_client/util/logger/logger.dart';
import 'package:fortune_client/util/storage/app_pref_key.dart';

class UsersRepositoryImpl implements UsersRepository {
  final UsersDataSource _users;
  final SharedPreferencesDataSource _prefs;

  UsersRepositoryImpl(this._users, this._prefs);

  @override
  bool isCreated() => _prefs.contains(AppPrefKey.fortuneId.keyString);

  @override
  Future<bool> create(String username, String birthday) async {
    try {
      /// 作成
      final fortuneId = await _users.create(
        UsersCreateRequest(
          firebaseId: Repository.auth.firebaseId,
          username: username,
          birthday: birthday,
        ).toJson(),
      );

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
