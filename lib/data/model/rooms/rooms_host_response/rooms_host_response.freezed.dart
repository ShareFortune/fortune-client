// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rooms_host_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoomsHostResponse _$RoomsHostResponseFromJson(Map<String, dynamic> json) {
  return _RoomsHostResponse.fromJson(json);
}

/// @nodoc
mixin _$RoomsHostResponse {
  String get nextToken => throw _privateConstructorUsedError;
  List<RoomsHostResponseRoom> get rooms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomsHostResponseCopyWith<RoomsHostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomsHostResponseCopyWith<$Res> {
  factory $RoomsHostResponseCopyWith(
          RoomsHostResponse value, $Res Function(RoomsHostResponse) then) =
      _$RoomsHostResponseCopyWithImpl<$Res, RoomsHostResponse>;
  @useResult
  $Res call({String nextToken, List<RoomsHostResponseRoom> rooms});
}

/// @nodoc
class _$RoomsHostResponseCopyWithImpl<$Res, $Val extends RoomsHostResponse>
    implements $RoomsHostResponseCopyWith<$Res> {
  _$RoomsHostResponseCopyWithImpl(this._value, this._then);

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
              as List<RoomsHostResponseRoom>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoomsHostResponseCopyWith<$Res>
    implements $RoomsHostResponseCopyWith<$Res> {
  factory _$$_RoomsHostResponseCopyWith(_$_RoomsHostResponse value,
          $Res Function(_$_RoomsHostResponse) then) =
      __$$_RoomsHostResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nextToken, List<RoomsHostResponseRoom> rooms});
}

/// @nodoc
class __$$_RoomsHostResponseCopyWithImpl<$Res>
    extends _$RoomsHostResponseCopyWithImpl<$Res, _$_RoomsHostResponse>
    implements _$$_RoomsHostResponseCopyWith<$Res> {
  __$$_RoomsHostResponseCopyWithImpl(
      _$_RoomsHostResponse _value, $Res Function(_$_RoomsHostResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextToken = null,
    Object? rooms = null,
  }) {
    return _then(_$_RoomsHostResponse(
      nextToken: null == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String,
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomsHostResponseRoom>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoomsHostResponse implements _RoomsHostResponse {
  const _$_RoomsHostResponse(
      {required this.nextToken,
      required final List<RoomsHostResponseRoom> rooms})
      : _rooms = rooms;

  factory _$_RoomsHostResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RoomsHostResponseFromJson(json);

  @override
  final String nextToken;
  final List<RoomsHostResponseRoom> _rooms;
  @override
  List<RoomsHostResponseRoom> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  String toString() {
    return 'RoomsHostResponse(nextToken: $nextToken, rooms: $rooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomsHostResponse &&
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
  _$$_RoomsHostResponseCopyWith<_$_RoomsHostResponse> get copyWith =>
      __$$_RoomsHostResponseCopyWithImpl<_$_RoomsHostResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomsHostResponseToJson(
      this,
    );
  }
}

abstract class _RoomsHostResponse implements RoomsHostResponse {
  const factory _RoomsHostResponse(
      {required final String nextToken,
      required final List<RoomsHostResponseRoom> rooms}) = _$_RoomsHostResponse;

  factory _RoomsHostResponse.fromJson(Map<String, dynamic> json) =
      _$_RoomsHostResponse.fromJson;

  @override
  String get nextToken;
  @override
  List<RoomsHostResponseRoom> get rooms;
  @override
  @JsonKey(ignore: true)
  _$$_RoomsHostResponseCopyWith<_$_RoomsHostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

RoomsHostResponseRoom _$RoomsHostResponseRoomFromJson(
    Map<String, dynamic> json) {
  return _RoomsHostResponseRoom.fromJson(json);
}

/// @nodoc
mixin _$RoomsHostResponseRoom {
  /// ルームID
  String get id => throw _privateConstructorUsedError;

  /// ルームネーム
  String get roomName => throw _privateConstructorUsedError;

  /// メンバー画像リスト
  List<String>? get participantMainImageURLs =>
      throw _privateConstructorUsedError;

  /// 開催地
  Address get address => throw _privateConstructorUsedError;

  /// 参加人数
  MembersNum get membersNum => throw _privateConstructorUsedError;

  /// リクエストカウント
  int get joinRequestsCount => throw _privateConstructorUsedError;

  /// ステータス
  @RoomStatusConverter()
  RoomStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomsHostResponseRoomCopyWith<RoomsHostResponseRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomsHostResponseRoomCopyWith<$Res> {
  factory $RoomsHostResponseRoomCopyWith(RoomsHostResponseRoom value,
          $Res Function(RoomsHostResponseRoom) then) =
      _$RoomsHostResponseRoomCopyWithImpl<$Res, RoomsHostResponseRoom>;
  @useResult
  $Res call(
      {String id,
      String roomName,
      List<String>? participantMainImageURLs,
      Address address,
      MembersNum membersNum,
      int joinRequestsCount,
      @RoomStatusConverter() RoomStatus status});

  $AddressCopyWith<$Res> get address;
  $MembersNumCopyWith<$Res> get membersNum;
}

/// @nodoc
class _$RoomsHostResponseRoomCopyWithImpl<$Res,
        $Val extends RoomsHostResponseRoom>
    implements $RoomsHostResponseRoomCopyWith<$Res> {
  _$RoomsHostResponseRoomCopyWithImpl(this._value, this._then);

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
abstract class _$$_RoomsHostResponseRoomCopyWith<$Res>
    implements $RoomsHostResponseRoomCopyWith<$Res> {
  factory _$$_RoomsHostResponseRoomCopyWith(_$_RoomsHostResponseRoom value,
          $Res Function(_$_RoomsHostResponseRoom) then) =
      __$$_RoomsHostResponseRoomCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String roomName,
      List<String>? participantMainImageURLs,
      Address address,
      MembersNum membersNum,
      int joinRequestsCount,
      @RoomStatusConverter() RoomStatus status});

  @override
  $AddressCopyWith<$Res> get address;
  @override
  $MembersNumCopyWith<$Res> get membersNum;
}

/// @nodoc
class __$$_RoomsHostResponseRoomCopyWithImpl<$Res>
    extends _$RoomsHostResponseRoomCopyWithImpl<$Res, _$_RoomsHostResponseRoom>
    implements _$$_RoomsHostResponseRoomCopyWith<$Res> {
  __$$_RoomsHostResponseRoomCopyWithImpl(_$_RoomsHostResponseRoom _value,
      $Res Function(_$_RoomsHostResponseRoom) _then)
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
    return _then(_$_RoomsHostResponseRoom(
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
class _$_RoomsHostResponseRoom implements _RoomsHostResponseRoom {
  const _$_RoomsHostResponseRoom(
      {required this.id,
      required this.roomName,
      required final List<String>? participantMainImageURLs,
      required this.address,
      required this.membersNum,
      required this.joinRequestsCount,
      @RoomStatusConverter() required this.status})
      : _participantMainImageURLs = participantMainImageURLs;

  factory _$_RoomsHostResponseRoom.fromJson(Map<String, dynamic> json) =>
      _$$_RoomsHostResponseRoomFromJson(json);

  /// ルームID
  @override
  final String id;

  /// ルームネーム
  @override
  final String roomName;

  /// メンバー画像リスト
  final List<String>? _participantMainImageURLs;

  /// メンバー画像リスト
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

  /// リクエストカウント
  @override
  final int joinRequestsCount;

  /// ステータス
  @override
  @RoomStatusConverter()
  final RoomStatus status;

  @override
  String toString() {
    return 'RoomsHostResponseRoom(id: $id, roomName: $roomName, participantMainImageURLs: $participantMainImageURLs, address: $address, membersNum: $membersNum, joinRequestsCount: $joinRequestsCount, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomsHostResponseRoom &&
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
  _$$_RoomsHostResponseRoomCopyWith<_$_RoomsHostResponseRoom> get copyWith =>
      __$$_RoomsHostResponseRoomCopyWithImpl<_$_RoomsHostResponseRoom>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomsHostResponseRoomToJson(
      this,
    );
  }
}

abstract class _RoomsHostResponseRoom implements RoomsHostResponseRoom {
  const factory _RoomsHostResponseRoom(
          {required final String id,
          required final String roomName,
          required final List<String>? participantMainImageURLs,
          required final Address address,
          required final MembersNum membersNum,
          required final int joinRequestsCount,
          @RoomStatusConverter() required final RoomStatus status}) =
      _$_RoomsHostResponseRoom;

  factory _RoomsHostResponseRoom.fromJson(Map<String, dynamic> json) =
      _$_RoomsHostResponseRoom.fromJson;

  @override

  /// ルームID
  String get id;
  @override

  /// ルームネーム
  String get roomName;
  @override

  /// メンバー画像リスト
  List<String>? get participantMainImageURLs;
  @override

  /// 開催地
  Address get address;
  @override

  /// 参加人数
  MembersNum get membersNum;
  @override

  /// リクエストカウント
  int get joinRequestsCount;
  @override

  /// ステータス
  @RoomStatusConverter()
  RoomStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_RoomsHostResponseRoomCopyWith<_$_RoomsHostResponseRoom> get copyWith =>
      throw _privateConstructorUsedError;
}
