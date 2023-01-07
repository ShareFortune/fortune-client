import 'package:fortune_client/data/datasource/remote/go/tags/tags_data_source.dart';
import 'package:fortune_client/data/model/tag/tag.dart';
import 'package:fortune_client/data/repository/tags/tags_repository.dart';
import 'package:fortune_client/util/logger/logger.dart';

class TagsRepositoryImpl implements TagsRepository {
  final TagsDataSource _source;

  TagsRepositoryImpl(this._source);

  @override
  Future create() {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<List<Tag>> search() async {
    try {
      logger.i("[TagsRepositoryImpl] fetch");
      final result = await _source.search(null, null, 20);
      return result.tags;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }
}
