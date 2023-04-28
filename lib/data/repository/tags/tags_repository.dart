import 'package:fortune_client/data/model/tags/tag/tag.dart';

abstract class TagsRepository {
  Future<String> create(String name, String description);
  Future<List<Tag>> search(String keyword);
  Future<List<Tag>> recommend();
}
