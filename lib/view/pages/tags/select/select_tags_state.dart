import 'package:fortune_client/data/model/core/base/tag/tag.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'select_tags_state.freezed.dart';

@freezed
class SelectTagsState with _$SelectTagsState {
  const factory SelectTagsState({
    @Default(AsyncValue.loading()) AsyncValue<List<TagState>> recommendation,
    @Default([]) List<TagState> beingSet,
    @Default(AsyncValue.loading()) AsyncValue<List<TagState>> searchResult,
  }) = _SelectTagsState;
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
