import 'package:fortune_client/data/model/tag/tag.dart';

abstract class TagsRepository {
  Future create();
  Future<List<Tag>> search(String keyword);
  Future<List<Tag>> recommend();
}
