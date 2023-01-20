import 'package:fortune_client/data/model/tag/tag.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'tags_selection_state.freezed.dart';

@freezed
class TagsSelectionState with _$TagsSelectionState {
  const factory TagsSelectionState({
    @Default(AsyncValue.loading()) AsyncValue<List<TagState>> recommendation,
    @Default([]) List<TagState> beingSet,
    @Default(AsyncValue.loading()) AsyncValue<List<TagState>> searchResult,
  }) = _TagsSelectionState;
}

@freezed
class TagState with _$TagState {
  const factory TagState({
    required Tag data,
    required bool isSelected,
  }) = _TagState;

  static TagState from(Tag tag) {
    return TagState(
      data: tag,
      isSelected: false,
    );
  }
}
