import 'package:fortune_client/data/model/tag/tag.dart';

abstract class TagsRepository {
  Future<bool> create(String name, String description);
  Future<List<Tag>> search(String keyword);
  Future<List<Tag>> recommend();
}
