import 'package:fortune_client/data/datasource/remote/go/tags/tags_data_source.dart';
import 'package:fortune_client/data/model/core/base/tag/tag.dart';
import 'package:fortune_client/data/model/tags/post_v1_tags/post_v1_tags.dart';
import 'package:fortune_client/data/repository/tags/tags_repository.dart';
import 'package:fortune_client/util/logger/logger.dart';

class TagsRepositoryImpl implements TagsRepository {
  final TagsDataSource _tagsDataSource;

  TagsRepositoryImpl(this._tagsDataSource);

  @override
  Future<String> create(String name, String description) async {
    try {
      logger.i("[$runtimeType] create");
      final request = PostV1TagsRequest(name: name, explanation: description);
      final result = await _tagsDataSource.create(request.toJson());
      return result.id;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  @override
  Future<List<Tag>> search(String keyword) async {
    try {
      logger.i("[$runtimeType] search");
      final result = await _tagsDataSource.search(name: keyword);
      return result.data;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  @override
  Future<List<Tag>> recommend() async {
    try {
      logger.i("[$runtimeType] search");
      final result = await _tagsDataSource.search();
      return result.data;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }
}
