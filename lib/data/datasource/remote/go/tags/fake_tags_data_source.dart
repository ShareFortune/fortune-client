import 'package:fortune_client/data/datasource/remote/go/tags/tags_data_source.dart';
import 'package:fortune_client/data/model/tags/post_v1_tags/post_v1_tags.dart';
import 'package:fortune_client/data/model/tags/get_v1_tags/get_v1_tags.dart';

class FakeTagsDataSource implements TagsDataSource {
  @override
  Future<PostV1TagsResponse> create(Map<String, dynamic> body) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<GetV1TagsResponse> search(
      {String? name, String? nextToken, int? perPage}) {
    // TODO: implement search
    throw UnimplementedError();
  }
}
