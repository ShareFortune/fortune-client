// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_room_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessageRoomListState {
  AsyncValue<List<MessageRoom>?> get host => throw _privateConstructorUsedError;
  AsyncValue<List<MessageRoom>?> get guest =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageRoomListStateCopyWith<MessageRoomListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageRoomListStateCopyWith<$Res> {
  factory $MessageRoomListStateCopyWith(MessageRoomListState value,
          $Res Function(MessageRoomListState) then) =
      _$MessageRoomListStateCopyWithImpl<$Res, MessageRoomListState>;
  @useResult
  $Res call(
      {AsyncValue<List<MessageRoom>?> host,
      AsyncValue<List<MessageRoom>?> guest});
}

/// @nodoc
class _$MessageRoomListStateCopyWithImpl<$Res,
        $Val extends MessageRoomListState>
    implements $MessageRoomListStateCopyWith<$Res> {
  _$MessageRoomListStateCopyWithImpl(this._value, this._then);

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
              as AsyncValue<List<MessageRoom>?>,
      guest: null == guest
          ? _value.guest
          : guest // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<MessageRoom>?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageRoomListStateCopyWith<$Res>
    implements $MessageRoomListStateCopyWith<$Res> {
  factory _$$_MessageRoomListStateCopyWith(_$_MessageRoomListState value,
          $Res Function(_$_MessageRoomListState) then) =
      __$$_MessageRoomListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<MessageRoom>?> host,
      AsyncValue<List<MessageRoom>?> guest});
}

/// @nodoc
class __$$_MessageRoomListStateCopyWithImpl<$Res>
    extends _$MessageRoomListStateCopyWithImpl<$Res, _$_MessageRoomListState>
    implements _$$_MessageRoomListStateCopyWith<$Res> {
  __$$_MessageRoomListStateCopyWithImpl(_$_MessageRoomListState _value,
      $Res Function(_$_MessageRoomListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? host = null,
    Object? guest = null,
  }) {
    return _then(_$_MessageRoomListState(
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<MessageRoom>?>,
      guest: null == guest
          ? _value.guest
          : guest // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<MessageRoom>?>,
    ));
  }
}

/// @nodoc

class _$_MessageRoomListState implements _MessageRoomListState {
  const _$_MessageRoomListState({required this.host, required this.guest});

  @override
  final AsyncValue<List<MessageRoom>?> host;
  @override
  final AsyncValue<List<MessageRoom>?> guest;

  @override
  String toString() {
    return 'MessageRoomListState(host: $host, guest: $guest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageRoomListState &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.guest, guest) || other.guest == guest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, host, guest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageRoomListStateCopyWith<_$_MessageRoomListState> get copyWith =>
      __$$_MessageRoomListStateCopyWithImpl<_$_MessageRoomListState>(
          this, _$identity);
}

abstract class _MessageRoomListState implements MessageRoomListState {
  const factory _MessageRoomListState(
          {required final AsyncValue<List<MessageRoom>?> host,
          required final AsyncValue<List<MessageRoom>?> guest}) =
      _$_MessageRoomListState;

  @override
  AsyncValue<List<MessageRoom>?> get host;
  @override
  AsyncValue<List<MessageRoom>?> get guest;
  @override
  @JsonKey(ignore: true)
  _$$_MessageRoomListStateCopyWith<_$_MessageRoomListState> get copyWith =>
      throw _privateConstructorUsedError;
}
