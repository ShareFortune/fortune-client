import 'package:fortune_client/data/datasource/remote/go/profile/profile_data_source.dart';
import 'package:fortune_client/data/model/profiles/post_v1_users_id_profiles/post_v1_users_id_profiles.dart';
import 'package:fortune_client/data/model/profiles/patch_v1_profiles_id/patch_v1_profiles_id.dart';
import 'package:fortune_client/data/model/profiles/get_v1_profiles/get_v1_profiles.dart';

class FakeProfileDataSource implements ProfileDataSource {
  @override
  Future<PostV1UsersIdProfilesResponse> create(
      String id, Map<String, dynamic> body) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<GetV1ProfilesResponse> get() {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<PatchV1ProfilesIdResponse> update(
      String id, Map<String, dynamic> body) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
