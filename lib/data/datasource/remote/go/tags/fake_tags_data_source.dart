import 'package:fortune_client/data/datasource/remote/go/tags/tags_data_source.dart';
import 'package:fortune_client/data/model/tags/tags_response/tags_response.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/util/common/json_utils.dart';

class FakeTagsDataSource implements TagsDataSource {
  @override
  Future<TagIdResponse> create(Map<String, dynamic> body) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<TagsResponse> search({
    String? name,
    String? nextToken,
    int? perPage,
  }) async {
    return TagsResponse.fromJson(
      await JsonUtils.load(Assets.stub.tagsResponse),
    );
  }
}
