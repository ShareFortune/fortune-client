import 'package:fortune_client/data/model/tag/tag.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'tags_selection_state.freezed.dart';

@freezed
class TagsSelectionState with _$TagsSelectionState {
  const factory TagsSelectionState({
    @Default(AsyncValue.loading()) AsyncValue<List<TagState>> recommendation,
    @Default([]) List<TagState> isSet,
    @Default(AsyncValue.loading()) AsyncValue<List<TagState>> searchResult,
  }) = _TagsSelectionState;
}

@freezed
class TagState with _$TagState {
  const factory TagState({
    required String id,
    required String tagName,
  }) = _TagState;

  static TagState from(Tag tag) {
    return TagState(id: tag.name, tagName: tag.name);
  }
}
