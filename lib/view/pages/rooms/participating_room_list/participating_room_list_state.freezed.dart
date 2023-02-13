// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'participating_room_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ParticipatingRoomListState<T> {
  AsyncValue<List<T>> get rooms => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParticipatingRoomListStateCopyWith<T, ParticipatingRoomListState<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipatingRoomListStateCopyWith<T, $Res> {
  factory $ParticipatingRoomListStateCopyWith(
          ParticipatingRoomListState<T> value,
          $Res Function(ParticipatingRoomListState<T>) then) =
      _$ParticipatingRoomListStateCopyWithImpl<T, $Res,
          ParticipatingRoomListState<T>>;
  @useResult
  $Res call({AsyncValue<List<T>> rooms});
}

/// @nodoc
class _$ParticipatingRoomListStateCopyWithImpl<T, $Res,
        $Val extends ParticipatingRoomListState<T>>
    implements $ParticipatingRoomListStateCopyWith<T, $Res> {
  _$ParticipatingRoomListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
  }) {
    return _then(_value.copyWith(
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<T>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ParticipatingRoomListStateCopyWith<T, $Res>
    implements $ParticipatingRoomListStateCopyWith<T, $Res> {
  factory _$$_ParticipatingRoomListStateCopyWith(
          _$_ParticipatingRoomListState<T> value,
          $Res Function(_$_ParticipatingRoomListState<T>) then) =
      __$$_ParticipatingRoomListStateCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({AsyncValue<List<T>> rooms});
}

/// @nodoc
class __$$_ParticipatingRoomListStateCopyWithImpl<T, $Res>
    extends _$ParticipatingRoomListStateCopyWithImpl<T, $Res,
        _$_ParticipatingRoomListState<T>>
    implements _$$_ParticipatingRoomListStateCopyWith<T, $Res> {
  __$$_ParticipatingRoomListStateCopyWithImpl(
      _$_ParticipatingRoomListState<T> _value,
      $Res Function(_$_ParticipatingRoomListState<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
  }) {
    return _then(_$_ParticipatingRoomListState<T>(
      null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<T>>,
    ));
  }
}

/// @nodoc

class _$_ParticipatingRoomListState<T>
    implements _ParticipatingRoomListState<T> {
  const _$_ParticipatingRoomListState(this.rooms);

  @override
  final AsyncValue<List<T>> rooms;

  @override
  String toString() {
    return 'ParticipatingRoomListState<$T>(rooms: $rooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParticipatingRoomListState<T> &&
            (identical(other.rooms, rooms) || other.rooms == rooms));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rooms);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParticipatingRoomListStateCopyWith<T, _$_ParticipatingRoomListState<T>>
      get copyWith => __$$_ParticipatingRoomListStateCopyWithImpl<T,
          _$_ParticipatingRoomListState<T>>(this, _$identity);
}

abstract class _ParticipatingRoomListState<T>
    implements ParticipatingRoomListState<T> {
  const factory _ParticipatingRoomListState(final AsyncValue<List<T>> rooms) =
      _$_ParticipatingRoomListState<T>;

  @override
  AsyncValue<List<T>> get rooms;
  @override
  @JsonKey(ignore: true)
  _$$_ParticipatingRoomListStateCopyWith<T, _$_ParticipatingRoomListState<T>>
      get copyWith => throw _privateConstructorUsedError;
}