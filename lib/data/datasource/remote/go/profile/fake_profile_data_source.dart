import 'package:fortune_client/data/datasource/core/stub_loader.dart';
import 'package:fortune_client/data/datasource/remote/go/profile/profile_data_source.dart';
import 'package:fortune_client/data/model/profile/profile.dart';
import 'package:fortune_client/gen/assets.gen.dart';

class FakeProfileDataSource extends StubLoader implements ProfileDataSource {
  @override
  Future<Profile> get(String id) async {
    return Profile.fromJson(
      await loadJson(Assets.stub.profile),
    );
  }

  @override
  Future<String> create() async {
    return "";
  }
}
