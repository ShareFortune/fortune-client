// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'room_create_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoomCreateState {
  String get test => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomCreateStateCopyWith<RoomCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomCreateStateCopyWith<$Res> {
  factory $RoomCreateStateCopyWith(
          RoomCreateState value, $Res Function(RoomCreateState) then) =
      _$RoomCreateStateCopyWithImpl<$Res, RoomCreateState>;
  @useResult
  $Res call({String test});
}

/// @nodoc
class _$RoomCreateStateCopyWithImpl<$Res, $Val extends RoomCreateState>
    implements $RoomCreateStateCopyWith<$Res> {
  _$RoomCreateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? test = null,
  }) {
    return _then(_value.copyWith(
      test: null == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoomCreateStateCopyWith<$Res>
    implements $RoomCreateStateCopyWith<$Res> {
  factory _$$_RoomCreateStateCopyWith(
          _$_RoomCreateState value, $Res Function(_$_RoomCreateState) then) =
      __$$_RoomCreateStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String test});
}

/// @nodoc
class __$$_RoomCreateStateCopyWithImpl<$Res>
    extends _$RoomCreateStateCopyWithImpl<$Res, _$_RoomCreateState>
    implements _$$_RoomCreateStateCopyWith<$Res> {
  __$$_RoomCreateStateCopyWithImpl(
      _$_RoomCreateState _value, $Res Function(_$_RoomCreateState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? test = null,
  }) {
    return _then(_$_RoomCreateState(
      test: null == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RoomCreateState implements _RoomCreateState {
  const _$_RoomCreateState({this.test = ""});

  @override
  @JsonKey()
  final String test;

  @override
  String toString() {
    return 'RoomCreateState(test: $test)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomCreateState &&
            (identical(other.test, test) || other.test == test));
  }

  @override
  int get hashCode => Object.hash(runtimeType, test);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomCreateStateCopyWith<_$_RoomCreateState> get copyWith =>
      __$$_RoomCreateStateCopyWithImpl<_$_RoomCreateState>(this, _$identity);
}

abstract class _RoomCreateState implements RoomCreateState {
  const factory _RoomCreateState({final String test}) = _$_RoomCreateState;

  @override
  String get test;
  @override
  @JsonKey(ignore: true)
  _$$_RoomCreateStateCopyWith<_$_RoomCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}
