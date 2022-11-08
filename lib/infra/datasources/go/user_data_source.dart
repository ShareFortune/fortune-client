import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'user_data_source.g.dart';

@RestApi(baseUrl: 'http://api.fortune-dev.net:8080/api/v1')
abstract class UserDataSource {
  factory UserDataSource(Dio dio, {String baseUrl}) = _UserDataSource;

  @POST('/users')
  @MultiPart()
  Future<String> create(
    @Part() String firebaseId,
    @Part() String username,
    @Part() String birthda,
  );
}
