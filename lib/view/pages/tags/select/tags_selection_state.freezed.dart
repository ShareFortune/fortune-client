// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tags_selection_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TagsSelectionState {
  List<TagState> get recommendation => throw _privateConstructorUsedError;
  List<TagState> get isSet => throw _privateConstructorUsedError;
  AsyncValue<List<TagState>> get searchResult =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TagsSelectionStateCopyWith<TagsSelectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagsSelectionStateCopyWith<$Res> {
  factory $TagsSelectionStateCopyWith(
          TagsSelectionState value, $Res Function(TagsSelectionState) then) =
      _$TagsSelectionStateCopyWithImpl<$Res, TagsSelectionState>;
  @useResult
  $Res call(
      {List<TagState> recommendation,
      List<TagState> isSet,
      AsyncValue<List<TagState>> searchResult});
}

/// @nodoc
class _$TagsSelectionStateCopyWithImpl<$Res, $Val extends TagsSelectionState>
    implements $TagsSelectionStateCopyWith<$Res> {
  _$TagsSelectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommendation = null,
    Object? isSet = null,
    Object? searchResult = null,
  }) {
    return _then(_value.copyWith(
      recommendation: null == recommendation
          ? _value.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as List<TagState>,
      isSet: null == isSet
          ? _value.isSet
          : isSet // ignore: cast_nullable_to_non_nullable
              as List<TagState>,
      searchResult: null == searchResult
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<TagState>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TagsSelectionStateCopyWith<$Res>
    implements $TagsSelectionStateCopyWith<$Res> {
  factory _$$_TagsSelectionStateCopyWith(_$_TagsSelectionState value,
          $Res Function(_$_TagsSelectionState) then) =
      __$$_TagsSelectionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TagState> recommendation,
      List<TagState> isSet,
      AsyncValue<List<TagState>> searchResult});
}

/// @nodoc
class __$$_TagsSelectionStateCopyWithImpl<$Res>
    extends _$TagsSelectionStateCopyWithImpl<$Res, _$_TagsSelectionState>
    implements _$$_TagsSelectionStateCopyWith<$Res> {
  __$$_TagsSelectionStateCopyWithImpl(
      _$_TagsSelectionState _value, $Res Function(_$_TagsSelectionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommendation = null,
    Object? isSet = null,
    Object? searchResult = null,
  }) {
    return _then(_$_TagsSelectionState(
      recommendation: null == recommendation
          ? _value._recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as List<TagState>,
      isSet: null == isSet
          ? _value._isSet
          : isSet // ignore: cast_nullable_to_non_nullable
              as List<TagState>,
      searchResult: null == searchResult
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<TagState>>,
    ));
  }
}

/// @nodoc

class _$_TagsSelectionState implements _TagsSelectionState {
  const _$_TagsSelectionState(
      {required final List<TagState> recommendation,
      required final List<TagState> isSet,
      required this.searchResult})
      : _recommendation = recommendation,
        _isSet = isSet;

  final List<TagState> _recommendation;
  @override
  List<TagState> get recommendation {
    if (_recommendation is EqualUnmodifiableListView) return _recommendation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendation);
  }

  final List<TagState> _isSet;
  @override
  List<TagState> get isSet {
    if (_isSet is EqualUnmodifiableListView) return _isSet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_isSet);
  }

  @override
  final AsyncValue<List<TagState>> searchResult;

  @override
  String toString() {
    return 'TagsSelectionState(recommendation: $recommendation, isSet: $isSet, searchResult: $searchResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TagsSelectionState &&
            const DeepCollectionEquality()
                .equals(other._recommendation, _recommendation) &&
            const DeepCollectionEquality().equals(other._isSet, _isSet) &&
            (identical(other.searchResult, searchResult) ||
                other.searchResult == searchResult));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_recommendation),
      const DeepCollectionEquality().hash(_isSet),
      searchResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TagsSelectionStateCopyWith<_$_TagsSelectionState> get copyWith =>
      __$$_TagsSelectionStateCopyWithImpl<_$_TagsSelectionState>(
          this, _$identity);
}

abstract class _TagsSelectionState implements TagsSelectionState {
  const factory _TagsSelectionState(
          {required final List<TagState> recommendation,
          required final List<TagState> isSet,
          required final AsyncValue<List<TagState>> searchResult}) =
      _$_TagsSelectionState;

  @override
  List<TagState> get recommendation;
  @override
  List<TagState> get isSet;
  @override
  AsyncValue<List<TagState>> get searchResult;
  @override
  @JsonKey(ignore: true)
  _$$_TagsSelectionStateCopyWith<_$_TagsSelectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TagState {
  String get id => throw _privateConstructorUsedError;
  String get tagName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TagStateCopyWith<TagState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagStateCopyWith<$Res> {
  factory $TagStateCopyWith(TagState value, $Res Function(TagState) then) =
      _$TagStateCopyWithImpl<$Res, TagState>;
  @useResult
  $Res call({String id, String tagName});
}

/// @nodoc
class _$TagStateCopyWithImpl<$Res, $Val extends TagState>
    implements $TagStateCopyWith<$Res> {
  _$TagStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tagName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      tagName: null == tagName
          ? _value.tagName
          : tagName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TagStateCopyWith<$Res> implements $TagStateCopyWith<$Res> {
  factory _$$_TagStateCopyWith(
          _$_TagState value, $Res Function(_$_TagState) then) =
      __$$_TagStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String tagName});
}

/// @nodoc
class __$$_TagStateCopyWithImpl<$Res>
    extends _$TagStateCopyWithImpl<$Res, _$_TagState>
    implements _$$_TagStateCopyWith<$Res> {
  __$$_TagStateCopyWithImpl(
      _$_TagState _value, $Res Function(_$_TagState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tagName = null,
  }) {
    return _then(_$_TagState(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      tagName: null == tagName
          ? _value.tagName
          : tagName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TagState implements _TagState {
  const _$_TagState({required this.id, required this.tagName});

  @override
  final String id;
  @override
  final String tagName;

  @override
  String toString() {
    return 'TagState(id: $id, tagName: $tagName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TagState &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tagName, tagName) || other.tagName == tagName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, tagName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TagStateCopyWith<_$_TagState> get copyWith =>
      __$$_TagStateCopyWithImpl<_$_TagState>(this, _$identity);
}

abstract class _TagState implements TagState {
  const factory _TagState(
      {required final String id, required final String tagName}) = _$_TagState;

  @override
  String get id;
  @override
  String get tagName;
  @override
  @JsonKey(ignore: true)
  _$$_TagStateCopyWith<_$_TagState> get copyWith =>
      throw _privateConstructorUsedError;
}
