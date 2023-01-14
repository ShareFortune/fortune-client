// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'participant_room_as_guest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ParticipantRoomAsGuest _$ParticipantRoomAsGuestFromJson(
    Map<String, dynamic> json) {
  return _ParticipantRoomAsGuest.fromJson(json);
}

/// @nodoc
mixin _$ParticipantRoomAsGuest {
  /// ルームID
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;

  /// ルームネーム
  @JsonKey(name: "roomName")
  String get roomName => throw _privateConstructorUsedError;

  /// ホストアイコン
  @JsonKey(name: "hostMainImageURL")
  String get hostMainImageURL => throw _privateConstructorUsedError;

  /// メンバーアイコンリスト
  @JsonKey(name: "participantMainImageURLs")
  List<String>? get participantMainImageURLs =>
      throw _privateConstructorUsedError;

  /// 開催地
  @JsonKey(name: "address")
  Address get address => throw _privateConstructorUsedError;

  /// 参加人数
  @JsonKey(name: "membersNum")
  MembersNum get membersNum => throw _privateConstructorUsedError;

  /// ステータス
  @JsonKey(name: "roomStatus")
  @RoomStatusEnumConverter()
  RoomStatus get roomStatus => throw _privateConstructorUsedError;

  /// ステータス
  @JsonKey(name: "joinRequestStatus")
  @RoomJoinRequestStatusEnumConverter()
  RoomJoinRequestStatus get joinRequestStatus =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParticipantRoomAsGuestCopyWith<ParticipantRoomAsGuest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipantRoomAsGuestCopyWith<$Res> {
  factory $ParticipantRoomAsGuestCopyWith(ParticipantRoomAsGuest value,
          $Res Function(ParticipantRoomAsGuest) then) =
      _$ParticipantRoomAsGuestCopyWithImpl<$Res, ParticipantRoomAsGuest>;
  @useResult
  $Res call(
      {@JsonKey(name: "id")
          String id,
      @JsonKey(name: "roomName")
          String roomName,
      @JsonKey(name: "hostMainImageURL")
          String hostMainImageURL,
      @JsonKey(name: "participantMainImageURLs")
          List<String>? participantMainImageURLs,
      @JsonKey(name: "address")
          Address address,
      @JsonKey(name: "membersNum")
          MembersNum membersNum,
      @JsonKey(name: "roomStatus")
      @RoomStatusEnumConverter()
          RoomStatus roomStatus,
      @JsonKey(name: "joinRequestStatus")
      @RoomJoinRequestStatusEnumConverter()
          RoomJoinRequestStatus joinRequestStatus});

  $AddressCopyWith<$Res> get address;
  $MembersNumCopyWith<$Res> get membersNum;
}

/// @nodoc
class _$ParticipantRoomAsGuestCopyWithImpl<$Res,
        $Val extends ParticipantRoomAsGuest>
    implements $ParticipantRoomAsGuestCopyWith<$Res> {
  _$ParticipantRoomAsGuestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? roomName = null,
    Object? hostMainImageURL = null,
    Object? participantMainImageURLs = freezed,
    Object? address = null,
    Object? membersNum = null,
    Object? roomStatus = null,
    Object? joinRequestStatus = null,
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
      hostMainImageURL: null == hostMainImageURL
          ? _value.hostMainImageURL
          : hostMainImageURL // ignore: cast_nullable_to_non_nullable
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
      roomStatus: null == roomStatus
          ? _value.roomStatus
          : roomStatus // ignore: cast_nullable_to_non_nullable
              as RoomStatus,
      joinRequestStatus: null == joinRequestStatus
          ? _value.joinRequestStatus
          : joinRequestStatus // ignore: cast_nullable_to_non_nullable
              as RoomJoinRequestStatus,
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
abstract class _$$_ParticipantRoomAsGuestCopyWith<$Res>
    implements $ParticipantRoomAsGuestCopyWith<$Res> {
  factory _$$_ParticipantRoomAsGuestCopyWith(_$_ParticipantRoomAsGuest value,
          $Res Function(_$_ParticipantRoomAsGuest) then) =
      __$$_ParticipantRoomAsGuestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id")
          String id,
      @JsonKey(name: "roomName")
          String roomName,
      @JsonKey(name: "hostMainImageURL")
          String hostMainImageURL,
      @JsonKey(name: "participantMainImageURLs")
          List<String>? participantMainImageURLs,
      @JsonKey(name: "address")
          Address address,
      @JsonKey(name: "membersNum")
          MembersNum membersNum,
      @JsonKey(name: "roomStatus")
      @RoomStatusEnumConverter()
          RoomStatus roomStatus,
      @JsonKey(name: "joinRequestStatus")
      @RoomJoinRequestStatusEnumConverter()
          RoomJoinRequestStatus joinRequestStatus});

  @override
  $AddressCopyWith<$Res> get address;
  @override
  $MembersNumCopyWith<$Res> get membersNum;
}

/// @nodoc
class __$$_ParticipantRoomAsGuestCopyWithImpl<$Res>
    extends _$ParticipantRoomAsGuestCopyWithImpl<$Res,
        _$_ParticipantRoomAsGuest>
    implements _$$_ParticipantRoomAsGuestCopyWith<$Res> {
  __$$_ParticipantRoomAsGuestCopyWithImpl(_$_ParticipantRoomAsGuest _value,
      $Res Function(_$_ParticipantRoomAsGuest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? roomName = null,
    Object? hostMainImageURL = null,
    Object? participantMainImageURLs = freezed,
    Object? address = null,
    Object? membersNum = null,
    Object? roomStatus = null,
    Object? joinRequestStatus = null,
  }) {
    return _then(_$_ParticipantRoomAsGuest(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      roomName: null == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      hostMainImageURL: null == hostMainImageURL
          ? _value.hostMainImageURL
          : hostMainImageURL // ignore: cast_nullable_to_non_nullable
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
      roomStatus: null == roomStatus
          ? _value.roomStatus
          : roomStatus // ignore: cast_nullable_to_non_nullable
              as RoomStatus,
      joinRequestStatus: null == joinRequestStatus
          ? _value.joinRequestStatus
          : joinRequestStatus // ignore: cast_nullable_to_non_nullable
              as RoomJoinRequestStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ParticipantRoomAsGuest implements _ParticipantRoomAsGuest {
  const _$_ParticipantRoomAsGuest(
      {@JsonKey(name: "id")
          required this.id,
      @JsonKey(name: "roomName")
          required this.roomName,
      @JsonKey(name: "hostMainImageURL")
          required this.hostMainImageURL,
      @JsonKey(name: "participantMainImageURLs")
          required final List<String>? participantMainImageURLs,
      @JsonKey(name: "address")
          required this.address,
      @JsonKey(name: "membersNum")
          required this.membersNum,
      @JsonKey(name: "roomStatus")
      @RoomStatusEnumConverter()
          required this.roomStatus,
      @JsonKey(name: "joinRequestStatus")
      @RoomJoinRequestStatusEnumConverter()
          required this.joinRequestStatus})
      : _participantMainImageURLs = participantMainImageURLs;

  factory _$_ParticipantRoomAsGuest.fromJson(Map<String, dynamic> json) =>
      _$$_ParticipantRoomAsGuestFromJson(json);

  /// ルームID
  @override
  @JsonKey(name: "id")
  final String id;

  /// ルームネーム
  @override
  @JsonKey(name: "roomName")
  final String roomName;

  /// ホストアイコン
  @override
  @JsonKey(name: "hostMainImageURL")
  final String hostMainImageURL;

  /// メンバーアイコンリスト
  final List<String>? _participantMainImageURLs;

  /// メンバーアイコンリスト
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

  /// ステータス
  @override
  @JsonKey(name: "roomStatus")
  @RoomStatusEnumConverter()
  final RoomStatus roomStatus;

  /// ステータス
  @override
  @JsonKey(name: "joinRequestStatus")
  @RoomJoinRequestStatusEnumConverter()
  final RoomJoinRequestStatus joinRequestStatus;

  @override
  String toString() {
    return 'ParticipantRoomAsGuest(id: $id, roomName: $roomName, hostMainImageURL: $hostMainImageURL, participantMainImageURLs: $participantMainImageURLs, address: $address, membersNum: $membersNum, roomStatus: $roomStatus, joinRequestStatus: $joinRequestStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParticipantRoomAsGuest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.roomName, roomName) ||
                other.roomName == roomName) &&
            (identical(other.hostMainImageURL, hostMainImageURL) ||
                other.hostMainImageURL == hostMainImageURL) &&
            const DeepCollectionEquality().equals(
                other._participantMainImageURLs, _participantMainImageURLs) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.membersNum, membersNum) ||
                other.membersNum == membersNum) &&
            (identical(other.roomStatus, roomStatus) ||
                other.roomStatus == roomStatus) &&
            (identical(other.joinRequestStatus, joinRequestStatus) ||
                other.joinRequestStatus == joinRequestStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      roomName,
      hostMainImageURL,
      const DeepCollectionEquality().hash(_participantMainImageURLs),
      address,
      membersNum,
      roomStatus,
      joinRequestStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParticipantRoomAsGuestCopyWith<_$_ParticipantRoomAsGuest> get copyWith =>
      __$$_ParticipantRoomAsGuestCopyWithImpl<_$_ParticipantRoomAsGuest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParticipantRoomAsGuestToJson(
      this,
    );
  }
}

abstract class _ParticipantRoomAsGuest implements ParticipantRoomAsGuest {
  const factory _ParticipantRoomAsGuest(
          {@JsonKey(name: "id")
              required final String id,
          @JsonKey(name: "roomName")
              required final String roomName,
          @JsonKey(name: "hostMainImageURL")
              required final String hostMainImageURL,
          @JsonKey(name: "participantMainImageURLs")
              required final List<String>? participantMainImageURLs,
          @JsonKey(name: "address")
              required final Address address,
          @JsonKey(name: "membersNum")
              required final MembersNum membersNum,
          @JsonKey(name: "roomStatus")
          @RoomStatusEnumConverter()
              required final RoomStatus roomStatus,
          @JsonKey(name: "joinRequestStatus")
          @RoomJoinRequestStatusEnumConverter()
              required final RoomJoinRequestStatus joinRequestStatus}) =
      _$_ParticipantRoomAsGuest;

  factory _ParticipantRoomAsGuest.fromJson(Map<String, dynamic> json) =
      _$_ParticipantRoomAsGuest.fromJson;

  @override

  /// ルームID
  @JsonKey(name: "id")
  String get id;
  @override

  /// ルームネーム
  @JsonKey(name: "roomName")
  String get roomName;
  @override

  /// ホストアイコン
  @JsonKey(name: "hostMainImageURL")
  String get hostMainImageURL;
  @override

  /// メンバーアイコンリスト
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

  /// ステータス
  @JsonKey(name: "roomStatus")
  @RoomStatusEnumConverter()
  RoomStatus get roomStatus;
  @override

  /// ステータス
  @JsonKey(name: "joinRequestStatus")
  @RoomJoinRequestStatusEnumConverter()
  RoomJoinRequestStatus get joinRequestStatus;
  @override
  @JsonKey(ignore: true)
  _$$_ParticipantRoomAsGuestCopyWith<_$_ParticipantRoomAsGuest> get copyWith =>
      throw _privateConstructorUsedError;
}
