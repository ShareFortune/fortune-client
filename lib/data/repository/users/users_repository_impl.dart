import 'package:fortune_client/data/datasource/remote/go/users/users_data_source.dart';
import 'package:fortune_client/data/model/form/create_user_form/create_user_form.dart';
import 'package:fortune_client/data/repository/auth/auth_repository.dart';
import 'package:fortune_client/data/repository/users/users_repository.dart';
import 'package:fortune_client/util/logger/logger.dart';

class UsersRepositoryImpl implements UsersRepository {
  final UsersDataSource _dataSource;
  final AuthRepository _authRepository;

  UsersRepositoryImpl(this._dataSource, this._authRepository);

  @override
  Future<bool> create(String username, String birthday) async {
    logger.i("[UsersRepositoryImpl] create");
    try {
      final String firebaseId = _authRepository.firebaseId;
      logger.i(firebaseId);
      final result = await _dataSource.create(
        CreateUserForm(
          firebaseId: firebaseId,
          username: username,
          birthday: birthday,
        ).toJson(),
      );
      logger.i(result);

      /// ID 保存
      return result.isNotEmpty;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }
}
