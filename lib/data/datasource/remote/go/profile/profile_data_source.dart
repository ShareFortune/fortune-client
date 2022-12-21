import 'package:dio/dio.dart';
import 'package:fortune_client/data/model/profile/profile.dart';
import 'package:retrofit/http.dart';

part 'profile_data_source.g.dart';

@RestApi(baseUrl: 'http://api.fortune-dev.net:8080/api/v1')
abstract class ProfileDataSource {
  factory ProfileDataSource(Dio dio, {String baseUrl}) = _ProfileDataSource;

  @GET('/profiles')
  Future<Profile> get(String id);

  @POST("/profiles")
  Future<String> create();
}
