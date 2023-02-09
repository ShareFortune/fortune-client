// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_tag_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateTagState {
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateTagStateCopyWith<CreateTagState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTagStateCopyWith<$Res> {
  factory $CreateTagStateCopyWith(
          CreateTagState value, $Res Function(CreateTagState) then) =
      _$CreateTagStateCopyWithImpl<$Res, CreateTagState>;
  @useResult
  $Res call({String? name, String? description});
}

/// @nodoc
class _$CreateTagStateCopyWithImpl<$Res, $Val extends CreateTagState>
    implements $CreateTagStateCopyWith<$Res> {
  _$CreateTagStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateTagStateCopyWith<$Res>
    implements $CreateTagStateCopyWith<$Res> {
  factory _$$_CreateTagStateCopyWith(
          _$_CreateTagState value, $Res Function(_$_CreateTagState) then) =
      __$$_CreateTagStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? description});
}

/// @nodoc
class __$$_CreateTagStateCopyWithImpl<$Res>
    extends _$CreateTagStateCopyWithImpl<$Res, _$_CreateTagState>
    implements _$$_CreateTagStateCopyWith<$Res> {
  __$$_CreateTagStateCopyWithImpl(
      _$_CreateTagState _value, $Res Function(_$_CreateTagState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_CreateTagState(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CreateTagState implements _CreateTagState {
  const _$_CreateTagState({this.name, this.description});

  @override
  final String? name;
  @override
  final String? description;

  @override
  String toString() {
    return 'CreateTagState(name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateTagState &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateTagStateCopyWith<_$_CreateTagState> get copyWith =>
      __$$_CreateTagStateCopyWithImpl<_$_CreateTagState>(this, _$identity);
}

abstract class _CreateTagState implements CreateTagState {
  const factory _CreateTagState(
      {final String? name, final String? description}) = _$_CreateTagState;

  @override
  String? get name;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_CreateTagStateCopyWith<_$_CreateTagState> get copyWith =>
      throw _privateConstructorUsedError;
}
