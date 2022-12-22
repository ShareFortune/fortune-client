import 'package:dio/dio.dart';
import 'package:fortune_client/data/datasource/core/annotations_headers.dart.dart';
import 'package:fortune_client/data/model/profile/profile.dart';
import 'package:retrofit/http.dart';

part 'profile_data_source.g.dart';

@RestApi()
abstract class ProfileDataSource {
  factory ProfileDataSource(Dio dio, {String baseUrl}) = _ProfileDataSource;

  @GET('/profiles')
  @authenticatedRequest
  Future<Profile> get(String id);

  @POST("/users/{id}/profiles")
  @authenticatedRequest
  Future<String> create(
    @Path('id') String id,
    @Body() Map<String, dynamic> body,
  );
}
