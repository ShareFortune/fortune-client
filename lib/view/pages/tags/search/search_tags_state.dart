import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/tags/tag/tag.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'search_tags_state.freezed.dart';

@freezed
class SearchTagsState with _$SearchTagsState {
  const SearchTagsState._();
  const factory SearchTagsState({
    /// 検索したかどうか
    required bool didSearch,

    /// 検索バーのフォーカス
    required FocusNode focusNode,

    /// 検索バーのテキストコントローラー
    required TextEditingController textEditingController,

    /// 検索結果を表示するかどうか
    required bool shouldShowSearchResults,

    /// 設定中のタグ
    required List<TagState> selected,

    /// おすすめのタグ
    required AsyncValue<List<TagState>> recommendation,

    /// 検索結果
    required AsyncValue<List<TagState>> searchResults,
  }) = _SearchTagsState;

  /// TagStateのリストをTagのリストに変換する
  List<Tag> get selectedTags => selected.map((e) => e.tag).toList();
}

@freezed
class TagState with _$TagState {
  const TagState._();
  const factory TagState({
    /// タグ
    required Tag tag,

    /// 選択されているかどうか
    @Default(false) bool isSelected,
  }) = _TagState;

  /// タグを選択する
  TagState toggle() => copyWith(isSelected: !isSelected);

  /// タグが同じかどうか
  bool isSameTag(TagState other) => tag.id == other.tag.id;

  /// 選択
  TagState select() => copyWith(isSelected: true);

  /// 選択解除
  TagState unselect() => copyWith(isSelected: false);
}
