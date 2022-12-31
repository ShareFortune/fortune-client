// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_room_host.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageRoomHost _$MessageRoomHostFromJson(Map<String, dynamic> json) {
  return _MessageRoomHost.fromJson(json);
}

/// @nodoc
mixin _$MessageRoomHost {
  String get id => throw _privateConstructorUsedError;
  String get roomName => throw _privateConstructorUsedError;
  String get lastSendMessage => throw _privateConstructorUsedError;
  String get hostMainImageURL => throw _privateConstructorUsedError;
  List<String> get participantMainImageURLs =>
      throw _privateConstructorUsedError;
  int get unreadCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageRoomHostCopyWith<MessageRoomHost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageRoomHostCopyWith<$Res> {
  factory $MessageRoomHostCopyWith(
          MessageRoomHost value, $Res Function(MessageRoomHost) then) =
      _$MessageRoomHostCopyWithImpl<$Res, MessageRoomHost>;
  @useResult
  $Res call(
      {String id,
      String roomName,
      String lastSendMessage,
      String hostMainImageURL,
      List<String> participantMainImageURLs,
      int unreadCount});
}

/// @nodoc
class _$MessageRoomHostCopyWithImpl<$Res, $Val extends MessageRoomHost>
    implements $MessageRoomHostCopyWith<$Res> {
  _$MessageRoomHostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? roomName = null,
    Object? lastSendMessage = null,
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
      lastSendMessage: null == lastSendMessage
          ? _value.lastSendMessage
          : lastSendMessage // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_MessageRoomHostCopyWith<$Res>
    implements $MessageRoomHostCopyWith<$Res> {
  factory _$$_MessageRoomHostCopyWith(
          _$_MessageRoomHost value, $Res Function(_$_MessageRoomHost) then) =
      __$$_MessageRoomHostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String roomName,
      String lastSendMessage,
      String hostMainImageURL,
      List<String> participantMainImageURLs,
      int unreadCount});
}

/// @nodoc
class __$$_MessageRoomHostCopyWithImpl<$Res>
    extends _$MessageRoomHostCopyWithImpl<$Res, _$_MessageRoomHost>
    implements _$$_MessageRoomHostCopyWith<$Res> {
  __$$_MessageRoomHostCopyWithImpl(
      _$_MessageRoomHost _value, $Res Function(_$_MessageRoomHost) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? roomName = null,
    Object? lastSendMessage = null,
    Object? hostMainImageURL = null,
    Object? participantMainImageURLs = null,
    Object? unreadCount = null,
  }) {
    return _then(_$_MessageRoomHost(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      roomName: null == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      lastSendMessage: null == lastSendMessage
          ? _value.lastSendMessage
          : lastSendMessage // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_MessageRoomHost implements _MessageRoomHost {
  const _$_MessageRoomHost(
      {required this.id,
      required this.roomName,
      required this.lastSendMessage,
      required this.hostMainImageURL,
      required final List<String> participantMainImageURLs,
      required this.unreadCount})
      : _participantMainImageURLs = participantMainImageURLs;

  factory _$_MessageRoomHost.fromJson(Map<String, dynamic> json) =>
      _$$_MessageRoomHostFromJson(json);

  @override
  final String id;
  @override
  final String roomName;
  @override
  final String lastSendMessage;
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
    return 'MessageRoomHost(id: $id, roomName: $roomName, lastSendMessage: $lastSendMessage, hostMainImageURL: $hostMainImageURL, participantMainImageURLs: $participantMainImageURLs, unreadCount: $unreadCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageRoomHost &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.roomName, roomName) ||
                other.roomName == roomName) &&
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
      lastSendMessage,
      hostMainImageURL,
      const DeepCollectionEquality().hash(_participantMainImageURLs),
      unreadCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageRoomHostCopyWith<_$_MessageRoomHost> get copyWith =>
      __$$_MessageRoomHostCopyWithImpl<_$_MessageRoomHost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageRoomHostToJson(
      this,
    );
  }
}

abstract class _MessageRoomHost implements MessageRoomHost {
  const factory _MessageRoomHost(
      {required final String id,
      required final String roomName,
      required final String lastSendMessage,
      required final String hostMainImageURL,
      required final List<String> participantMainImageURLs,
      required final int unreadCount}) = _$_MessageRoomHost;

  factory _MessageRoomHost.fromJson(Map<String, dynamic> json) =
      _$_MessageRoomHost.fromJson;

  @override
  String get id;
  @override
  String get roomName;
  @override
  String get lastSendMessage;
  @override
  String get hostMainImageURL;
  @override
  List<String> get participantMainImageURLs;
  @override
  int get unreadCount;
  @override
  @JsonKey(ignore: true)
  _$$_MessageRoomHostCopyWith<_$_MessageRoomHost> get copyWith =>
      throw _privateConstructorUsedError;
}
