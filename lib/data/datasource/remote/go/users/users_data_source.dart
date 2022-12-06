import 'package:dio/dio.dart';
import 'package:fortune_client/data/datasource/core/annotations_headers.dart.dart';
import 'package:retrofit/http.dart';

part 'users_data_source.g.dart';

@RestApi(baseUrl: 'http://api.fortune-dev.net:8080/api/v1')
abstract class UsersDataSource {
  factory UsersDataSource(Dio dio, {String baseUrl}) = _UsersDataSource;

  @POST('/users')
  @authenticatedRequest
  Future<String> create(
    @Body() Map<String, dynamic> body,
  );
}
