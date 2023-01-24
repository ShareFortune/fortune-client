import 'package:fortune_client/data/datasource/remote/go/profile/profile_data_source.dart';
import 'package:fortune_client/data/model/base/id/response_id.dart';
import 'package:fortune_client/data/model/profile/profile.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/util/common/json_roader.dart';

class FakeProfileDataSource implements ProfileDataSource {
  @override
  Future<ResponseID> create(String id, Map<String, dynamic> body) async {
    await Future.delayed(const Duration(seconds: 3));
    return const ResponseID(id: "test api");
  }

  @override
  Future<Profile> get() async {
    return Profile.fromJson(
      await Json.load(Assets.stub.profile),
    );
  }

  @override
  Future<ResponseID> update(String id, Map<String, dynamic> body) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
