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
  AsyncValue<StatusMessageRoomListState> get host =>
      throw _privateConstructorUsedError;
  AsyncValue<StatusMessageRoomListState> get guest =>
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
      {AsyncValue<StatusMessageRoomListState> host,
      AsyncValue<StatusMessageRoomListState> guest});
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
              as AsyncValue<StatusMessageRoomListState>,
      guest: null == guest
          ? _value.guest
          : guest // ignore: cast_nullable_to_non_nullable
              as AsyncValue<StatusMessageRoomListState>,
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
      {AsyncValue<StatusMessageRoomListState> host,
      AsyncValue<StatusMessageRoomListState> guest});
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
              as AsyncValue<StatusMessageRoomListState>,
      guest: null == guest
          ? _value.guest
          : guest // ignore: cast_nullable_to_non_nullable
              as AsyncValue<StatusMessageRoomListState>,
    ));
  }
}

/// @nodoc

class _$_MessageRoomListState implements _MessageRoomListState {
  const _$_MessageRoomListState({required this.host, required this.guest});

  @override
  final AsyncValue<StatusMessageRoomListState> host;
  @override
  final AsyncValue<StatusMessageRoomListState> guest;

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
          {required final AsyncValue<StatusMessageRoomListState> host,
          required final AsyncValue<StatusMessageRoomListState> guest}) =
      _$_MessageRoomListState;

  @override
  AsyncValue<StatusMessageRoomListState> get host;
  @override
  AsyncValue<StatusMessageRoomListState> get guest;
  @override
  @JsonKey(ignore: true)
  _$$_MessageRoomListStateCopyWith<_$_MessageRoomListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StatusMessageRoomListState {
  List<MessageRoom> get messageRooms => throw _privateConstructorUsedError;
  List<MessageRoom> get newMessageRooms => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StatusMessageRoomListStateCopyWith<StatusMessageRoomListState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusMessageRoomListStateCopyWith<$Res> {
  factory $StatusMessageRoomListStateCopyWith(StatusMessageRoomListState value,
          $Res Function(StatusMessageRoomListState) then) =
      _$StatusMessageRoomListStateCopyWithImpl<$Res,
          StatusMessageRoomListState>;
  @useResult
  $Res call(
      {List<MessageRoom> messageRooms, List<MessageRoom> newMessageRooms});
}

/// @nodoc
class _$StatusMessageRoomListStateCopyWithImpl<$Res,
        $Val extends StatusMessageRoomListState>
    implements $StatusMessageRoomListStateCopyWith<$Res> {
  _$StatusMessageRoomListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageRooms = null,
    Object? newMessageRooms = null,
  }) {
    return _then(_value.copyWith(
      messageRooms: null == messageRooms
          ? _value.messageRooms
          : messageRooms // ignore: cast_nullable_to_non_nullable
              as List<MessageRoom>,
      newMessageRooms: null == newMessageRooms
          ? _value.newMessageRooms
          : newMessageRooms // ignore: cast_nullable_to_non_nullable
              as List<MessageRoom>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StatusMessageRoomListStateCopyWith<$Res>
    implements $StatusMessageRoomListStateCopyWith<$Res> {
  factory _$$_StatusMessageRoomListStateCopyWith(
          _$_StatusMessageRoomListState value,
          $Res Function(_$_StatusMessageRoomListState) then) =
      __$$_StatusMessageRoomListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<MessageRoom> messageRooms, List<MessageRoom> newMessageRooms});
}

/// @nodoc
class __$$_StatusMessageRoomListStateCopyWithImpl<$Res>
    extends _$StatusMessageRoomListStateCopyWithImpl<$Res,
        _$_StatusMessageRoomListState>
    implements _$$_StatusMessageRoomListStateCopyWith<$Res> {
  __$$_StatusMessageRoomListStateCopyWithImpl(
      _$_StatusMessageRoomListState _value,
      $Res Function(_$_StatusMessageRoomListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageRooms = null,
    Object? newMessageRooms = null,
  }) {
    return _then(_$_StatusMessageRoomListState(
      messageRooms: null == messageRooms
          ? _value._messageRooms
          : messageRooms // ignore: cast_nullable_to_non_nullable
              as List<MessageRoom>,
      newMessageRooms: null == newMessageRooms
          ? _value._newMessageRooms
          : newMessageRooms // ignore: cast_nullable_to_non_nullable
              as List<MessageRoom>,
    ));
  }
}

/// @nodoc

class _$_StatusMessageRoomListState extends _StatusMessageRoomListState {
  const _$_StatusMessageRoomListState(
      {required final List<MessageRoom> messageRooms,
      required final List<MessageRoom> newMessageRooms})
      : _messageRooms = messageRooms,
        _newMessageRooms = newMessageRooms,
        super._();

  final List<MessageRoom> _messageRooms;
  @override
  List<MessageRoom> get messageRooms {
    if (_messageRooms is EqualUnmodifiableListView) return _messageRooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messageRooms);
  }

  final List<MessageRoom> _newMessageRooms;
  @override
  List<MessageRoom> get newMessageRooms {
    if (_newMessageRooms is EqualUnmodifiableListView) return _newMessageRooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newMessageRooms);
  }

  @override
  String toString() {
    return 'StatusMessageRoomListState(messageRooms: $messageRooms, newMessageRooms: $newMessageRooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatusMessageRoomListState &&
            const DeepCollectionEquality()
                .equals(other._messageRooms, _messageRooms) &&
            const DeepCollectionEquality()
                .equals(other._newMessageRooms, _newMessageRooms));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_messageRooms),
      const DeepCollectionEquality().hash(_newMessageRooms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatusMessageRoomListStateCopyWith<_$_StatusMessageRoomListState>
      get copyWith => __$$_StatusMessageRoomListStateCopyWithImpl<
          _$_StatusMessageRoomListState>(this, _$identity);
}

abstract class _StatusMessageRoomListState extends StatusMessageRoomListState {
  const factory _StatusMessageRoomListState(
          {required final List<MessageRoom> messageRooms,
          required final List<MessageRoom> newMessageRooms}) =
      _$_StatusMessageRoomListState;
  const _StatusMessageRoomListState._() : super._();

  @override
  List<MessageRoom> get messageRooms;
  @override
  List<MessageRoom> get newMessageRooms;
  @override
  @JsonKey(ignore: true)
  _$$_StatusMessageRoomListStateCopyWith<_$_StatusMessageRoomListState>
      get copyWith => throw _privateConstructorUsedError;
}
