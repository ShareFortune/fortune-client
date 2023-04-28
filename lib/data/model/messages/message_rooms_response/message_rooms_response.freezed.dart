// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_rooms_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageRoomsResponse _$MessageRoomsResponseFromJson(Map<String, dynamic> json) {
  return _MessageRoomsResponse.fromJson(json);
}

/// @nodoc
mixin _$MessageRoomsResponse {
  String get nextToken => throw _privateConstructorUsedError;
  List<MessageRoom> get messageRooms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageRoomsResponseCopyWith<MessageRoomsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageRoomsResponseCopyWith<$Res> {
  factory $MessageRoomsResponseCopyWith(MessageRoomsResponse value,
          $Res Function(MessageRoomsResponse) then) =
      _$MessageRoomsResponseCopyWithImpl<$Res, MessageRoomsResponse>;
  @useResult
  $Res call({String nextToken, List<MessageRoom> messageRooms});
}

/// @nodoc
class _$MessageRoomsResponseCopyWithImpl<$Res,
        $Val extends MessageRoomsResponse>
    implements $MessageRoomsResponseCopyWith<$Res> {
  _$MessageRoomsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextToken = null,
    Object? messageRooms = null,
  }) {
    return _then(_value.copyWith(
      nextToken: null == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String,
      messageRooms: null == messageRooms
          ? _value.messageRooms
          : messageRooms // ignore: cast_nullable_to_non_nullable
              as List<MessageRoom>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageRoomsResponseCopyWith<$Res>
    implements $MessageRoomsResponseCopyWith<$Res> {
  factory _$$_MessageRoomsResponseCopyWith(_$_MessageRoomsResponse value,
          $Res Function(_$_MessageRoomsResponse) then) =
      __$$_MessageRoomsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nextToken, List<MessageRoom> messageRooms});
}

/// @nodoc
class __$$_MessageRoomsResponseCopyWithImpl<$Res>
    extends _$MessageRoomsResponseCopyWithImpl<$Res, _$_MessageRoomsResponse>
    implements _$$_MessageRoomsResponseCopyWith<$Res> {
  __$$_MessageRoomsResponseCopyWithImpl(_$_MessageRoomsResponse _value,
      $Res Function(_$_MessageRoomsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextToken = null,
    Object? messageRooms = null,
  }) {
    return _then(_$_MessageRoomsResponse(
      nextToken: null == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String,
      messageRooms: null == messageRooms
          ? _value._messageRooms
          : messageRooms // ignore: cast_nullable_to_non_nullable
              as List<MessageRoom>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageRoomsResponse implements _MessageRoomsResponse {
  const _$_MessageRoomsResponse(
      {required this.nextToken, required final List<MessageRoom> messageRooms})
      : _messageRooms = messageRooms;

  factory _$_MessageRoomsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MessageRoomsResponseFromJson(json);

  @override
  final String nextToken;
  final List<MessageRoom> _messageRooms;
  @override
  List<MessageRoom> get messageRooms {
    if (_messageRooms is EqualUnmodifiableListView) return _messageRooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messageRooms);
  }

  @override
  String toString() {
    return 'MessageRoomsResponse(nextToken: $nextToken, messageRooms: $messageRooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageRoomsResponse &&
            (identical(other.nextToken, nextToken) ||
                other.nextToken == nextToken) &&
            const DeepCollectionEquality()
                .equals(other._messageRooms, _messageRooms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nextToken,
      const DeepCollectionEquality().hash(_messageRooms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageRoomsResponseCopyWith<_$_MessageRoomsResponse> get copyWith =>
      __$$_MessageRoomsResponseCopyWithImpl<_$_MessageRoomsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageRoomsResponseToJson(
      this,
    );
  }
}

abstract class _MessageRoomsResponse implements MessageRoomsResponse {
  const factory _MessageRoomsResponse(
      {required final String nextToken,
      required final List<MessageRoom> messageRooms}) = _$_MessageRoomsResponse;

  factory _MessageRoomsResponse.fromJson(Map<String, dynamic> json) =
      _$_MessageRoomsResponse.fromJson;

  @override
  String get nextToken;
  @override
  List<MessageRoom> get messageRooms;
  @override
  @JsonKey(ignore: true)
  _$$_MessageRoomsResponseCopyWith<_$_MessageRoomsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageRoom _$MessageRoomFromJson(Map<String, dynamic> json) {
  return _MessageRoom.fromJson(json);
}

/// @nodoc
mixin _$MessageRoom {
  String get id => throw _privateConstructorUsedError;
  String get roomName => throw _privateConstructorUsedError;
  DateTime? get lastSendAt => throw _privateConstructorUsedError;
  String? get lastSendMessage => throw _privateConstructorUsedError;
  String get hostMainImageURL => throw _privateConstructorUsedError;
  List<String> get participantMainImageURLs =>
      throw _privateConstructorUsedError;
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
      {String id,
      String roomName,
      DateTime? lastSendAt,
      String? lastSendMessage,
      String hostMainImageURL,
      List<String> participantMainImageURLs,
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
    Object? lastSendAt = freezed,
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
      lastSendAt: freezed == lastSendAt
          ? _value.lastSendAt
          : lastSendAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      {String id,
      String roomName,
      DateTime? lastSendAt,
      String? lastSendMessage,
      String hostMainImageURL,
      List<String> participantMainImageURLs,
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
    Object? lastSendAt = freezed,
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
      lastSendAt: freezed == lastSendAt
          ? _value.lastSendAt
          : lastSendAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      {required this.id,
      required this.roomName,
      this.lastSendAt,
      this.lastSendMessage,
      required this.hostMainImageURL,
      required final List<String> participantMainImageURLs,
      required this.unreadCount})
      : _participantMainImageURLs = participantMainImageURLs;

  factory _$_MessageRoom.fromJson(Map<String, dynamic> json) =>
      _$$_MessageRoomFromJson(json);

  @override
  final String id;
  @override
  final String roomName;
  @override
  final DateTime? lastSendAt;
  @override
  final String? lastSendMessage;
  @override
  final String hostMainImageURL;
  final List<String> _participantMainImageURLs;
  @override
  List<String> get participantMainImageURLs {
    if (_participantMainImageURLs is EqualUnmodifiableListView)
      return _participantMainImageURLs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participantMainImageURLs);
  }

  @override
  final int unreadCount;

  @override
  String toString() {
    return 'MessageRoom(id: $id, roomName: $roomName, lastSendAt: $lastSendAt, lastSendMessage: $lastSendMessage, hostMainImageURL: $hostMainImageURL, participantMainImageURLs: $participantMainImageURLs, unreadCount: $unreadCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageRoom &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.roomName, roomName) ||
                other.roomName == roomName) &&
            (identical(other.lastSendAt, lastSendAt) ||
                other.lastSendAt == lastSendAt) &&
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
      lastSendAt,
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
      {required final String id,
      required final String roomName,
      final DateTime? lastSendAt,
      final String? lastSendMessage,
      required final String hostMainImageURL,
      required final List<String> participantMainImageURLs,
      required final int unreadCount}) = _$_MessageRoom;

  factory _MessageRoom.fromJson(Map<String, dynamic> json) =
      _$_MessageRoom.fromJson;

  @override
  String get id;
  @override
  String get roomName;
  @override
  DateTime? get lastSendAt;
  @override
  String? get lastSendMessage;
  @override
  String get hostMainImageURL;
  @override
  List<String> get participantMainImageURLs;
  @override
  int get unreadCount;
  @override
  @JsonKey(ignore: true)
  _$$_MessageRoomCopyWith<_$_MessageRoom> get copyWith =>
      throw _privateConstructorUsedError;
}
