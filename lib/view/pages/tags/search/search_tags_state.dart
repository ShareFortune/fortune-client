import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/core/base/tag/tag.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'search_tags_state.freezed.dart';

@freezed
class SearchTagsState with _$SearchTagsState {
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
    required List<Tag> selected,

    /// おすすめのタグ
    required AsyncValue<List<Tag>> recommendation,

    /// 検索結果
    required AsyncValue<List<Tag>> searchResults,
  }) = _SearchTagsState;
}
