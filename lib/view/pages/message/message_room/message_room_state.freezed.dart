// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message_room_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessageRoomState {
  String get userId => throw _privateConstructorUsedError;
  List<Message> get messages => throw _privateConstructorUsedError;

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
  $Res call({String userId, List<Message> messages});
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
    Object? userId = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
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
  $Res call({String userId, List<Message> messages});
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
    Object? userId = null,
    Object? messages = null,
  }) {
    return _then(_$_MessageRoomState(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc

class _$_MessageRoomState implements _MessageRoomState {
  const _$_MessageRoomState(
      {this.userId = '82091008-a484-4a89-ae75-a22bf8d6f3ac',
      required final List<Message> messages})
      : _messages = messages;

  @override
  @JsonKey()
  final String userId;
  final List<Message> _messages;
  @override
  List<Message> get messages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'MessageRoomState(userId: $userId, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageRoomState &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, userId, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageRoomStateCopyWith<_$_MessageRoomState> get copyWith =>
      __$$_MessageRoomStateCopyWithImpl<_$_MessageRoomState>(this, _$identity);
}

abstract class _MessageRoomState implements MessageRoomState {
  const factory _MessageRoomState(
      {final String userId,
      required final List<Message> messages}) = _$_MessageRoomState;

  @override
  String get userId;
  @override
  List<Message> get messages;
  @override
  @JsonKey(ignore: true)
  _$$_MessageRoomStateCopyWith<_$_MessageRoomState> get copyWith =>
      throw _privateConstructorUsedError;
}
