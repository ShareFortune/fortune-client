// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_room.dart';

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
  String get id => throw _privateConstructorUsedError;
  String get roomId => throw _privateConstructorUsedError;
  List<String> get userIds => throw _privateConstructorUsedError;
  RoomStatus get status => throw _privateConstructorUsedError;

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
      {String id, String roomId, List<String> userIds, RoomStatus status});
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
    Object? roomId = null,
    Object? userIds = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      userIds: null == userIds
          ? _value.userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RoomStatus,
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
      {String id, String roomId, List<String> userIds, RoomStatus status});
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
    Object? roomId = null,
    Object? userIds = null,
    Object? status = null,
  }) {
    return _then(_$_MessageRoom(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      userIds: null == userIds
          ? _value._userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RoomStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageRoom implements _MessageRoom {
  const _$_MessageRoom(
      {required this.id,
      required this.roomId,
      required final List<String> userIds,
      required this.status})
      : _userIds = userIds;

  factory _$_MessageRoom.fromJson(Map<String, dynamic> json) =>
      _$$_MessageRoomFromJson(json);

  @override
  final String id;
  @override
  final String roomId;
  final List<String> _userIds;
  @override
  List<String> get userIds {
    if (_userIds is EqualUnmodifiableListView) return _userIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userIds);
  }

  @override
  final RoomStatus status;

  @override
  String toString() {
    return 'MessageRoom(id: $id, roomId: $roomId, userIds: $userIds, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageRoom &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            const DeepCollectionEquality().equals(other._userIds, _userIds) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, roomId,
      const DeepCollectionEquality().hash(_userIds), status);

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
      required final String roomId,
      required final List<String> userIds,
      required final RoomStatus status}) = _$_MessageRoom;

  factory _MessageRoom.fromJson(Map<String, dynamic> json) =
      _$_MessageRoom.fromJson;

  @override
  String get id;
  @override
  String get roomId;
  @override
  List<String> get userIds;
  @override
  RoomStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_MessageRoomCopyWith<_$_MessageRoom> get copyWith =>
      throw _privateConstructorUsedError;
}
