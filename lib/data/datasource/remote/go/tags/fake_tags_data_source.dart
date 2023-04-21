import 'package:fortune_client/data/datasource/remote/go/tags/tags_data_source.dart';
import 'package:fortune_client/data/model/tags/post_v1_tags/post_v1_tags.dart';
import 'package:fortune_client/data/model/tags/get_v1_tags/get_v1_tags.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/util/common/json_utils.dart';

class FakeTagsDataSource implements TagsDataSource {
  @override
  Future<PostV1TagsResponse> create(Map<String, dynamic> body) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<GetV1TagsResponse> search({
    String? name,
    String? nextToken,
    int? perPage,
  }) async {
    return GetV1TagsResponse.fromJson(
      await JsonUtils.load(Assets.stub.getV1TagsResponse),
    );
  }
}
