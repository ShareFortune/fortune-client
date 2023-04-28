import 'package:dio/dio.dart';
import 'package:fortune_client/data/datasource/core/annotations_headers.dart.dart';
import 'package:fortune_client/data/model/profile/profile_request/profile_request.dart';
import 'package:fortune_client/data/model/profile/profile_response/profile_response.dart';
import 'package:retrofit/http.dart';

part 'profile_data_source.g.dart';

@RestApi()
abstract class ProfileDataSource {
  factory ProfileDataSource(Dio dio) = _ProfileDataSource;

  @GET('/profiles')
  @authenticatedRequest
  Future<ProfileResponse> get();

  @POST("/users/{id}/profiles")
  @authenticatedRequest
  Future<ProfileIdResponse> create(
    @Path('id') String id,
    @Body() Map<String, dynamic> body,
  );

  /// プロフィール編集
  /// [PatchV1ProfilesIdRequest]
  /// [PatchV1ProfilesIdResponse]
  @PATCH('/profiles/{id}')
  @authenticatedRequest
  Future<ProfileIdResponse> update(
    @Path('id') String id,
    @Body() Map<String, dynamic> body,
  );
}
