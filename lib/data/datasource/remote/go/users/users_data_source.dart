import 'package:dio/dio.dart';
import 'package:fortune_client/data/model/users/users_response/users_response.dart';
import 'package:retrofit/http.dart';

part 'users_data_source.g.dart';

@RestApi()
abstract class UsersDataSource {
  factory UsersDataSource(Dio dio) = _UsersDataSource;

  @POST('/users')
  Future<UsersIdResponse> create(
    @Body() Map<String, dynamic> body,
  );
}
