// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_room_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessageRoomState {
  String get messageRoomId => throw _privateConstructorUsedError;
  User get myUserInfo => throw _privateConstructorUsedError;
  AsyncValue<List<Message>> get messages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageRoomStateCopyWith<MessageRoomState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageRoomStateCopyWith<$Res> {
  factory $MessageRoomStateCopyWith(
          MessageRoomState value, $Res Function(MessageRoomState) then) =
      _$MessageRoomStateCopyWithImpl<$Res, MessageRoomState>;
  @useResult
  $Res call(
      {String messageRoomId,
      User myUserInfo,
      AsyncValue<List<Message>> messages});
}

/// @nodoc
class _$MessageRoomStateCopyWithImpl<$Res, $Val extends MessageRoomState>
    implements $MessageRoomStateCopyWith<$Res> {
  _$MessageRoomStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageRoomId = null,
    Object? myUserInfo = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      messageRoomId: null == messageRoomId
          ? _value.messageRoomId
          : messageRoomId // ignore: cast_nullable_to_non_nullable
              as String,
      myUserInfo: null == myUserInfo
          ? _value.myUserInfo
          : myUserInfo // ignore: cast_nullable_to_non_nullable
              as User,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Message>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageRoomStateCopyWith<$Res>
    implements $MessageRoomStateCopyWith<$Res> {
  factory _$$_MessageRoomStateCopyWith(
          _$_MessageRoomState value, $Res Function(_$_MessageRoomState) then) =
      __$$_MessageRoomStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String messageRoomId,
      User myUserInfo,
      AsyncValue<List<Message>> messages});
}

/// @nodoc
class __$$_MessageRoomStateCopyWithImpl<$Res>
    extends _$MessageRoomStateCopyWithImpl<$Res, _$_MessageRoomState>
    implements _$$_MessageRoomStateCopyWith<$Res> {
  __$$_MessageRoomStateCopyWithImpl(
      _$_MessageRoomState _value, $Res Function(_$_MessageRoomState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageRoomId = null,
    Object? myUserInfo = null,
    Object? messages = null,
  }) {
    return _then(_$_MessageRoomState(
      messageRoomId: null == messageRoomId
          ? _value.messageRoomId
          : messageRoomId // ignore: cast_nullable_to_non_nullable
              as String,
      myUserInfo: null == myUserInfo
          ? _value.myUserInfo
          : myUserInfo // ignore: cast_nullable_to_non_nullable
              as User,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Message>>,
    ));
  }
}

/// @nodoc

class _$_MessageRoomState implements _MessageRoomState {
  const _$_MessageRoomState(
      {required this.messageRoomId,
      required this.myUserInfo,
      required this.messages});

  @override
  final String messageRoomId;
  @override
  final User myUserInfo;
  @override
  final AsyncValue<List<Message>> messages;

  @override
  String toString() {
    return 'MessageRoomState(messageRoomId: $messageRoomId, myUserInfo: $myUserInfo, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageRoomState &&
            (identical(other.messageRoomId, messageRoomId) ||
                other.messageRoomId == messageRoomId) &&
            (identical(other.myUserInfo, myUserInfo) ||
                other.myUserInfo == myUserInfo) &&
            (identical(other.messages, messages) ||
                other.messages == messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, messageRoomId, myUserInfo, messages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageRoomStateCopyWith<_$_MessageRoomState> get copyWith =>
      __$$_MessageRoomStateCopyWithImpl<_$_MessageRoomState>(this, _$identity);
}

abstract class _MessageRoomState implements MessageRoomState {
  const factory _MessageRoomState(
      {required final String messageRoomId,
      required final User myUserInfo,
      required final AsyncValue<List<Message>> messages}) = _$_MessageRoomState;

  @override
  String get messageRoomId;
  @override
  User get myUserInfo;
  @override
  AsyncValue<List<Message>> get messages;
  @override
  @JsonKey(ignore: true)
  _$$_MessageRoomStateCopyWith<_$_MessageRoomState> get copyWith =>
      throw _privateConstructorUsedError;
}
