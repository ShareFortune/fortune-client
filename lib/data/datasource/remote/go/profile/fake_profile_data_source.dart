import 'package:fortune_client/data/datasource/remote/go/profile/profile_data_source.dart';
import 'package:fortune_client/data/model/profile/profile_response/profile_response.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/util/common/json_utils.dart';

class FakeProfileDataSource implements ProfileDataSource {
  @override
  Future<ProfileResponse> get() async {
    final data = await JsonUtils.load(Assets.stub.profilesResponse);
    return ProfileResponse.fromJson(data);
  }

  @override
  Future<ProfileIdResponse> create(id, body) async {
    return const ProfileIdResponse(id: 'id');
  }

  @override
  Future<ProfileIdResponse> update(id, body) async {
    return const ProfileIdResponse(id: 'id');
  }
}
