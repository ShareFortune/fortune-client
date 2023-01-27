// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'participant_room_as_host.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ParticipantRoomAsHost _$ParticipantRoomAsHostFromJson(
    Map<String, dynamic> json) {
  return _ParticipantRoomAsHost.fromJson(json);
}

/// @nodoc
mixin _$ParticipantRoomAsHost {
  /// ルームID
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;

  /// ルームネーム
  @JsonKey(name: "roomName")
  String get roomName => throw _privateConstructorUsedError;

  /// メンバー画像リスト
  @JsonKey(name: "participantMainImageURLs")
  List<String>? get participantMainImageURLs =>
      throw _privateConstructorUsedError;

  /// 開催地
  @JsonKey(name: "address")
  Address get address => throw _privateConstructorUsedError;

  /// 参加人数
  @JsonKey(name: "membersNum")
  MembersNum get membersNum => throw _privateConstructorUsedError;

  /// リクエストカウント
  @JsonKey(name: "joinRequestsCount")
  int get joinRequestsCount => throw _privateConstructorUsedError;

  /// ステータス
  @JsonKey(name: "status")
  @RoomStatusConverter()
  RoomStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParticipantRoomAsHostCopyWith<ParticipantRoomAsHost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipantRoomAsHostCopyWith<$Res> {
  factory $ParticipantRoomAsHostCopyWith(ParticipantRoomAsHost value,
          $Res Function(ParticipantRoomAsHost) then) =
      _$ParticipantRoomAsHostCopyWithImpl<$Res, ParticipantRoomAsHost>;
  @useResult
  $Res call(
      {@JsonKey(name: "id")
          String id,
      @JsonKey(name: "roomName")
          String roomName,
      @JsonKey(name: "participantMainImageURLs")
          List<String>? participantMainImageURLs,
      @JsonKey(name: "address")
          Address address,
      @JsonKey(name: "membersNum")
          MembersNum membersNum,
      @JsonKey(name: "joinRequestsCount")
          int joinRequestsCount,
      @JsonKey(name: "status")
      @RoomStatusConverter()
          RoomStatus status});

  $AddressCopyWith<$Res> get address;
  $MembersNumCopyWith<$Res> get membersNum;
}

/// @nodoc
class _$ParticipantRoomAsHostCopyWithImpl<$Res,
        $Val extends ParticipantRoomAsHost>
    implements $ParticipantRoomAsHostCopyWith<$Res> {
  _$ParticipantRoomAsHostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? roomName = null,
    Object? participantMainImageURLs = freezed,
    Object? address = null,
    Object? membersNum = null,
    Object? joinRequestsCount = null,
    Object? status = null,
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
      participantMainImageURLs: freezed == participantMainImageURLs
          ? _value.participantMainImageURLs
          : participantMainImageURLs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      membersNum: null == membersNum
          ? _value.membersNum
          : membersNum // ignore: cast_nullable_to_non_nullable
              as MembersNum,
      joinRequestsCount: null == joinRequestsCount
          ? _value.joinRequestsCount
          : joinRequestsCount // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RoomStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MembersNumCopyWith<$Res> get membersNum {
    return $MembersNumCopyWith<$Res>(_value.membersNum, (value) {
      return _then(_value.copyWith(membersNum: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ParticipantRoomAsHostCopyWith<$Res>
    implements $ParticipantRoomAsHostCopyWith<$Res> {
  factory _$$_ParticipantRoomAsHostCopyWith(_$_ParticipantRoomAsHost value,
          $Res Function(_$_ParticipantRoomAsHost) then) =
      __$$_ParticipantRoomAsHostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id")
          String id,
      @JsonKey(name: "roomName")
          String roomName,
      @JsonKey(name: "participantMainImageURLs")
          List<String>? participantMainImageURLs,
      @JsonKey(name: "address")
          Address address,
      @JsonKey(name: "membersNum")
          MembersNum membersNum,
      @JsonKey(name: "joinRequestsCount")
          int joinRequestsCount,
      @JsonKey(name: "status")
      @RoomStatusConverter()
          RoomStatus status});

  @override
  $AddressCopyWith<$Res> get address;
  @override
  $MembersNumCopyWith<$Res> get membersNum;
}

/// @nodoc
class __$$_ParticipantRoomAsHostCopyWithImpl<$Res>
    extends _$ParticipantRoomAsHostCopyWithImpl<$Res, _$_ParticipantRoomAsHost>
    implements _$$_ParticipantRoomAsHostCopyWith<$Res> {
  __$$_ParticipantRoomAsHostCopyWithImpl(_$_ParticipantRoomAsHost _value,
      $Res Function(_$_ParticipantRoomAsHost) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? roomName = null,
    Object? participantMainImageURLs = freezed,
    Object? address = null,
    Object? membersNum = null,
    Object? joinRequestsCount = null,
    Object? status = null,
  }) {
    return _then(_$_ParticipantRoomAsHost(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      roomName: null == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      participantMainImageURLs: freezed == participantMainImageURLs
          ? _value._participantMainImageURLs
          : participantMainImageURLs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      membersNum: null == membersNum
          ? _value.membersNum
          : membersNum // ignore: cast_nullable_to_non_nullable
              as MembersNum,
      joinRequestsCount: null == joinRequestsCount
          ? _value.joinRequestsCount
          : joinRequestsCount // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RoomStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ParticipantRoomAsHost implements _ParticipantRoomAsHost {
  const _$_ParticipantRoomAsHost(
      {@JsonKey(name: "id")
          required this.id,
      @JsonKey(name: "roomName")
          required this.roomName,
      @JsonKey(name: "participantMainImageURLs")
          required final List<String>? participantMainImageURLs,
      @JsonKey(name: "address")
          required this.address,
      @JsonKey(name: "membersNum")
          required this.membersNum,
      @JsonKey(name: "joinRequestsCount")
          required this.joinRequestsCount,
      @JsonKey(name: "status")
      @RoomStatusConverter()
          required this.status})
      : _participantMainImageURLs = participantMainImageURLs;

  factory _$_ParticipantRoomAsHost.fromJson(Map<String, dynamic> json) =>
      _$$_ParticipantRoomAsHostFromJson(json);

  /// ルームID
  @override
  @JsonKey(name: "id")
  final String id;

  /// ルームネーム
  @override
  @JsonKey(name: "roomName")
  final String roomName;

  /// メンバー画像リスト
  final List<String>? _participantMainImageURLs;

  /// メンバー画像リスト
  @override
  @JsonKey(name: "participantMainImageURLs")
  List<String>? get participantMainImageURLs {
    final value = _participantMainImageURLs;
    if (value == null) return null;
    if (_participantMainImageURLs is EqualUnmodifiableListView)
      return _participantMainImageURLs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// 開催地
  @override
  @JsonKey(name: "address")
  final Address address;

  /// 参加人数
  @override
  @JsonKey(name: "membersNum")
  final MembersNum membersNum;

  /// リクエストカウント
  @override
  @JsonKey(name: "joinRequestsCount")
  final int joinRequestsCount;

  /// ステータス
  @override
  @JsonKey(name: "status")
  @RoomStatusConverter()
  final RoomStatus status;

  @override
  String toString() {
    return 'ParticipantRoomAsHost(id: $id, roomName: $roomName, participantMainImageURLs: $participantMainImageURLs, address: $address, membersNum: $membersNum, joinRequestsCount: $joinRequestsCount, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParticipantRoomAsHost &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.roomName, roomName) ||
                other.roomName == roomName) &&
            const DeepCollectionEquality().equals(
                other._participantMainImageURLs, _participantMainImageURLs) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.membersNum, membersNum) ||
                other.membersNum == membersNum) &&
            (identical(other.joinRequestsCount, joinRequestsCount) ||
                other.joinRequestsCount == joinRequestsCount) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      roomName,
      const DeepCollectionEquality().hash(_participantMainImageURLs),
      address,
      membersNum,
      joinRequestsCount,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParticipantRoomAsHostCopyWith<_$_ParticipantRoomAsHost> get copyWith =>
      __$$_ParticipantRoomAsHostCopyWithImpl<_$_ParticipantRoomAsHost>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParticipantRoomAsHostToJson(
      this,
    );
  }
}

abstract class _ParticipantRoomAsHost implements ParticipantRoomAsHost {
  const factory _ParticipantRoomAsHost(
      {@JsonKey(name: "id")
          required final String id,
      @JsonKey(name: "roomName")
          required final String roomName,
      @JsonKey(name: "participantMainImageURLs")
          required final List<String>? participantMainImageURLs,
      @JsonKey(name: "address")
          required final Address address,
      @JsonKey(name: "membersNum")
          required final MembersNum membersNum,
      @JsonKey(name: "joinRequestsCount")
          required final int joinRequestsCount,
      @JsonKey(name: "status")
      @RoomStatusConverter()
          required final RoomStatus status}) = _$_ParticipantRoomAsHost;

  factory _ParticipantRoomAsHost.fromJson(Map<String, dynamic> json) =
      _$_ParticipantRoomAsHost.fromJson;

  @override

  /// ルームID
  @JsonKey(name: "id")
  String get id;
  @override

  /// ルームネーム
  @JsonKey(name: "roomName")
  String get roomName;
  @override

  /// メンバー画像リスト
  @JsonKey(name: "participantMainImageURLs")
  List<String>? get participantMainImageURLs;
  @override

  /// 開催地
  @JsonKey(name: "address")
  Address get address;
  @override

  /// 参加人数
  @JsonKey(name: "membersNum")
  MembersNum get membersNum;
  @override

  /// リクエストカウント
  @JsonKey(name: "joinRequestsCount")
  int get joinRequestsCount;
  @override

  /// ステータス
  @JsonKey(name: "status")
  @RoomStatusConverter()
  RoomStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_ParticipantRoomAsHostCopyWith<_$_ParticipantRoomAsHost> get copyWith =>
      throw _privateConstructorUsedError;
}
