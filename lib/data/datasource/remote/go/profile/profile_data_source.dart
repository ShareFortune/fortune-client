import 'package:dio/dio.dart';
import 'package:fortune_client/data/datasource/core/annotations_headers.dart.dart';
import 'package:fortune_client/data/model/profiles/get_v1_profiles/get_v1_profiles.dart';
import 'package:fortune_client/data/model/profiles/patch_v1_profiles_id/patch_v1_profiles_id.dart';
import 'package:fortune_client/data/model/profiles/post_v1_users_id_profiles/post_v1_users_id_profiles.dart';
import 'package:retrofit/http.dart';

part 'profile_data_source.g.dart';

@RestApi()
abstract class ProfileDataSource {
  factory ProfileDataSource(Dio dio, {String baseUrl}) = _ProfileDataSource;

  @GET('/profiles')
  @authenticatedRequest
  Future<GetV1ProfilesResponse> get();

  @POST("/users/{id}/profiles")
  @authenticatedRequest
  Future<PostV1UsersIdProfilesResponse> create(
    @Path('id') String id,
    @Body() Map<String, dynamic> body,
  );

  /// プロフィール編集
  /// [PatchV1ProfilesIdRequest]
  /// [PatchV1ProfilesIdResponse]
  @PATCH('/profiles/{id}')
  @authenticatedRequest
  Future<PatchV1ProfilesIdResponse> update(
    @Path('id') String id,
    @Body() Map<String, dynamic> body,
  );
}
