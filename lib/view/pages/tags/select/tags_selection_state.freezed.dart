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
  AsyncValue<List<TagState>> get recommendation =>
      throw _privateConstructorUsedError;
  List<TagState> get beingSet => throw _privateConstructorUsedError;
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
      {AsyncValue<List<TagState>> recommendation,
      List<TagState> beingSet,
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
    Object? beingSet = null,
    Object? searchResult = null,
  }) {
    return _then(_value.copyWith(
      recommendation: null == recommendation
          ? _value.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<TagState>>,
      beingSet: null == beingSet
          ? _value.beingSet
          : beingSet // ignore: cast_nullable_to_non_nullable
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
      {AsyncValue<List<TagState>> recommendation,
      List<TagState> beingSet,
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
    Object? beingSet = null,
    Object? searchResult = null,
  }) {
    return _then(_$_TagsSelectionState(
      recommendation: null == recommendation
          ? _value.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<TagState>>,
      beingSet: null == beingSet
          ? _value._beingSet
          : beingSet // ignore: cast_nullable_to_non_nullable
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
      {this.recommendation = const AsyncValue.loading(),
      final List<TagState> beingSet = const [],
      this.searchResult = const AsyncValue.loading()})
      : _beingSet = beingSet;

  @override
  @JsonKey()
  final AsyncValue<List<TagState>> recommendation;
  final List<TagState> _beingSet;
  @override
  @JsonKey()
  List<TagState> get beingSet {
    if (_beingSet is EqualUnmodifiableListView) return _beingSet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_beingSet);
  }

  @override
  @JsonKey()
  final AsyncValue<List<TagState>> searchResult;

  @override
  String toString() {
    return 'TagsSelectionState(recommendation: $recommendation, beingSet: $beingSet, searchResult: $searchResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TagsSelectionState &&
            (identical(other.recommendation, recommendation) ||
                other.recommendation == recommendation) &&
            const DeepCollectionEquality().equals(other._beingSet, _beingSet) &&
            (identical(other.searchResult, searchResult) ||
                other.searchResult == searchResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recommendation,
      const DeepCollectionEquality().hash(_beingSet), searchResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TagsSelectionStateCopyWith<_$_TagsSelectionState> get copyWith =>
      __$$_TagsSelectionStateCopyWithImpl<_$_TagsSelectionState>(
          this, _$identity);
}

abstract class _TagsSelectionState implements TagsSelectionState {
  const factory _TagsSelectionState(
      {final AsyncValue<List<TagState>> recommendation,
      final List<TagState> beingSet,
      final AsyncValue<List<TagState>> searchResult}) = _$_TagsSelectionState;

  @override
  AsyncValue<List<TagState>> get recommendation;
  @override
  List<TagState> get beingSet;
  @override
  AsyncValue<List<TagState>> get searchResult;
  @override
  @JsonKey(ignore: true)
  _$$_TagsSelectionStateCopyWith<_$_TagsSelectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TagState {
  Tag get data => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TagStateCopyWith<TagState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagStateCopyWith<$Res> {
  factory $TagStateCopyWith(TagState value, $Res Function(TagState) then) =
      _$TagStateCopyWithImpl<$Res, TagState>;
  @useResult
  $Res call({Tag data, bool isSelected});

  $TagCopyWith<$Res> get data;
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
    Object? data = null,
    Object? isSelected = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Tag,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TagCopyWith<$Res> get data {
    return $TagCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TagStateCopyWith<$Res> implements $TagStateCopyWith<$Res> {
  factory _$$_TagStateCopyWith(
          _$_TagState value, $Res Function(_$_TagState) then) =
      __$$_TagStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Tag data, bool isSelected});

  @override
  $TagCopyWith<$Res> get data;
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
    Object? data = null,
    Object? isSelected = null,
  }) {
    return _then(_$_TagState(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Tag,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TagState implements _TagState {
  const _$_TagState({required this.data, required this.isSelected});

  @override
  final Tag data;
  @override
  final bool isSelected;

  @override
  String toString() {
    return 'TagState(data: $data, isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TagState &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TagStateCopyWith<_$_TagState> get copyWith =>
      __$$_TagStateCopyWithImpl<_$_TagState>(this, _$identity);
}

abstract class _TagState implements TagState {
  const factory _TagState(
      {required final Tag data, required final bool isSelected}) = _$_TagState;

  @override
  Tag get data;
  @override
  bool get isSelected;
  @override
  @JsonKey(ignore: true)
  _$$_TagStateCopyWith<_$_TagState> get copyWith =>
      throw _privateConstructorUsedError;
}
