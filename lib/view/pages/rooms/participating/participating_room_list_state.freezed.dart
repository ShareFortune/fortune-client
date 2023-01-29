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
mixin _$ParticipatingRoomListState {
  AsyncValue<List<ParticipantRoomAsHost>> get host =>
      throw _privateConstructorUsedError;
  AsyncValue<List<ParticipantRoomAsGuest>> get guest =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParticipatingRoomListStateCopyWith<ParticipatingRoomListState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipatingRoomListStateCopyWith<$Res> {
  factory $ParticipatingRoomListStateCopyWith(ParticipatingRoomListState value,
          $Res Function(ParticipatingRoomListState) then) =
      _$ParticipatingRoomListStateCopyWithImpl<$Res,
          ParticipatingRoomListState>;
  @useResult
  $Res call(
      {AsyncValue<List<ParticipantRoomAsHost>> host,
      AsyncValue<List<ParticipantRoomAsGuest>> guest});
}

/// @nodoc
class _$ParticipatingRoomListStateCopyWithImpl<$Res,
        $Val extends ParticipatingRoomListState>
    implements $ParticipatingRoomListStateCopyWith<$Res> {
  _$ParticipatingRoomListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? host = null,
    Object? guest = null,
  }) {
    return _then(_value.copyWith(
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<ParticipantRoomAsHost>>,
      guest: null == guest
          ? _value.guest
          : guest // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<ParticipantRoomAsGuest>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ParticipatingRoomListStateCopyWith<$Res>
    implements $ParticipatingRoomListStateCopyWith<$Res> {
  factory _$$_ParticipatingRoomListStateCopyWith(
          _$_ParticipatingRoomListState value,
          $Res Function(_$_ParticipatingRoomListState) then) =
      __$$_ParticipatingRoomListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<ParticipantRoomAsHost>> host,
      AsyncValue<List<ParticipantRoomAsGuest>> guest});
}

/// @nodoc
class __$$_ParticipatingRoomListStateCopyWithImpl<$Res>
    extends _$ParticipatingRoomListStateCopyWithImpl<$Res,
        _$_ParticipatingRoomListState>
    implements _$$_ParticipatingRoomListStateCopyWith<$Res> {
  __$$_ParticipatingRoomListStateCopyWithImpl(
      _$_ParticipatingRoomListState _value,
      $Res Function(_$_ParticipatingRoomListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? host = null,
    Object? guest = null,
  }) {
    return _then(_$_ParticipatingRoomListState(
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<ParticipantRoomAsHost>>,
      guest: null == guest
          ? _value.guest
          : guest // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<ParticipantRoomAsGuest>>,
    ));
  }
}

/// @nodoc

class _$_ParticipatingRoomListState implements _ParticipatingRoomListState {
  const _$_ParticipatingRoomListState(
      {this.host = const AsyncLoading(), this.guest = const AsyncLoading()});

  @override
  @JsonKey()
  final AsyncValue<List<ParticipantRoomAsHost>> host;
  @override
  @JsonKey()
  final AsyncValue<List<ParticipantRoomAsGuest>> guest;

  @override
  String toString() {
    return 'ParticipatingRoomListState(host: $host, guest: $guest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParticipatingRoomListState &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.guest, guest) || other.guest == guest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, host, guest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParticipatingRoomListStateCopyWith<_$_ParticipatingRoomListState>
      get copyWith => __$$_ParticipatingRoomListStateCopyWithImpl<
          _$_ParticipatingRoomListState>(this, _$identity);
}

abstract class _ParticipatingRoomListState
    implements ParticipatingRoomListState {
  const factory _ParticipatingRoomListState(
          {final AsyncValue<List<ParticipantRoomAsHost>> host,
          final AsyncValue<List<ParticipantRoomAsGuest>> guest}) =
      _$_ParticipatingRoomListState;

  @override
  AsyncValue<List<ParticipantRoomAsHost>> get host;
  @override
  AsyncValue<List<ParticipantRoomAsGuest>> get guest;
  @override
  @JsonKey(ignore: true)
  _$$_ParticipatingRoomListStateCopyWith<_$_ParticipatingRoomListState>
      get copyWith => throw _privateConstructorUsedError;
}
