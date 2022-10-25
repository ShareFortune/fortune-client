// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Room _$RoomFromJson(Map<String, dynamic> json) {
  return _Room.fromJson(json);
}

/// @nodoc
mixin _$Room {
  /// ルームID
  String? get id => throw _privateConstructorUsedError;

  /// ルームネーム
  String get name => throw _privateConstructorUsedError;

  /// 開催者
  Member get hostUser => throw _privateConstructorUsedError;

  /// ルームのステータス
  RoomStatus get roomStatus => throw _privateConstructorUsedError;

  /// 作成日時
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// 参加メンバー
  List<Member> get members => throw _privateConstructorUsedError;

  /// 設定タグ
  List<Tag> get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomCopyWith<Room> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomCopyWith<$Res> {
  factory $RoomCopyWith(Room value, $Res Function(Room) then) =
      _$RoomCopyWithImpl<$Res, Room>;
  @useResult
  $Res call(
      {String? id,
      String name,
      Member hostUser,
      RoomStatus roomStatus,
      DateTime createdAt,
      List<Member> members,
      List<Tag> tags});

  $MemberCopyWith<$Res> get hostUser;
}

/// @nodoc
class _$RoomCopyWithImpl<$Res, $Val extends Room>
    implements $RoomCopyWith<$Res> {
  _$RoomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? hostUser = null,
    Object? roomStatus = null,
    Object? createdAt = null,
    Object? members = null,
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hostUser: null == hostUser
          ? _value.hostUser
          : hostUser // ignore: cast_nullable_to_non_nullable
              as Member,
      roomStatus: null == roomStatus
          ? _value.roomStatus
          : roomStatus // ignore: cast_nullable_to_non_nullable
              as RoomStatus,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Member>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MemberCopyWith<$Res> get hostUser {
    return $MemberCopyWith<$Res>(_value.hostUser, (value) {
      return _then(_value.copyWith(hostUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RoomCopyWith<$Res> implements $RoomCopyWith<$Res> {
  factory _$$_RoomCopyWith(_$_Room value, $Res Function(_$_Room) then) =
      __$$_RoomCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String name,
      Member hostUser,
      RoomStatus roomStatus,
      DateTime createdAt,
      List<Member> members,
      List<Tag> tags});

  @override
  $MemberCopyWith<$Res> get hostUser;
}

/// @nodoc
class __$$_RoomCopyWithImpl<$Res> extends _$RoomCopyWithImpl<$Res, _$_Room>
    implements _$$_RoomCopyWith<$Res> {
  __$$_RoomCopyWithImpl(_$_Room _value, $Res Function(_$_Room) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? hostUser = null,
    Object? roomStatus = null,
    Object? createdAt = null,
    Object? members = null,
    Object? tags = null,
  }) {
    return _then(_$_Room(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hostUser: null == hostUser
          ? _value.hostUser
          : hostUser // ignore: cast_nullable_to_non_nullable
              as Member,
      roomStatus: null == roomStatus
          ? _value.roomStatus
          : roomStatus // ignore: cast_nullable_to_non_nullable
              as RoomStatus,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Member>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Room implements _Room {
  const _$_Room(
      {required this.id,
      required this.name,
      required this.hostUser,
      required this.roomStatus,
      required this.createdAt,
      required final List<Member> members,
      required final List<Tag> tags})
      : _members = members,
        _tags = tags;

  factory _$_Room.fromJson(Map<String, dynamic> json) => _$$_RoomFromJson(json);

  /// ルームID
  @override
  final String? id;

  /// ルームネーム
  @override
  final String name;

  /// 開催者
  @override
  final Member hostUser;

  /// ルームのステータス
  @override
  final RoomStatus roomStatus;

  /// 作成日時
  @override
  final DateTime createdAt;

  /// 参加メンバー
  final List<Member> _members;

  /// 参加メンバー
  @override
  List<Member> get members {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  /// 設定タグ
  final List<Tag> _tags;

  /// 設定タグ
  @override
  List<Tag> get tags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'Room(id: $id, name: $name, hostUser: $hostUser, roomStatus: $roomStatus, createdAt: $createdAt, members: $members, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Room &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.hostUser, hostUser) ||
                other.hostUser == hostUser) &&
            (identical(other.roomStatus, roomStatus) ||
                other.roomStatus == roomStatus) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      hostUser,
      roomStatus,
      createdAt,
      const DeepCollectionEquality().hash(_members),
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomCopyWith<_$_Room> get copyWith =>
      __$$_RoomCopyWithImpl<_$_Room>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomToJson(
      this,
    );
  }
}

abstract class _Room implements Room {
  const factory _Room(
      {required final String? id,
      required final String name,
      required final Member hostUser,
      required final RoomStatus roomStatus,
      required final DateTime createdAt,
      required final List<Member> members,
      required final List<Tag> tags}) = _$_Room;

  factory _Room.fromJson(Map<String, dynamic> json) = _$_Room.fromJson;

  @override

  /// ルームID
  String? get id;
  @override

  /// ルームネーム
  String get name;
  @override

  /// 開催者
  Member get hostUser;
  @override

  /// ルームのステータス
  RoomStatus get roomStatus;
  @override

  /// 作成日時
  DateTime get createdAt;
  @override

  /// 参加メンバー
  List<Member> get members;
  @override

  /// 設定タグ
  List<Tag> get tags;
  @override
  @JsonKey(ignore: true)
  _$$_RoomCopyWith<_$_Room> get copyWith => throw _privateConstructorUsedError;
}
