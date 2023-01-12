import 'package:fortune_client/data/datasource/local/shared_pref_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/users/users_data_source.dart';
import 'package:fortune_client/data/model/form/create_user_form/create_user_form.dart';
import 'package:fortune_client/data/repository/auth/auth_repository.dart';
import 'package:fortune_client/data/repository/users/users_repository.dart';
import 'package:fortune_client/util/logger/logger.dart';
import 'package:fortune_client/util/storage/app_pref_key.dart';

class UsersRepositoryImpl implements UsersRepository {
  final UsersDataSource _dataSource;
  final AuthRepository _authRepository;
  final SharedPreferencesDataSource _prefs;

  UsersRepositoryImpl(this._dataSource, this._authRepository, this._prefs);

  @override
  Future<bool> create(String username, String birthday) async {
    logger.i("[$runtimeType] create");
    try {
      final userForm = CreateUserForm(
        firebaseId: _authRepository.firebaseId,
        username: username,
        birthday: birthday,
      );

      /// 作成
      final fortuneId = await _dataSource.create(userForm.toJson());
      logger.i("Fortune ID : $fortuneId");

      /// ID 保存
      return await _prefs.setString(
          AppPrefKey.fortuneId.keyString, fortuneId.id);
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }
}
