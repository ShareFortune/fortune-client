import 'package:fortune_client/data/datasource/remote/go/users/users_data_source.dart';
import 'package:fortune_client/data/model/users/post_v1_users/post_v1_users.dart';

class FakeUsersDataSource implements UsersDataSource {
  @override
  Future<PostV1UsersResponse> create(Map<String, dynamic> body) {
    // TODO: implement create
    throw UnimplementedError();
  }
}
