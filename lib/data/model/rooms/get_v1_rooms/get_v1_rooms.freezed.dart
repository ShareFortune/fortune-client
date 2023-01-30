// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_v1_rooms.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetV1RoomsResponse _$GetV1RoomsResponseFromJson(Map<String, dynamic> json) {
  return _GetV1RoomsResponse.fromJson(json);
}

/// @nodoc
mixin _$GetV1RoomsResponse {
  @JsonKey(name: "nextToken")
  String get nextToken => throw _privateConstructorUsedError;
  @JsonKey(name: "rooms")
  List<GetV1RoomsResponseRoom> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetV1RoomsResponseCopyWith<GetV1RoomsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetV1RoomsResponseCopyWith<$Res> {
  factory $GetV1RoomsResponseCopyWith(
          GetV1RoomsResponse value, $Res Function(GetV1RoomsResponse) then) =
      _$GetV1RoomsResponseCopyWithImpl<$Res, GetV1RoomsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "nextToken") String nextToken,
      @JsonKey(name: "rooms") List<GetV1RoomsResponseRoom> data});
}

/// @nodoc
class _$GetV1RoomsResponseCopyWithImpl<$Res, $Val extends GetV1RoomsResponse>
    implements $GetV1RoomsResponseCopyWith<$Res> {
  _$GetV1RoomsResponseCopyWithImpl(this._value, this._then);

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
              as List<GetV1RoomsResponseRoom>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetV1RoomsResponseCopyWith<$Res>
    implements $GetV1RoomsResponseCopyWith<$Res> {
  factory _$$_GetV1RoomsResponseCopyWith(_$_GetV1RoomsResponse value,
          $Res Function(_$_GetV1RoomsResponse) then) =
      __$$_GetV1RoomsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "nextToken") String nextToken,
      @JsonKey(name: "rooms") List<GetV1RoomsResponseRoom> data});
}

/// @nodoc
class __$$_GetV1RoomsResponseCopyWithImpl<$Res>
    extends _$GetV1RoomsResponseCopyWithImpl<$Res, _$_GetV1RoomsResponse>
    implements _$$_GetV1RoomsResponseCopyWith<$Res> {
  __$$_GetV1RoomsResponseCopyWithImpl(
      _$_GetV1RoomsResponse _value, $Res Function(_$_GetV1RoomsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextToken = null,
    Object? data = null,
  }) {
    return _then(_$_GetV1RoomsResponse(
      nextToken: null == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GetV1RoomsResponseRoom>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetV1RoomsResponse implements _GetV1RoomsResponse {
  const _$_GetV1RoomsResponse(
      {@JsonKey(name: "nextToken") required this.nextToken,
      @JsonKey(name: "rooms") required final List<GetV1RoomsResponseRoom> data})
      : _data = data;

  factory _$_GetV1RoomsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetV1RoomsResponseFromJson(json);

  @override
  @JsonKey(name: "nextToken")
  final String nextToken;
  final List<GetV1RoomsResponseRoom> _data;
  @override
  @JsonKey(name: "rooms")
  List<GetV1RoomsResponseRoom> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'GetV1RoomsResponse(nextToken: $nextToken, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetV1RoomsResponse &&
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
  _$$_GetV1RoomsResponseCopyWith<_$_GetV1RoomsResponse> get copyWith =>
      __$$_GetV1RoomsResponseCopyWithImpl<_$_GetV1RoomsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetV1RoomsResponseToJson(
      this,
    );
  }
}

abstract class _GetV1RoomsResponse implements GetV1RoomsResponse {
  const factory _GetV1RoomsResponse(
          {@JsonKey(name: "nextToken")
              required final String nextToken,
          @JsonKey(name: "rooms")
              required final List<GetV1RoomsResponseRoom> data}) =
      _$_GetV1RoomsResponse;

  factory _GetV1RoomsResponse.fromJson(Map<String, dynamic> json) =
      _$_GetV1RoomsResponse.fromJson;

  @override
  @JsonKey(name: "nextToken")
  String get nextToken;
  @override
  @JsonKey(name: "rooms")
  List<GetV1RoomsResponseRoom> get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetV1RoomsResponseCopyWith<_$_GetV1RoomsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

GetV1RoomsResponseRoom _$GetV1RoomsResponseRoomFromJson(
    Map<String, dynamic> json) {
  return _GetV1RoomsResponseRoom.fromJson(json);
}

/// @nodoc
mixin _$GetV1RoomsResponseRoom {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "roomName")
  String get roomName => throw _privateConstructorUsedError;
  @JsonKey(name: "hostUser")
  String get hostMainImageURL => throw _privateConstructorUsedError;
  @JsonKey(name: "participants")
  List<String>? get participantMainImageURLs =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  Address get address => throw _privateConstructorUsedError;
  @JsonKey(name: "membersNum")
  MembersNum get membersNum => throw _privateConstructorUsedError;
  @JsonKey(name: "isFavorite")
  bool get isFavorite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetV1RoomsResponseRoomCopyWith<GetV1RoomsResponseRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetV1RoomsResponseRoomCopyWith<$Res> {
  factory $GetV1RoomsResponseRoomCopyWith(GetV1RoomsResponseRoom value,
          $Res Function(GetV1RoomsResponseRoom) then) =
      _$GetV1RoomsResponseRoomCopyWithImpl<$Res, GetV1RoomsResponseRoom>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "roomName") String roomName,
      @JsonKey(name: "hostUser") String hostMainImageURL,
      @JsonKey(name: "participants") List<String>? participantMainImageURLs,
      @JsonKey(name: "address") Address address,
      @JsonKey(name: "membersNum") MembersNum membersNum,
      @JsonKey(name: "isFavorite") bool isFavorite});

  $AddressCopyWith<$Res> get address;
  $MembersNumCopyWith<$Res> get membersNum;
}

/// @nodoc
class _$GetV1RoomsResponseRoomCopyWithImpl<$Res,
        $Val extends GetV1RoomsResponseRoom>
    implements $GetV1RoomsResponseRoomCopyWith<$Res> {
  _$GetV1RoomsResponseRoomCopyWithImpl(this._value, this._then);

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
    Object? isFavorite = null,
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
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$_GetV1RoomsResponseRoomCopyWith<$Res>
    implements $GetV1RoomsResponseRoomCopyWith<$Res> {
  factory _$$_GetV1RoomsResponseRoomCopyWith(_$_GetV1RoomsResponseRoom value,
          $Res Function(_$_GetV1RoomsResponseRoom) then) =
      __$$_GetV1RoomsResponseRoomCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "roomName") String roomName,
      @JsonKey(name: "hostUser") String hostMainImageURL,
      @JsonKey(name: "participants") List<String>? participantMainImageURLs,
      @JsonKey(name: "address") Address address,
      @JsonKey(name: "membersNum") MembersNum membersNum,
      @JsonKey(name: "isFavorite") bool isFavorite});

  @override
  $AddressCopyWith<$Res> get address;
  @override
  $MembersNumCopyWith<$Res> get membersNum;
}

/// @nodoc
class __$$_GetV1RoomsResponseRoomCopyWithImpl<$Res>
    extends _$GetV1RoomsResponseRoomCopyWithImpl<$Res,
        _$_GetV1RoomsResponseRoom>
    implements _$$_GetV1RoomsResponseRoomCopyWith<$Res> {
  __$$_GetV1RoomsResponseRoomCopyWithImpl(_$_GetV1RoomsResponseRoom _value,
      $Res Function(_$_GetV1RoomsResponseRoom) _then)
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
    Object? isFavorite = null,
  }) {
    return _then(_$_GetV1RoomsResponseRoom(
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
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetV1RoomsResponseRoom implements _GetV1RoomsResponseRoom {
  const _$_GetV1RoomsResponseRoom(
      {@JsonKey(name: "id")
          required this.id,
      @JsonKey(name: "roomName")
          required this.roomName,
      @JsonKey(name: "hostUser")
          required this.hostMainImageURL,
      @JsonKey(name: "participants")
          final List<String>? participantMainImageURLs,
      @JsonKey(name: "address")
          required this.address,
      @JsonKey(name: "membersNum")
          required this.membersNum,
      @JsonKey(name: "isFavorite")
          required this.isFavorite})
      : _participantMainImageURLs = participantMainImageURLs;

  factory _$_GetV1RoomsResponseRoom.fromJson(Map<String, dynamic> json) =>
      _$$_GetV1RoomsResponseRoomFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "roomName")
  final String roomName;
  @override
  @JsonKey(name: "hostUser")
  final String hostMainImageURL;
  final List<String>? _participantMainImageURLs;
  @override
  @JsonKey(name: "participants")
  List<String>? get participantMainImageURLs {
    final value = _participantMainImageURLs;
    if (value == null) return null;
    if (_participantMainImageURLs is EqualUnmodifiableListView)
      return _participantMainImageURLs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "address")
  final Address address;
  @override
  @JsonKey(name: "membersNum")
  final MembersNum membersNum;
  @override
  @JsonKey(name: "isFavorite")
  final bool isFavorite;

  @override
  String toString() {
    return 'GetV1RoomsResponseRoom(id: $id, roomName: $roomName, hostMainImageURL: $hostMainImageURL, participantMainImageURLs: $participantMainImageURLs, address: $address, membersNum: $membersNum, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetV1RoomsResponseRoom &&
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
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
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
      isFavorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetV1RoomsResponseRoomCopyWith<_$_GetV1RoomsResponseRoom> get copyWith =>
      __$$_GetV1RoomsResponseRoomCopyWithImpl<_$_GetV1RoomsResponseRoom>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetV1RoomsResponseRoomToJson(
      this,
    );
  }
}

abstract class _GetV1RoomsResponseRoom implements GetV1RoomsResponseRoom {
  const factory _GetV1RoomsResponseRoom(
      {@JsonKey(name: "id")
          required final String id,
      @JsonKey(name: "roomName")
          required final String roomName,
      @JsonKey(name: "hostUser")
          required final String hostMainImageURL,
      @JsonKey(name: "participants")
          final List<String>? participantMainImageURLs,
      @JsonKey(name: "address")
          required final Address address,
      @JsonKey(name: "membersNum")
          required final MembersNum membersNum,
      @JsonKey(name: "isFavorite")
          required final bool isFavorite}) = _$_GetV1RoomsResponseRoom;

  factory _GetV1RoomsResponseRoom.fromJson(Map<String, dynamic> json) =
      _$_GetV1RoomsResponseRoom.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "roomName")
  String get roomName;
  @override
  @JsonKey(name: "hostUser")
  String get hostMainImageURL;
  @override
  @JsonKey(name: "participants")
  List<String>? get participantMainImageURLs;
  @override
  @JsonKey(name: "address")
  Address get address;
  @override
  @JsonKey(name: "membersNum")
  MembersNum get membersNum;
  @override
  @JsonKey(name: "isFavorite")
  bool get isFavorite;
  @override
  @JsonKey(ignore: true)
  _$$_GetV1RoomsResponseRoomCopyWith<_$_GetV1RoomsResponseRoom> get copyWith =>
      throw _privateConstructorUsedError;
}
