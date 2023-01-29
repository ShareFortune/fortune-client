// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_v1_rooms_requesting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetV1RoomsRequestingResponse _$GetV1RoomsRequestingResponseFromJson(
    Map<String, dynamic> json) {
  return _GetV1RoomsRequestingResponse.fromJson(json);
}

/// @nodoc
mixin _$GetV1RoomsRequestingResponse {
  @JsonKey(name: "nextToken")
  String get nextToken => throw _privateConstructorUsedError;
  @JsonKey(name: "rooms")
  List<GetV1RoomsRequestingResponseRoom> get data =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetV1RoomsRequestingResponseCopyWith<GetV1RoomsRequestingResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetV1RoomsRequestingResponseCopyWith<$Res> {
  factory $GetV1RoomsRequestingResponseCopyWith(
          GetV1RoomsRequestingResponse value,
          $Res Function(GetV1RoomsRequestingResponse) then) =
      _$GetV1RoomsRequestingResponseCopyWithImpl<$Res,
          GetV1RoomsRequestingResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "nextToken") String nextToken,
      @JsonKey(name: "rooms") List<GetV1RoomsRequestingResponseRoom> data});
}

/// @nodoc
class _$GetV1RoomsRequestingResponseCopyWithImpl<$Res,
        $Val extends GetV1RoomsRequestingResponse>
    implements $GetV1RoomsRequestingResponseCopyWith<$Res> {
  _$GetV1RoomsRequestingResponseCopyWithImpl(this._value, this._then);

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
              as List<GetV1RoomsRequestingResponseRoom>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetV1RoomsRequestingResponseCopyWith<$Res>
    implements $GetV1RoomsRequestingResponseCopyWith<$Res> {
  factory _$$_GetV1RoomsRequestingResponseCopyWith(
          _$_GetV1RoomsRequestingResponse value,
          $Res Function(_$_GetV1RoomsRequestingResponse) then) =
      __$$_GetV1RoomsRequestingResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "nextToken") String nextToken,
      @JsonKey(name: "rooms") List<GetV1RoomsRequestingResponseRoom> data});
}

/// @nodoc
class __$$_GetV1RoomsRequestingResponseCopyWithImpl<$Res>
    extends _$GetV1RoomsRequestingResponseCopyWithImpl<$Res,
        _$_GetV1RoomsRequestingResponse>
    implements _$$_GetV1RoomsRequestingResponseCopyWith<$Res> {
  __$$_GetV1RoomsRequestingResponseCopyWithImpl(
      _$_GetV1RoomsRequestingResponse _value,
      $Res Function(_$_GetV1RoomsRequestingResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextToken = null,
    Object? data = null,
  }) {
    return _then(_$_GetV1RoomsRequestingResponse(
      nextToken: null == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GetV1RoomsRequestingResponseRoom>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetV1RoomsRequestingResponse implements _GetV1RoomsRequestingResponse {
  const _$_GetV1RoomsRequestingResponse(
      {@JsonKey(name: "nextToken")
          required this.nextToken,
      @JsonKey(name: "rooms")
          required final List<GetV1RoomsRequestingResponseRoom> data})
      : _data = data;

  factory _$_GetV1RoomsRequestingResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetV1RoomsRequestingResponseFromJson(json);

  @override
  @JsonKey(name: "nextToken")
  final String nextToken;
  final List<GetV1RoomsRequestingResponseRoom> _data;
  @override
  @JsonKey(name: "rooms")
  List<GetV1RoomsRequestingResponseRoom> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'GetV1RoomsRequestingResponse(nextToken: $nextToken, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetV1RoomsRequestingResponse &&
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
  _$$_GetV1RoomsRequestingResponseCopyWith<_$_GetV1RoomsRequestingResponse>
      get copyWith => __$$_GetV1RoomsRequestingResponseCopyWithImpl<
          _$_GetV1RoomsRequestingResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetV1RoomsRequestingResponseToJson(
      this,
    );
  }
}

abstract class _GetV1RoomsRequestingResponse
    implements GetV1RoomsRequestingResponse {
  const factory _GetV1RoomsRequestingResponse(
          {@JsonKey(name: "nextToken")
              required final String nextToken,
          @JsonKey(name: "rooms")
              required final List<GetV1RoomsRequestingResponseRoom> data}) =
      _$_GetV1RoomsRequestingResponse;

  factory _GetV1RoomsRequestingResponse.fromJson(Map<String, dynamic> json) =
      _$_GetV1RoomsRequestingResponse.fromJson;

  @override
  @JsonKey(name: "nextToken")
  String get nextToken;
  @override
  @JsonKey(name: "rooms")
  List<GetV1RoomsRequestingResponseRoom> get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetV1RoomsRequestingResponseCopyWith<_$_GetV1RoomsRequestingResponse>
      get copyWith => throw _privateConstructorUsedError;
}

GetV1RoomsRequestingResponseRoom _$GetV1RoomsRequestingResponseRoomFromJson(
    Map<String, dynamic> json) {
  return _GetV1RoomsRequestingResponseRoom.fromJson(json);
}

/// @nodoc
mixin _$GetV1RoomsRequestingResponseRoom {
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetV1RoomsRequestingResponseRoomCopyWith<GetV1RoomsRequestingResponseRoom>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetV1RoomsRequestingResponseRoomCopyWith<$Res> {
  factory $GetV1RoomsRequestingResponseRoomCopyWith(
          GetV1RoomsRequestingResponseRoom value,
          $Res Function(GetV1RoomsRequestingResponseRoom) then) =
      _$GetV1RoomsRequestingResponseRoomCopyWithImpl<$Res,
          GetV1RoomsRequestingResponseRoom>;
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
          MembersNum membersNum});

  $AddressCopyWith<$Res> get address;
  $MembersNumCopyWith<$Res> get membersNum;
}

/// @nodoc
class _$GetV1RoomsRequestingResponseRoomCopyWithImpl<$Res,
        $Val extends GetV1RoomsRequestingResponseRoom>
    implements $GetV1RoomsRequestingResponseRoomCopyWith<$Res> {
  _$GetV1RoomsRequestingResponseRoomCopyWithImpl(this._value, this._then);

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
abstract class _$$_GetV1RoomsRequestingResponseRoomCopyWith<$Res>
    implements $GetV1RoomsRequestingResponseRoomCopyWith<$Res> {
  factory _$$_GetV1RoomsRequestingResponseRoomCopyWith(
          _$_GetV1RoomsRequestingResponseRoom value,
          $Res Function(_$_GetV1RoomsRequestingResponseRoom) then) =
      __$$_GetV1RoomsRequestingResponseRoomCopyWithImpl<$Res>;
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
          MembersNum membersNum});

  @override
  $AddressCopyWith<$Res> get address;
  @override
  $MembersNumCopyWith<$Res> get membersNum;
}

/// @nodoc
class __$$_GetV1RoomsRequestingResponseRoomCopyWithImpl<$Res>
    extends _$GetV1RoomsRequestingResponseRoomCopyWithImpl<$Res,
        _$_GetV1RoomsRequestingResponseRoom>
    implements _$$_GetV1RoomsRequestingResponseRoomCopyWith<$Res> {
  __$$_GetV1RoomsRequestingResponseRoomCopyWithImpl(
      _$_GetV1RoomsRequestingResponseRoom _value,
      $Res Function(_$_GetV1RoomsRequestingResponseRoom) _then)
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
  }) {
    return _then(_$_GetV1RoomsRequestingResponseRoom(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetV1RoomsRequestingResponseRoom
    implements _GetV1RoomsRequestingResponseRoom {
  const _$_GetV1RoomsRequestingResponseRoom(
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
          required this.membersNum})
      : _participantMainImageURLs = participantMainImageURLs;

  factory _$_GetV1RoomsRequestingResponseRoom.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetV1RoomsRequestingResponseRoomFromJson(json);

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

  @override
  String toString() {
    return 'GetV1RoomsRequestingResponseRoom(id: $id, roomName: $roomName, hostMainImageURL: $hostMainImageURL, participantMainImageURLs: $participantMainImageURLs, address: $address, membersNum: $membersNum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetV1RoomsRequestingResponseRoom &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.roomName, roomName) ||
                other.roomName == roomName) &&
            (identical(other.hostMainImageURL, hostMainImageURL) ||
                other.hostMainImageURL == hostMainImageURL) &&
            const DeepCollectionEquality().equals(
                other._participantMainImageURLs, _participantMainImageURLs) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.membersNum, membersNum) ||
                other.membersNum == membersNum));
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
      membersNum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetV1RoomsRequestingResponseRoomCopyWith<
          _$_GetV1RoomsRequestingResponseRoom>
      get copyWith => __$$_GetV1RoomsRequestingResponseRoomCopyWithImpl<
          _$_GetV1RoomsRequestingResponseRoom>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetV1RoomsRequestingResponseRoomToJson(
      this,
    );
  }
}

abstract class _GetV1RoomsRequestingResponseRoom
    implements GetV1RoomsRequestingResponseRoom {
  const factory _GetV1RoomsRequestingResponseRoom(
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
              required final MembersNum membersNum}) =
      _$_GetV1RoomsRequestingResponseRoom;

  factory _GetV1RoomsRequestingResponseRoom.fromJson(
      Map<String, dynamic> json) = _$_GetV1RoomsRequestingResponseRoom.fromJson;

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
  @JsonKey(ignore: true)
  _$$_GetV1RoomsRequestingResponseRoomCopyWith<
          _$_GetV1RoomsRequestingResponseRoom>
      get copyWith => throw _privateConstructorUsedError;
}
