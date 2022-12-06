import 'package:fortune_client/data/datasource/remote/go/users/users_data_source.dart';
import 'package:fortune_client/data/model/create_user_form/create_user_form.dart';
import 'package:fortune_client/data/repository/auth/auth_repository.dart';
import 'package:fortune_client/data/repository/users/users_repository.dart';

class UsersRepositoryImpl implements UsersRepository {
  final UsersDataSource _dataSource;
  final AuthRepository _authRepository;

  UsersRepositoryImpl(this._dataSource, this._authRepository);

  @override
  Future<String> create(String username, String birthday) async {
    final firebaseId = _authRepository.firebaseId;
    return await _dataSource.create(
      CreateUserForm(
        firebaseId: firebaseId,
        username: username,
        birthday: birthday,
      ).toJson(),
    );
  }
}
