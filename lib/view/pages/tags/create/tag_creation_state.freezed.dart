// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tag_creation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TagCreationState {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TagCreationStateCopyWith<TagCreationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagCreationStateCopyWith<$Res> {
  factory $TagCreationStateCopyWith(
          TagCreationState value, $Res Function(TagCreationState) then) =
      _$TagCreationStateCopyWithImpl<$Res, TagCreationState>;
  @useResult
  $Res call({String? title, String? description});
}

/// @nodoc
class _$TagCreationStateCopyWithImpl<$Res, $Val extends TagCreationState>
    implements $TagCreationStateCopyWith<$Res> {
  _$TagCreationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TagCreationStateCopyWith<$Res>
    implements $TagCreationStateCopyWith<$Res> {
  factory _$$_TagCreationStateCopyWith(
          _$_TagCreationState value, $Res Function(_$_TagCreationState) then) =
      __$$_TagCreationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? description});
}

/// @nodoc
class __$$_TagCreationStateCopyWithImpl<$Res>
    extends _$TagCreationStateCopyWithImpl<$Res, _$_TagCreationState>
    implements _$$_TagCreationStateCopyWith<$Res> {
  __$$_TagCreationStateCopyWithImpl(
      _$_TagCreationState _value, $Res Function(_$_TagCreationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_TagCreationState(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TagCreationState implements _TagCreationState {
  const _$_TagCreationState({this.title, this.description});

  @override
  final String? title;
  @override
  final String? description;

  @override
  String toString() {
    return 'TagCreationState(title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TagCreationState &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TagCreationStateCopyWith<_$_TagCreationState> get copyWith =>
      __$$_TagCreationStateCopyWithImpl<_$_TagCreationState>(this, _$identity);
}

abstract class _TagCreationState implements TagCreationState {
  const factory _TagCreationState(
      {final String? title, final String? description}) = _$_TagCreationState;

  @override
  String? get title;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_TagCreationStateCopyWith<_$_TagCreationState> get copyWith =>
      throw _privateConstructorUsedError;
}
