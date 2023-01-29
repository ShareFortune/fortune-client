// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'messege_room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageRoom _$MessageRoomFromJson(Map<String, dynamic> json) {
  return _MessageRoom.fromJson(json);
}

/// @nodoc
mixin _$MessageRoom {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'roomName')
  String get roomName => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastSentAt')
  String? get lastSentAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastSendMessage')
  String? get lastSendMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'hostMainImageURL')
  String get hostMainImageURL => throw _privateConstructorUsedError;
  @JsonKey(name: 'participantMainImageURLs')
  List<String> get participantMainImageURLs =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'unreadCount')
  int get unreadCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageRoomCopyWith<MessageRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageRoomCopyWith<$Res> {
  factory $MessageRoomCopyWith(
          MessageRoom value, $Res Function(MessageRoom) then) =
      _$MessageRoomCopyWithImpl<$Res, MessageRoom>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id')
          String id,
      @JsonKey(name: 'roomName')
          String roomName,
      @JsonKey(name: 'lastSentAt')
          String? lastSentAt,
      @JsonKey(name: 'lastSendMessage')
          String? lastSendMessage,
      @JsonKey(name: 'hostMainImageURL')
          String hostMainImageURL,
      @JsonKey(name: 'participantMainImageURLs')
          List<String> participantMainImageURLs,
      @JsonKey(name: 'unreadCount')
          int unreadCount});
}

/// @nodoc
class _$MessageRoomCopyWithImpl<$Res, $Val extends MessageRoom>
    implements $MessageRoomCopyWith<$Res> {
  _$MessageRoomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? roomName = null,
    Object? lastSentAt = freezed,
    Object? lastSendMessage = freezed,
    Object? hostMainImageURL = null,
    Object? participantMainImageURLs = null,
    Object? unreadCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      roomName: null == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      lastSentAt: freezed == lastSentAt
          ? _value.lastSentAt
          : lastSentAt // ignore: cast_nullable_to_non_nullable
              as String?,
      lastSendMessage: freezed == lastSendMessage
          ? _value.lastSendMessage
          : lastSendMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      hostMainImageURL: null == hostMainImageURL
          ? _value.hostMainImageURL
          : hostMainImageURL // ignore: cast_nullable_to_non_nullable
              as String,
      participantMainImageURLs: null == participantMainImageURLs
          ? _value.participantMainImageURLs
          : participantMainImageURLs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      unreadCount: null == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageRoomCopyWith<$Res>
    implements $MessageRoomCopyWith<$Res> {
  factory _$$_MessageRoomCopyWith(
          _$_MessageRoom value, $Res Function(_$_MessageRoom) then) =
      __$$_MessageRoomCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id')
          String id,
      @JsonKey(name: 'roomName')
          String roomName,
      @JsonKey(name: 'lastSentAt')
          String? lastSentAt,
      @JsonKey(name: 'lastSendMessage')
          String? lastSendMessage,
      @JsonKey(name: 'hostMainImageURL')
          String hostMainImageURL,
      @JsonKey(name: 'participantMainImageURLs')
          List<String> participantMainImageURLs,
      @JsonKey(name: 'unreadCount')
          int unreadCount});
}

/// @nodoc
class __$$_MessageRoomCopyWithImpl<$Res>
    extends _$MessageRoomCopyWithImpl<$Res, _$_MessageRoom>
    implements _$$_MessageRoomCopyWith<$Res> {
  __$$_MessageRoomCopyWithImpl(
      _$_MessageRoom _value, $Res Function(_$_MessageRoom) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? roomName = null,
    Object? lastSentAt = freezed,
    Object? lastSendMessage = freezed,
    Object? hostMainImageURL = null,
    Object? participantMainImageURLs = null,
    Object? unreadCount = null,
  }) {
    return _then(_$_MessageRoom(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      roomName: null == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      lastSentAt: freezed == lastSentAt
          ? _value.lastSentAt
          : lastSentAt // ignore: cast_nullable_to_non_nullable
              as String?,
      lastSendMessage: freezed == lastSendMessage
          ? _value.lastSendMessage
          : lastSendMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      hostMainImageURL: null == hostMainImageURL
          ? _value.hostMainImageURL
          : hostMainImageURL // ignore: cast_nullable_to_non_nullable
              as String,
      participantMainImageURLs: null == participantMainImageURLs
          ? _value._participantMainImageURLs
          : participantMainImageURLs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      unreadCount: null == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageRoom implements _MessageRoom {
  const _$_MessageRoom(
      {@JsonKey(name: 'id')
          required this.id,
      @JsonKey(name: 'roomName')
          required this.roomName,
      @JsonKey(name: 'lastSentAt')
          this.lastSentAt,
      @JsonKey(name: 'lastSendMessage')
          this.lastSendMessage,
      @JsonKey(name: 'hostMainImageURL')
          required this.hostMainImageURL,
      @JsonKey(name: 'participantMainImageURLs')
          required final List<String> participantMainImageURLs,
      @JsonKey(name: 'unreadCount')
          required this.unreadCount})
      : _participantMainImageURLs = participantMainImageURLs;

  factory _$_MessageRoom.fromJson(Map<String, dynamic> json) =>
      _$$_MessageRoomFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'roomName')
  final String roomName;
  @override
  @JsonKey(name: 'lastSentAt')
  final String? lastSentAt;
  @override
  @JsonKey(name: 'lastSendMessage')
  final String? lastSendMessage;
  @override
  @JsonKey(name: 'hostMainImageURL')
  final String hostMainImageURL;
  final List<String> _participantMainImageURLs;
  @override
  @JsonKey(name: 'participantMainImageURLs')
  List<String> get participantMainImageURLs {
    if (_participantMainImageURLs is EqualUnmodifiableListView)
      return _participantMainImageURLs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participantMainImageURLs);
  }

  @override
  @JsonKey(name: 'unreadCount')
  final int unreadCount;

  @override
  String toString() {
    return 'MessageRoom(id: $id, roomName: $roomName, lastSentAt: $lastSentAt, lastSendMessage: $lastSendMessage, hostMainImageURL: $hostMainImageURL, participantMainImageURLs: $participantMainImageURLs, unreadCount: $unreadCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageRoom &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.roomName, roomName) ||
                other.roomName == roomName) &&
            (identical(other.lastSentAt, lastSentAt) ||
                other.lastSentAt == lastSentAt) &&
            (identical(other.lastSendMessage, lastSendMessage) ||
                other.lastSendMessage == lastSendMessage) &&
            (identical(other.hostMainImageURL, hostMainImageURL) ||
                other.hostMainImageURL == hostMainImageURL) &&
            const DeepCollectionEquality().equals(
                other._participantMainImageURLs, _participantMainImageURLs) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      roomName,
      lastSentAt,
      lastSendMessage,
      hostMainImageURL,
      const DeepCollectionEquality().hash(_participantMainImageURLs),
      unreadCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageRoomCopyWith<_$_MessageRoom> get copyWith =>
      __$$_MessageRoomCopyWithImpl<_$_MessageRoom>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageRoomToJson(
      this,
    );
  }
}

abstract class _MessageRoom implements MessageRoom {
  const factory _MessageRoom(
      {@JsonKey(name: 'id')
          required final String id,
      @JsonKey(name: 'roomName')
          required final String roomName,
      @JsonKey(name: 'lastSentAt')
          final String? lastSentAt,
      @JsonKey(name: 'lastSendMessage')
          final String? lastSendMessage,
      @JsonKey(name: 'hostMainImageURL')
          required final String hostMainImageURL,
      @JsonKey(name: 'participantMainImageURLs')
          required final List<String> participantMainImageURLs,
      @JsonKey(name: 'unreadCount')
          required final int unreadCount}) = _$_MessageRoom;

  factory _MessageRoom.fromJson(Map<String, dynamic> json) =
      _$_MessageRoom.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'roomName')
  String get roomName;
  @override
  @JsonKey(name: 'lastSentAt')
  String? get lastSentAt;
  @override
  @JsonKey(name: 'lastSendMessage')
  String? get lastSendMessage;
  @override
  @JsonKey(name: 'hostMainImageURL')
  String get hostMainImageURL;
  @override
  @JsonKey(name: 'participantMainImageURLs')
  List<String> get participantMainImageURLs;
  @override
  @JsonKey(name: 'unreadCount')
  int get unreadCount;
  @override
  @JsonKey(ignore: true)
  _$$_MessageRoomCopyWith<_$_MessageRoom> get copyWith =>
      throw _privateConstructorUsedError;
}
