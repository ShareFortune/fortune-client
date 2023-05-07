import 'package:fortune_client/data/datasource/remote/go/users/users_data_source.dart';
import 'package:fortune_client/data/model/users/users_response/users_response.dart';

class FakeUsersDataSource implements UsersDataSource {
  @override
  Future<UsersIdResponse> create(Map<String, dynamic> body) {
    // TODO: implement create
    throw UnimplementedError();
  }
}
