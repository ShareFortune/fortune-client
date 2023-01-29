// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_v1_rooms_guest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetV1RoomsGuestResponse _$GetV1RoomsGuestResponseFromJson(
    Map<String, dynamic> json) {
  return _GetV1RoomsGuestResponse.fromJson(json);
}

/// @nodoc
mixin _$GetV1RoomsGuestResponse {
  @JsonKey(name: "nextToken")
  String get nextToken => throw _privateConstructorUsedError;
  @JsonKey(name: "rooms")
  List<GetV1RoomsGuestResponseRoom> get data =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetV1RoomsGuestResponseCopyWith<GetV1RoomsGuestResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetV1RoomsGuestResponseCopyWith<$Res> {
  factory $GetV1RoomsGuestResponseCopyWith(GetV1RoomsGuestResponse value,
          $Res Function(GetV1RoomsGuestResponse) then) =
      _$GetV1RoomsGuestResponseCopyWithImpl<$Res, GetV1RoomsGuestResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "nextToken") String nextToken,
      @JsonKey(name: "rooms") List<GetV1RoomsGuestResponseRoom> data});
}

/// @nodoc
class _$GetV1RoomsGuestResponseCopyWithImpl<$Res,
        $Val extends GetV1RoomsGuestResponse>
    implements $GetV1RoomsGuestResponseCopyWith<$Res> {
  _$GetV1RoomsGuestResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextToken = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      nextToken: null == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GetV1RoomsGuestResponseRoom>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetV1RoomsGuestResponseCopyWith<$Res>
    implements $GetV1RoomsGuestResponseCopyWith<$Res> {
  factory _$$_GetV1RoomsGuestResponseCopyWith(_$_GetV1RoomsGuestResponse value,
          $Res Function(_$_GetV1RoomsGuestResponse) then) =
      __$$_GetV1RoomsGuestResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "nextToken") String nextToken,
      @JsonKey(name: "rooms") List<GetV1RoomsGuestResponseRoom> data});
}

/// @nodoc
class __$$_GetV1RoomsGuestResponseCopyWithImpl<$Res>
    extends _$GetV1RoomsGuestResponseCopyWithImpl<$Res,
        _$_GetV1RoomsGuestResponse>
    implements _$$_GetV1RoomsGuestResponseCopyWith<$Res> {
  __$$_GetV1RoomsGuestResponseCopyWithImpl(_$_GetV1RoomsGuestResponse _value,
      $Res Function(_$_GetV1RoomsGuestResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextToken = null,
    Object? data = null,
  }) {
    return _then(_$_GetV1RoomsGuestResponse(
      nextToken: null == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GetV1RoomsGuestResponseRoom>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetV1RoomsGuestResponse implements _GetV1RoomsGuestResponse {
  const _$_GetV1RoomsGuestResponse(
      {@JsonKey(name: "nextToken")
          required this.nextToken,
      @JsonKey(name: "rooms")
          required final List<GetV1RoomsGuestResponseRoom> data})
      : _data = data;

  factory _$_GetV1RoomsGuestResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetV1RoomsGuestResponseFromJson(json);

  @override
  @JsonKey(name: "nextToken")
  final String nextToken;
  final List<GetV1RoomsGuestResponseRoom> _data;
  @override
  @JsonKey(name: "rooms")
  List<GetV1RoomsGuestResponseRoom> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'GetV1RoomsGuestResponse(nextToken: $nextToken, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetV1RoomsGuestResponse &&
            (identical(other.nextToken, nextToken) ||
                other.nextToken == nextToken) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, nextToken, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetV1RoomsGuestResponseCopyWith<_$_GetV1RoomsGuestResponse>
      get copyWith =>
          __$$_GetV1RoomsGuestResponseCopyWithImpl<_$_GetV1RoomsGuestResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetV1RoomsGuestResponseToJson(
      this,
    );
  }
}

abstract class _GetV1RoomsGuestResponse implements GetV1RoomsGuestResponse {
  const factory _GetV1RoomsGuestResponse(
          {@JsonKey(name: "nextToken")
              required final String nextToken,
          @JsonKey(name: "rooms")
              required final List<GetV1RoomsGuestResponseRoom> data}) =
      _$_GetV1RoomsGuestResponse;

  factory _GetV1RoomsGuestResponse.fromJson(Map<String, dynamic> json) =
      _$_GetV1RoomsGuestResponse.fromJson;

  @override
  @JsonKey(name: "nextToken")
  String get nextToken;
  @override
  @JsonKey(name: "rooms")
  List<GetV1RoomsGuestResponseRoom> get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetV1RoomsGuestResponseCopyWith<_$_GetV1RoomsGuestResponse>
      get copyWith => throw _privateConstructorUsedError;
}

GetV1RoomsGuestResponseRoom _$GetV1RoomsGuestResponseRoomFromJson(
    Map<String, dynamic> json) {
  return _GetV1RoomsGuestResponseRoom.fromJson(json);
}

/// @nodoc
mixin _$GetV1RoomsGuestResponseRoom {
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

  /// ルームステータス
  @JsonKey(name: "roomStatus")
  @RoomStatusConverter()
  RoomStatus get roomStatus => throw _privateConstructorUsedError;

  /// 参加申請リクエストのステータス
  @JsonKey(name: "joinRequestStatus")
  @JoinRequestStatusConverter()
  JoinRequestStatus get joinRequestStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetV1RoomsGuestResponseRoomCopyWith<GetV1RoomsGuestResponseRoom>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetV1RoomsGuestResponseRoomCopyWith<$Res> {
  factory $GetV1RoomsGuestResponseRoomCopyWith(
          GetV1RoomsGuestResponseRoom value,
          $Res Function(GetV1RoomsGuestResponseRoom) then) =
      _$GetV1RoomsGuestResponseRoomCopyWithImpl<$Res,
          GetV1RoomsGuestResponseRoom>;
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
      @RoomStatusConverter()
          RoomStatus roomStatus,
      @JsonKey(name: "joinRequestStatus")
      @JoinRequestStatusConverter()
          JoinRequestStatus joinRequestStatus});

  $AddressCopyWith<$Res> get address;
  $MembersNumCopyWith<$Res> get membersNum;
}

/// @nodoc
class _$GetV1RoomsGuestResponseRoomCopyWithImpl<$Res,
        $Val extends GetV1RoomsGuestResponseRoom>
    implements $GetV1RoomsGuestResponseRoomCopyWith<$Res> {
  _$GetV1RoomsGuestResponseRoomCopyWithImpl(this._value, this._then);

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
    implements $GetV1RoomsGuestResponseRoomCopyWith<$Res> {
  factory _$$_GetV1RoomsGuestResponseRoomCopyWith(
          _$_GetV1RoomsGuestResponseRoom value,
          $Res Function(_$_GetV1RoomsGuestResponseRoom) then) =
      __$$_GetV1RoomsGuestResponseRoomCopyWithImpl<$Res>;
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
      @RoomStatusConverter()
          RoomStatus roomStatus,
      @JsonKey(name: "joinRequestStatus")
      @JoinRequestStatusConverter()
          JoinRequestStatus joinRequestStatus});

  @override
  $AddressCopyWith<$Res> get address;
  @override
  $MembersNumCopyWith<$Res> get membersNum;
}

/// @nodoc
class __$$_GetV1RoomsGuestResponseRoomCopyWithImpl<$Res>
    extends _$GetV1RoomsGuestResponseRoomCopyWithImpl<$Res,
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
      {@JsonKey(name: "id")
          required this.id,
      @JsonKey(name: "roomName")
          required this.roomName,
      @JsonKey(name: "hostMainImageURL")
          required this.hostMainImageURL,
      @JsonKey(name: "participantMainImageURLs")
          final List<String>? participantMainImageURLs,
      @JsonKey(name: "address")
          required this.address,
      @JsonKey(name: "membersNum")
          required this.membersNum,
      @JsonKey(name: "roomStatus")
      @RoomStatusConverter()
          required this.roomStatus,
      @JsonKey(name: "joinRequestStatus")
      @JoinRequestStatusConverter()
          required this.joinRequestStatus})
      : _participantMainImageURLs = participantMainImageURLs;

  factory _$_GetV1RoomsGuestResponseRoom.fromJson(Map<String, dynamic> json) =>
      _$$_GetV1RoomsGuestResponseRoomFromJson(json);

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

  /// ルームステータス
  @override
  @JsonKey(name: "roomStatus")
  @RoomStatusConverter()
  final RoomStatus roomStatus;

  /// 参加申請リクエストのステータス
  @override
  @JsonKey(name: "joinRequestStatus")
  @JoinRequestStatusConverter()
  final JoinRequestStatus joinRequestStatus;

  @override
  String toString() {
    return 'GetV1RoomsGuestResponseRoom(id: $id, roomName: $roomName, hostMainImageURL: $hostMainImageURL, participantMainImageURLs: $participantMainImageURLs, address: $address, membersNum: $membersNum, roomStatus: $roomStatus, joinRequestStatus: $joinRequestStatus)';
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

abstract class _GetV1RoomsGuestResponseRoom
    implements GetV1RoomsGuestResponseRoom {
  const factory _GetV1RoomsGuestResponseRoom(
          {@JsonKey(name: "id")
              required final String id,
          @JsonKey(name: "roomName")
              required final String roomName,
          @JsonKey(name: "hostMainImageURL")
              required final String hostMainImageURL,
          @JsonKey(name: "participantMainImageURLs")
              final List<String>? participantMainImageURLs,
          @JsonKey(name: "address")
              required final Address address,
          @JsonKey(name: "membersNum")
              required final MembersNum membersNum,
          @JsonKey(name: "roomStatus")
          @RoomStatusConverter()
              required final RoomStatus roomStatus,
          @JsonKey(name: "joinRequestStatus")
          @JoinRequestStatusConverter()
              required final JoinRequestStatus joinRequestStatus}) =
      _$_GetV1RoomsGuestResponseRoom;

  factory _GetV1RoomsGuestResponseRoom.fromJson(Map<String, dynamic> json) =
      _$_GetV1RoomsGuestResponseRoom.fromJson;

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

  /// ルームステータス
  @JsonKey(name: "roomStatus")
  @RoomStatusConverter()
  RoomStatus get roomStatus;
  @override

  /// 参加申請リクエストのステータス
  @JsonKey(name: "joinRequestStatus")
  @JoinRequestStatusConverter()
  JoinRequestStatus get joinRequestStatus;
  @override
  @JsonKey(ignore: true)
  _$$_GetV1RoomsGuestResponseRoomCopyWith<_$_GetV1RoomsGuestResponseRoom>
      get copyWith => throw _privateConstructorUsedError;
}
