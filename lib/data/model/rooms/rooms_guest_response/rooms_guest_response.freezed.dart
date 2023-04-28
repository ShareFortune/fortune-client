// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rooms_guest_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoomsGuestResponse _$RoomsGuestResponseFromJson(Map<String, dynamic> json) {
  return _RoomsGuestResponse.fromJson(json);
}

/// @nodoc
mixin _$RoomsGuestResponse {
  String get nextToken => throw _privateConstructorUsedError;
  List<RoomsGuestResponseRoom> get rooms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomsGuestResponseCopyWith<RoomsGuestResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomsGuestResponseCopyWith<$Res> {
  factory $RoomsGuestResponseCopyWith(
          RoomsGuestResponse value, $Res Function(RoomsGuestResponse) then) =
      _$RoomsGuestResponseCopyWithImpl<$Res, RoomsGuestResponse>;
  @useResult
  $Res call({String nextToken, List<RoomsGuestResponseRoom> rooms});
}

/// @nodoc
class _$RoomsGuestResponseCopyWithImpl<$Res, $Val extends RoomsGuestResponse>
    implements $RoomsGuestResponseCopyWith<$Res> {
  _$RoomsGuestResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextToken = null,
    Object? rooms = null,
  }) {
    return _then(_value.copyWith(
      nextToken: null == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String,
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomsGuestResponseRoom>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoomsGuestResponseCopyWith<$Res>
    implements $RoomsGuestResponseCopyWith<$Res> {
  factory _$$_RoomsGuestResponseCopyWith(_$_RoomsGuestResponse value,
          $Res Function(_$_RoomsGuestResponse) then) =
      __$$_RoomsGuestResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nextToken, List<RoomsGuestResponseRoom> rooms});
}

/// @nodoc
class __$$_RoomsGuestResponseCopyWithImpl<$Res>
    extends _$RoomsGuestResponseCopyWithImpl<$Res, _$_RoomsGuestResponse>
    implements _$$_RoomsGuestResponseCopyWith<$Res> {
  __$$_RoomsGuestResponseCopyWithImpl(
      _$_RoomsGuestResponse _value, $Res Function(_$_RoomsGuestResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextToken = null,
    Object? rooms = null,
  }) {
    return _then(_$_RoomsGuestResponse(
      nextToken: null == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String,
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomsGuestResponseRoom>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoomsGuestResponse implements _RoomsGuestResponse {
  const _$_RoomsGuestResponse(
      {required this.nextToken,
      required final List<RoomsGuestResponseRoom> rooms})
      : _rooms = rooms;

  factory _$_RoomsGuestResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RoomsGuestResponseFromJson(json);

  @override
  final String nextToken;
  final List<RoomsGuestResponseRoom> _rooms;
  @override
  List<RoomsGuestResponseRoom> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  String toString() {
    return 'RoomsGuestResponse(nextToken: $nextToken, rooms: $rooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomsGuestResponse &&
            (identical(other.nextToken, nextToken) ||
                other.nextToken == nextToken) &&
            const DeepCollectionEquality().equals(other._rooms, _rooms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, nextToken, const DeepCollectionEquality().hash(_rooms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomsGuestResponseCopyWith<_$_RoomsGuestResponse> get copyWith =>
      __$$_RoomsGuestResponseCopyWithImpl<_$_RoomsGuestResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomsGuestResponseToJson(
      this,
    );
  }
}

abstract class _RoomsGuestResponse implements RoomsGuestResponse {
  const factory _RoomsGuestResponse(
          {required final String nextToken,
          required final List<RoomsGuestResponseRoom> rooms}) =
      _$_RoomsGuestResponse;

  factory _RoomsGuestResponse.fromJson(Map<String, dynamic> json) =
      _$_RoomsGuestResponse.fromJson;

  @override
  String get nextToken;
  @override
  List<RoomsGuestResponseRoom> get rooms;
  @override
  @JsonKey(ignore: true)
  _$$_RoomsGuestResponseCopyWith<_$_RoomsGuestResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

RoomsGuestResponseRoom _$RoomsGuestResponseRoomFromJson(
    Map<String, dynamic> json) {
  return _GetV1RoomsGuestResponseRoom.fromJson(json);
}

/// @nodoc
mixin _$RoomsGuestResponseRoom {
  /// ルームID
  String get id => throw _privateConstructorUsedError;

  /// ルームネーム
  String get roomName => throw _privateConstructorUsedError;

  /// ホストアイコン
  String get hostMainImageURL => throw _privateConstructorUsedError;

  /// メンバーアイコンリスト
  List<String>? get participantMainImageURLs =>
      throw _privateConstructorUsedError;

  /// 開催地
  Address get address => throw _privateConstructorUsedError;

  /// 参加人数
  MembersNum get membersNum => throw _privateConstructorUsedError;

  /// ルームステータス
  @RoomStatusConverter()
  RoomStatus get roomStatus => throw _privateConstructorUsedError;

  /// 参加申請リクエストのステータス
  @JoinRequestStatusConverter()
  JoinRequestStatus get joinRequestStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomsGuestResponseRoomCopyWith<RoomsGuestResponseRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomsGuestResponseRoomCopyWith<$Res> {
  factory $RoomsGuestResponseRoomCopyWith(RoomsGuestResponseRoom value,
          $Res Function(RoomsGuestResponseRoom) then) =
      _$RoomsGuestResponseRoomCopyWithImpl<$Res, RoomsGuestResponseRoom>;
  @useResult
  $Res call(
      {String id,
      String roomName,
      String hostMainImageURL,
      List<String>? participantMainImageURLs,
      Address address,
      MembersNum membersNum,
      @RoomStatusConverter() RoomStatus roomStatus,
      @JoinRequestStatusConverter() JoinRequestStatus joinRequestStatus});

  $AddressCopyWith<$Res> get address;
  $MembersNumCopyWith<$Res> get membersNum;
}

/// @nodoc
class _$RoomsGuestResponseRoomCopyWithImpl<$Res,
        $Val extends RoomsGuestResponseRoom>
    implements $RoomsGuestResponseRoomCopyWith<$Res> {
  _$RoomsGuestResponseRoomCopyWithImpl(this._value, this._then);

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
              as JoinRequestStatus,
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
abstract class _$$_GetV1RoomsGuestResponseRoomCopyWith<$Res>
    implements $RoomsGuestResponseRoomCopyWith<$Res> {
  factory _$$_GetV1RoomsGuestResponseRoomCopyWith(
          _$_GetV1RoomsGuestResponseRoom value,
          $Res Function(_$_GetV1RoomsGuestResponseRoom) then) =
      __$$_GetV1RoomsGuestResponseRoomCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String roomName,
      String hostMainImageURL,
      List<String>? participantMainImageURLs,
      Address address,
      MembersNum membersNum,
      @RoomStatusConverter() RoomStatus roomStatus,
      @JoinRequestStatusConverter() JoinRequestStatus joinRequestStatus});

  @override
  $AddressCopyWith<$Res> get address;
  @override
  $MembersNumCopyWith<$Res> get membersNum;
}

/// @nodoc
class __$$_GetV1RoomsGuestResponseRoomCopyWithImpl<$Res>
    extends _$RoomsGuestResponseRoomCopyWithImpl<$Res,
        _$_GetV1RoomsGuestResponseRoom>
    implements _$$_GetV1RoomsGuestResponseRoomCopyWith<$Res> {
  __$$_GetV1RoomsGuestResponseRoomCopyWithImpl(
      _$_GetV1RoomsGuestResponseRoom _value,
      $Res Function(_$_GetV1RoomsGuestResponseRoom) _then)
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
    return _then(_$_GetV1RoomsGuestResponseRoom(
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
              as JoinRequestStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetV1RoomsGuestResponseRoom implements _GetV1RoomsGuestResponseRoom {
  const _$_GetV1RoomsGuestResponseRoom(
      {required this.id,
      required this.roomName,
      required this.hostMainImageURL,
      final List<String>? participantMainImageURLs,
      required this.address,
      required this.membersNum,
      @RoomStatusConverter() required this.roomStatus,
      @JoinRequestStatusConverter() required this.joinRequestStatus})
      : _participantMainImageURLs = participantMainImageURLs;

  factory _$_GetV1RoomsGuestResponseRoom.fromJson(Map<String, dynamic> json) =>
      _$$_GetV1RoomsGuestResponseRoomFromJson(json);

  /// ルームID
  @override
  final String id;

  /// ルームネーム
  @override
  final String roomName;

  /// ホストアイコン
  @override
  final String hostMainImageURL;

  /// メンバーアイコンリスト
  final List<String>? _participantMainImageURLs;

  /// メンバーアイコンリスト
  @override
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
  final Address address;

  /// 参加人数
  @override
  final MembersNum membersNum;

  /// ルームステータス
  @override
  @RoomStatusConverter()
  final RoomStatus roomStatus;

  /// 参加申請リクエストのステータス
  @override
  @JoinRequestStatusConverter()
  final JoinRequestStatus joinRequestStatus;

  @override
  String toString() {
    return 'RoomsGuestResponseRoom(id: $id, roomName: $roomName, hostMainImageURL: $hostMainImageURL, participantMainImageURLs: $participantMainImageURLs, address: $address, membersNum: $membersNum, roomStatus: $roomStatus, joinRequestStatus: $joinRequestStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetV1RoomsGuestResponseRoom &&
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
  _$$_GetV1RoomsGuestResponseRoomCopyWith<_$_GetV1RoomsGuestResponseRoom>
      get copyWith => __$$_GetV1RoomsGuestResponseRoomCopyWithImpl<
          _$_GetV1RoomsGuestResponseRoom>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetV1RoomsGuestResponseRoomToJson(
      this,
    );
  }
}

abstract class _GetV1RoomsGuestResponseRoom implements RoomsGuestResponseRoom {
  const factory _GetV1RoomsGuestResponseRoom(
          {required final String id,
          required final String roomName,
          required final String hostMainImageURL,
          final List<String>? participantMainImageURLs,
          required final Address address,
          required final MembersNum membersNum,
          @RoomStatusConverter()
              required final RoomStatus roomStatus,
          @JoinRequestStatusConverter()
              required final JoinRequestStatus joinRequestStatus}) =
      _$_GetV1RoomsGuestResponseRoom;

  factory _GetV1RoomsGuestResponseRoom.fromJson(Map<String, dynamic> json) =
      _$_GetV1RoomsGuestResponseRoom.fromJson;

  @override

  /// ルームID
  String get id;
  @override

  /// ルームネーム
  String get roomName;
  @override

  /// ホストアイコン
  String get hostMainImageURL;
  @override

  /// メンバーアイコンリスト
  List<String>? get participantMainImageURLs;
  @override

  /// 開催地
  Address get address;
  @override

  /// 参加人数
  MembersNum get membersNum;
  @override

  /// ルームステータス
  @RoomStatusConverter()
  RoomStatus get roomStatus;
  @override

  /// 参加申請リクエストのステータス
  @JoinRequestStatusConverter()
  JoinRequestStatus get joinRequestStatus;
  @override
  @JsonKey(ignore: true)
  _$$_GetV1RoomsGuestResponseRoomCopyWith<_$_GetV1RoomsGuestResponseRoom>
      get copyWith => throw _privateConstructorUsedError;
}
