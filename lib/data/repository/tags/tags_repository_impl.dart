import 'package:fortune_client/data/datasource/remote/go/tags/tags_data_source.dart';
import 'package:fortune_client/data/model/tag/tag.dart';
import 'package:fortune_client/data/repository/tags/tags_repository.dart';
import 'package:fortune_client/util/logger/logger.dart';

class TagsRepositoryImpl implements TagsRepository {
  final TagsDataSource _source;

  TagsRepositoryImpl(this._source);

  @override
  Future<bool> create(String name, String description) async {
    // _source.
  }

  @override
  Future<List<Tag>> search(String keyword) async {
    try {
      logger.i("[$runtimeType] search");
      final result = await _source.search(name: keyword);
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
      final result = await _source.search();
      return result.data;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }
}
