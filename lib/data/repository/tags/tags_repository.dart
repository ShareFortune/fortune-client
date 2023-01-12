import 'package:fortune_client/data/model/tag/tag.dart';

abstract class TagsRepository {
  Future create();
  Future<List<Tag>> search(String name);
  Future<List<Tag>> recommend();
}
