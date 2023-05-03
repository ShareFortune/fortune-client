import 'package:fortune_client/data/repository/repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tag_input_view_model.g.dart';

@riverpod
class TagInputViewModel extends _$TagInputViewModel {
  @override
  void build() {}

  Future<void> create({
    required String name,
    required String description,
  }) async {
    await Repository.tags.create(name, description);
  }
}
