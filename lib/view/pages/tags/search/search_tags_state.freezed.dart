// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_tags_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchTagsState {
  /// 検索したかどうか
  bool get didSearch => throw _privateConstructorUsedError;

  /// 検索バーのフォーカス
  FocusNode get focusNode => throw _privateConstructorUsedError;

  /// 検索バーのテキストコントローラー
  TextEditingController get textEditingController =>
      throw _privateConstructorUsedError;

  /// 検索結果を表示するかどうか
  bool get shouldShowSearchResults => throw _privateConstructorUsedError;

  /// 設定中のタグ
  List<Tag> get selected => throw _privateConstructorUsedError;

  /// おすすめのタグ
  AsyncValue<List<Tag>> get recommendation =>
      throw _privateConstructorUsedError;

  /// 検索結果
  AsyncValue<List<Tag>> get searchResults => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchTagsStateCopyWith<SearchTagsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchTagsStateCopyWith<$Res> {
  factory $SearchTagsStateCopyWith(
          SearchTagsState value, $Res Function(SearchTagsState) then) =
      _$SearchTagsStateCopyWithImpl<$Res, SearchTagsState>;
  @useResult
  $Res call(
      {bool didSearch,
      FocusNode focusNode,
      TextEditingController textEditingController,
      bool shouldShowSearchResults,
      List<Tag> selected,
      AsyncValue<List<Tag>> recommendation,
      AsyncValue<List<Tag>> searchResults});
}

/// @nodoc
class _$SearchTagsStateCopyWithImpl<$Res, $Val extends SearchTagsState>
    implements $SearchTagsStateCopyWith<$Res> {
  _$SearchTagsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? didSearch = null,
    Object? focusNode = null,
    Object? textEditingController = null,
    Object? shouldShowSearchResults = null,
    Object? selected = null,
    Object? recommendation = null,
    Object? searchResults = null,
  }) {
    return _then(_value.copyWith(
      didSearch: null == didSearch
          ? _value.didSearch
          : didSearch // ignore: cast_nullable_to_non_nullable
              as bool,
      focusNode: null == focusNode
          ? _value.focusNode
          : focusNode // ignore: cast_nullable_to_non_nullable
              as FocusNode,
      textEditingController: null == textEditingController
          ? _value.textEditingController
          : textEditingController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      shouldShowSearchResults: null == shouldShowSearchResults
          ? _value.shouldShowSearchResults
          : shouldShowSearchResults // ignore: cast_nullable_to_non_nullable
              as bool,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      recommendation: null == recommendation
          ? _value.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Tag>>,
      searchResults: null == searchResults
          ? _value.searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Tag>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchTagsStateCopyWith<$Res>
    implements $SearchTagsStateCopyWith<$Res> {
  factory _$$_SearchTagsStateCopyWith(
          _$_SearchTagsState value, $Res Function(_$_SearchTagsState) then) =
      __$$_SearchTagsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool didSearch,
      FocusNode focusNode,
      TextEditingController textEditingController,
      bool shouldShowSearchResults,
      List<Tag> selected,
      AsyncValue<List<Tag>> recommendation,
      AsyncValue<List<Tag>> searchResults});
}

/// @nodoc
class __$$_SearchTagsStateCopyWithImpl<$Res>
    extends _$SearchTagsStateCopyWithImpl<$Res, _$_SearchTagsState>
    implements _$$_SearchTagsStateCopyWith<$Res> {
  __$$_SearchTagsStateCopyWithImpl(
      _$_SearchTagsState _value, $Res Function(_$_SearchTagsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? didSearch = null,
    Object? focusNode = null,
    Object? textEditingController = null,
    Object? shouldShowSearchResults = null,
    Object? selected = null,
    Object? recommendation = null,
    Object? searchResults = null,
  }) {
    return _then(_$_SearchTagsState(
      didSearch: null == didSearch
          ? _value.didSearch
          : didSearch // ignore: cast_nullable_to_non_nullable
              as bool,
      focusNode: null == focusNode
          ? _value.focusNode
          : focusNode // ignore: cast_nullable_to_non_nullable
              as FocusNode,
      textEditingController: null == textEditingController
          ? _value.textEditingController
          : textEditingController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      shouldShowSearchResults: null == shouldShowSearchResults
          ? _value.shouldShowSearchResults
          : shouldShowSearchResults // ignore: cast_nullable_to_non_nullable
              as bool,
      selected: null == selected
          ? _value._selected
          : selected // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      recommendation: null == recommendation
          ? _value.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Tag>>,
      searchResults: null == searchResults
          ? _value.searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Tag>>,
    ));
  }
}

/// @nodoc

class _$_SearchTagsState implements _SearchTagsState {
  const _$_SearchTagsState(
      {required this.didSearch,
      required this.focusNode,
      required this.textEditingController,
      required this.shouldShowSearchResults,
      required final List<Tag> selected,
      required this.recommendation,
      required this.searchResults})
      : _selected = selected;

  /// 検索したかどうか
  @override
  final bool didSearch;

  /// 検索バーのフォーカス
  @override
  final FocusNode focusNode;

  /// 検索バーのテキストコントローラー
  @override
  final TextEditingController textEditingController;

  /// 検索結果を表示するかどうか
  @override
  final bool shouldShowSearchResults;

  /// 設定中のタグ
  final List<Tag> _selected;

  /// 設定中のタグ
  @override
  List<Tag> get selected {
    if (_selected is EqualUnmodifiableListView) return _selected;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selected);
  }

  /// おすすめのタグ
  @override
  final AsyncValue<List<Tag>> recommendation;

  /// 検索結果
  @override
  final AsyncValue<List<Tag>> searchResults;

  @override
  String toString() {
    return 'SearchTagsState(didSearch: $didSearch, focusNode: $focusNode, textEditingController: $textEditingController, shouldShowSearchResults: $shouldShowSearchResults, selected: $selected, recommendation: $recommendation, searchResults: $searchResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchTagsState &&
            (identical(other.didSearch, didSearch) ||
                other.didSearch == didSearch) &&
            (identical(other.focusNode, focusNode) ||
                other.focusNode == focusNode) &&
            (identical(other.textEditingController, textEditingController) ||
                other.textEditingController == textEditingController) &&
            (identical(
                    other.shouldShowSearchResults, shouldShowSearchResults) ||
                other.shouldShowSearchResults == shouldShowSearchResults) &&
            const DeepCollectionEquality().equals(other._selected, _selected) &&
            (identical(other.recommendation, recommendation) ||
                other.recommendation == recommendation) &&
            (identical(other.searchResults, searchResults) ||
                other.searchResults == searchResults));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      didSearch,
      focusNode,
      textEditingController,
      shouldShowSearchResults,
      const DeepCollectionEquality().hash(_selected),
      recommendation,
      searchResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchTagsStateCopyWith<_$_SearchTagsState> get copyWith =>
      __$$_SearchTagsStateCopyWithImpl<_$_SearchTagsState>(this, _$identity);
}

abstract class _SearchTagsState implements SearchTagsState {
  const factory _SearchTagsState(
      {required final bool didSearch,
      required final FocusNode focusNode,
      required final TextEditingController textEditingController,
      required final bool shouldShowSearchResults,
      required final List<Tag> selected,
      required final AsyncValue<List<Tag>> recommendation,
      required final AsyncValue<List<Tag>> searchResults}) = _$_SearchTagsState;

  @override

  /// 検索したかどうか
  bool get didSearch;
  @override

  /// 検索バーのフォーカス
  FocusNode get focusNode;
  @override

  /// 検索バーのテキストコントローラー
  TextEditingController get textEditingController;
  @override

  /// 検索結果を表示するかどうか
  bool get shouldShowSearchResults;
  @override

  /// 設定中のタグ
  List<Tag> get selected;
  @override

  /// おすすめのタグ
  AsyncValue<List<Tag>> get recommendation;
  @override

  /// 検索結果
  AsyncValue<List<Tag>> get searchResults;
  @override
  @JsonKey(ignore: true)
  _$$_SearchTagsStateCopyWith<_$_SearchTagsState> get copyWith =>
      throw _privateConstructorUsedError;
}
