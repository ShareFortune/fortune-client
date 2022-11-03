// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'room_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoomDetailState {
  Room get room => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomDetailStateCopyWith<RoomDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomDetailStateCopyWith<$Res> {
  factory $RoomDetailStateCopyWith(
          RoomDetailState value, $Res Function(RoomDetailState) then) =
      _$RoomDetailStateCopyWithImpl<$Res, RoomDetailState>;
  @useResult
  $Res call({Room room});

  $RoomCopyWith<$Res> get room;
}

/// @nodoc
class _$RoomDetailStateCopyWithImpl<$Res, $Val extends RoomDetailState>
    implements $RoomDetailStateCopyWith<$Res> {
  _$RoomDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = null,
  }) {
    return _then(_value.copyWith(
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RoomCopyWith<$Res> get room {
    return $RoomCopyWith<$Res>(_value.room, (value) {
      return _then(_value.copyWith(room: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RoomDetailStateCopyWith<$Res>
    implements $RoomDetailStateCopyWith<$Res> {
  factory _$$_RoomDetailStateCopyWith(
          _$_RoomDetailState value, $Res Function(_$_RoomDetailState) then) =
      __$$_RoomDetailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Room room});

  @override
  $RoomCopyWith<$Res> get room;
}

/// @nodoc
class __$$_RoomDetailStateCopyWithImpl<$Res>
    extends _$RoomDetailStateCopyWithImpl<$Res, _$_RoomDetailState>
    implements _$$_RoomDetailStateCopyWith<$Res> {
  __$$_RoomDetailStateCopyWithImpl(
      _$_RoomDetailState _value, $Res Function(_$_RoomDetailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = null,
  }) {
    return _then(_$_RoomDetailState(
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
    ));
  }
}

/// @nodoc

class _$_RoomDetailState implements _RoomDetailState {
  const _$_RoomDetailState({required this.room});

  @override
  final Room room;

  @override
  String toString() {
    return 'RoomDetailState(room: $room)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomDetailState &&
            (identical(other.room, room) || other.room == room));
  }

  @override
  int get hashCode => Object.hash(runtimeType, room);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomDetailStateCopyWith<_$_RoomDetailState> get copyWith =>
      __$$_RoomDetailStateCopyWithImpl<_$_RoomDetailState>(this, _$identity);
}

abstract class _RoomDetailState implements RoomDetailState {
  const factory _RoomDetailState({required final Room room}) =
      _$_RoomDetailState;

  @override
  Room get room;
  @override
  @JsonKey(ignore: true)
  _$$_RoomDetailStateCopyWith<_$_RoomDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
