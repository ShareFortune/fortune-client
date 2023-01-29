import 'package:dio/dio.dart';
import 'package:fortune_client/data/model/users/post_v1_users/post_v1_users.dart';
import 'package:retrofit/http.dart';

part 'users_data_source.g.dart';

@RestApi()
abstract class UsersDataSource {
  factory UsersDataSource(Dio dio, {String baseUrl}) = _UsersDataSource;

  @POST('/users')
  Future<PostV1UsersResponse> create(
    @Body() Map<String, dynamic> body,
  );
}
