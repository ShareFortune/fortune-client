import 'package:dio/dio.dart';
import 'package:fortune_client/util/logger/logger.dart';
import 'package:retrofit/http.dart';

part 'users_data_source.g.dart';

@RestApi()
abstract class UsersDataSource {
  factory UsersDataSource(Dio dio, {String baseUrl}) = _UsersDataSource;

  @POST('/users')
  Future<String> create(
    @Body() Map<String, dynamic> body,
  );
}
