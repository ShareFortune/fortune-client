import 'package:fortune_client/data/datasource/remote/go/profile/profile_data_source.dart';
import 'package:fortune_client/data/model/profile/profile.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/util/common/json_roader.dart';

class FakeProfileDataSource implements ProfileDataSource {
  @override
  Future<String> create(String id, Map<String, dynamic> body) async {
    await Future.delayed(const Duration(seconds: 3));
    return "test api";
  }

  @override
  Future<Profile> get(String id) async {
    return Profile.fromJson(
      await Json.load(Assets.stub.profile),
    );
  }
}
