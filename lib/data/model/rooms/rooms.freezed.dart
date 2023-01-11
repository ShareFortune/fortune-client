// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rooms.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Rooms _$RoomsFromJson(Map<String, dynamic> json) {
  return _Rooms.fromJson(json);
}

/// @nodoc
mixin _$Rooms {
  @JsonKey(name: "nextToken")
  String get nextToken => throw _privateConstructorUsedError;
  @JsonKey(name: "rooms")
  List<Room> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomsCopyWith<Rooms> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomsCopyWith<$Res> {
  factory $RoomsCopyWith(Rooms value, $Res Function(Rooms) then) =
      _$RoomsCopyWithImpl<$Res, Rooms>;
  @useResult
  $Res call(
      {@JsonKey(name: "nextToken") String nextToken,
      @JsonKey(name: "rooms") List<Room> data});
}

/// @nodoc
class _$RoomsCopyWithImpl<$Res, $Val extends Rooms>
    implements $RoomsCopyWith<$Res> {
  _$RoomsCopyWithImpl(this._value, this._then);

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
              as List<Room>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoomsCopyWith<$Res> implements $RoomsCopyWith<$Res> {
  factory _$$_RoomsCopyWith(_$_Rooms value, $Res Function(_$_Rooms) then) =
      __$$_RoomsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "nextToken") String nextToken,
      @JsonKey(name: "rooms") List<Room> data});
}

/// @nodoc
class __$$_RoomsCopyWithImpl<$Res> extends _$RoomsCopyWithImpl<$Res, _$_Rooms>
    implements _$$_RoomsCopyWith<$Res> {
  __$$_RoomsCopyWithImpl(_$_Rooms _value, $Res Function(_$_Rooms) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextToken = null,
    Object? data = null,
  }) {
    return _then(_$_Rooms(
      nextToken: null == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Room>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Rooms implements _Rooms {
  const _$_Rooms(
      {@JsonKey(name: "nextToken") required this.nextToken,
      @JsonKey(name: "rooms") required final List<Room> data})
      : _data = data;

  factory _$_Rooms.fromJson(Map<String, dynamic> json) =>
      _$$_RoomsFromJson(json);

  @override
  @JsonKey(name: "nextToken")
  final String nextToken;
  final List<Room> _data;
  @override
  @JsonKey(name: "rooms")
  List<Room> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'Rooms(nextToken: $nextToken, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Rooms &&
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
  _$$_RoomsCopyWith<_$_Rooms> get copyWith =>
      __$$_RoomsCopyWithImpl<_$_Rooms>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomsToJson(
      this,
    );
  }
}

abstract class _Rooms implements Rooms {
  const factory _Rooms(
      {@JsonKey(name: "nextToken") required final String nextToken,
      @JsonKey(name: "rooms") required final List<Room> data}) = _$_Rooms;

  factory _Rooms.fromJson(Map<String, dynamic> json) = _$_Rooms.fromJson;

  @override
  @JsonKey(name: "nextToken")
  String get nextToken;
  @override
  @JsonKey(name: "rooms")
  List<Room> get data;
  @override
  @JsonKey(ignore: true)
  _$$_RoomsCopyWith<_$_Rooms> get copyWith =>
      throw _privateConstructorUsedError;
}

Room _$RoomFromJson(Map<String, dynamic> json) {
  return _Room.fromJson(json);
}

/// @nodoc
mixin _$Room {
  /// ルームID
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;

  /// ルームネーム
  @JsonKey(name: "roomName")
  String get roomName => throw _privateConstructorUsedError;

  /// ホスト画像
  @JsonKey(name: "hostMainImageURL")
  String get hostMainImageURL => throw _privateConstructorUsedError;

  /// メンバー画像リスト
  @JsonKey(name: "participantMainImageURLs")
  List<String>? get participantMainImageURLs =>
      throw _privateConstructorUsedError;

  /// 居住地
  @JsonKey(name: "address")
  Address get address => throw _privateConstructorUsedError;

  /// お気に入りしているかどうか
  @JsonKey(name: "isFavorite")
  bool get isFavorite => throw _privateConstructorUsedError;

  ///
  /// 参加人数
  ///
  @JsonKey(name: "membersNum", fromJson: MembersNum.fromJson)
  MembersNum get membersNum => throw _privateConstructorUsedError;

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
      @JsonKey(name: "isFavorite")
          bool isFavorite,
      @JsonKey(name: "membersNum", fromJson: MembersNum.fromJson)
          MembersNum membersNum});

  $AddressCopyWith<$Res> get address;
  $MembersNumCopyWith<$Res> get membersNum;
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
    Object? id = null,
    Object? roomName = null,
    Object? hostMainImageURL = null,
    Object? participantMainImageURLs = freezed,
    Object? address = null,
    Object? isFavorite = null,
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
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$_RoomCopyWith<$Res> implements $RoomCopyWith<$Res> {
  factory _$$_RoomCopyWith(_$_Room value, $Res Function(_$_Room) then) =
      __$$_RoomCopyWithImpl<$Res>;
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
      @JsonKey(name: "isFavorite")
          bool isFavorite,
      @JsonKey(name: "membersNum", fromJson: MembersNum.fromJson)
          MembersNum membersNum});

  @override
  $AddressCopyWith<$Res> get address;
  @override
  $MembersNumCopyWith<$Res> get membersNum;
}

/// @nodoc
class __$$_RoomCopyWithImpl<$Res> extends _$RoomCopyWithImpl<$Res, _$_Room>
    implements _$$_RoomCopyWith<$Res> {
  __$$_RoomCopyWithImpl(_$_Room _value, $Res Function(_$_Room) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? roomName = null,
    Object? hostMainImageURL = null,
    Object? participantMainImageURLs = freezed,
    Object? address = null,
    Object? isFavorite = null,
    Object? membersNum = null,
  }) {
    return _then(_$_Room(
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
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      membersNum: null == membersNum
          ? _value.membersNum
          : membersNum // ignore: cast_nullable_to_non_nullable
              as MembersNum,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Room implements _Room {
  const _$_Room(
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
      @JsonKey(name: "isFavorite")
          required this.isFavorite,
      @JsonKey(name: "membersNum", fromJson: MembersNum.fromJson)
          required this.membersNum})
      : _participantMainImageURLs = participantMainImageURLs;

  factory _$_Room.fromJson(Map<String, dynamic> json) => _$$_RoomFromJson(json);

  /// ルームID
  @override
  @JsonKey(name: "id")
  final String id;

  /// ルームネーム
  @override
  @JsonKey(name: "roomName")
  final String roomName;

  /// ホスト画像
  @override
  @JsonKey(name: "hostMainImageURL")
  final String hostMainImageURL;

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

  /// 居住地
  @override
  @JsonKey(name: "address")
  final Address address;

  /// お気に入りしているかどうか
  @override
  @JsonKey(name: "isFavorite")
  final bool isFavorite;

  ///
  /// 参加人数
  ///
  @override
  @JsonKey(name: "membersNum", fromJson: MembersNum.fromJson)
  final MembersNum membersNum;

  @override
  String toString() {
    return 'Room(id: $id, roomName: $roomName, hostMainImageURL: $hostMainImageURL, participantMainImageURLs: $participantMainImageURLs, address: $address, isFavorite: $isFavorite, membersNum: $membersNum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Room &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.roomName, roomName) ||
                other.roomName == roomName) &&
            (identical(other.hostMainImageURL, hostMainImageURL) ||
                other.hostMainImageURL == hostMainImageURL) &&
            const DeepCollectionEquality().equals(
                other._participantMainImageURLs, _participantMainImageURLs) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
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
      isFavorite,
      membersNum);

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
      @JsonKey(name: "isFavorite")
          required final bool isFavorite,
      @JsonKey(name: "membersNum", fromJson: MembersNum.fromJson)
          required final MembersNum membersNum}) = _$_Room;

  factory _Room.fromJson(Map<String, dynamic> json) = _$_Room.fromJson;

  @override

  /// ルームID
  @JsonKey(name: "id")
  String get id;
  @override

  /// ルームネーム
  @JsonKey(name: "roomName")
  String get roomName;
  @override

  /// ホスト画像
  @JsonKey(name: "hostMainImageURL")
  String get hostMainImageURL;
  @override

  /// メンバー画像リスト
  @JsonKey(name: "participantMainImageURLs")
  List<String>? get participantMainImageURLs;
  @override

  /// 居住地
  @JsonKey(name: "address")
  Address get address;
  @override

  /// お気に入りしているかどうか
  @JsonKey(name: "isFavorite")
  bool get isFavorite;
  @override

  ///
  /// 参加人数
  ///
  @JsonKey(name: "membersNum", fromJson: MembersNum.fromJson)
  MembersNum get membersNum;
  @override
  @JsonKey(ignore: true)
  _$$_RoomCopyWith<_$_Room> get copyWith => throw _privateConstructorUsedError;
}

MembersNum _$MembersNumFromJson(Map<String, dynamic> json) {
  return _MembersNum.fromJson(json);
}

/// @nodoc
mixin _$MembersNum {
  @JsonKey(name: "maxMenNum")
  int get maxMenNum => throw _privateConstructorUsedError;
  @JsonKey(name: "menNum")
  int get menNum => throw _privateConstructorUsedError;
  @JsonKey(name: "maxWomenNum")
  int get maxWomenNum => throw _privateConstructorUsedError;
  @JsonKey(name: "womenNum")
  int get womenNum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MembersNumCopyWith<MembersNum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MembersNumCopyWith<$Res> {
  factory $MembersNumCopyWith(
          MembersNum value, $Res Function(MembersNum) then) =
      _$MembersNumCopyWithImpl<$Res, MembersNum>;
  @useResult
  $Res call(
      {@JsonKey(name: "maxMenNum") int maxMenNum,
      @JsonKey(name: "menNum") int menNum,
      @JsonKey(name: "maxWomenNum") int maxWomenNum,
      @JsonKey(name: "womenNum") int womenNum});
}

/// @nodoc
class _$MembersNumCopyWithImpl<$Res, $Val extends MembersNum>
    implements $MembersNumCopyWith<$Res> {
  _$MembersNumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxMenNum = null,
    Object? menNum = null,
    Object? maxWomenNum = null,
    Object? womenNum = null,
  }) {
    return _then(_value.copyWith(
      maxMenNum: null == maxMenNum
          ? _value.maxMenNum
          : maxMenNum // ignore: cast_nullable_to_non_nullable
              as int,
      menNum: null == menNum
          ? _value.menNum
          : menNum // ignore: cast_nullable_to_non_nullable
              as int,
      maxWomenNum: null == maxWomenNum
          ? _value.maxWomenNum
          : maxWomenNum // ignore: cast_nullable_to_non_nullable
              as int,
      womenNum: null == womenNum
          ? _value.womenNum
          : womenNum // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MembersNumCopyWith<$Res>
    implements $MembersNumCopyWith<$Res> {
  factory _$$_MembersNumCopyWith(
          _$_MembersNum value, $Res Function(_$_MembersNum) then) =
      __$$_MembersNumCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "maxMenNum") int maxMenNum,
      @JsonKey(name: "menNum") int menNum,
      @JsonKey(name: "maxWomenNum") int maxWomenNum,
      @JsonKey(name: "womenNum") int womenNum});
}

/// @nodoc
class __$$_MembersNumCopyWithImpl<$Res>
    extends _$MembersNumCopyWithImpl<$Res, _$_MembersNum>
    implements _$$_MembersNumCopyWith<$Res> {
  __$$_MembersNumCopyWithImpl(
      _$_MembersNum _value, $Res Function(_$_MembersNum) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxMenNum = null,
    Object? menNum = null,
    Object? maxWomenNum = null,
    Object? womenNum = null,
  }) {
    return _then(_$_MembersNum(
      maxMenNum: null == maxMenNum
          ? _value.maxMenNum
          : maxMenNum // ignore: cast_nullable_to_non_nullable
              as int,
      menNum: null == menNum
          ? _value.menNum
          : menNum // ignore: cast_nullable_to_non_nullable
              as int,
      maxWomenNum: null == maxWomenNum
          ? _value.maxWomenNum
          : maxWomenNum // ignore: cast_nullable_to_non_nullable
              as int,
      womenNum: null == womenNum
          ? _value.womenNum
          : womenNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MembersNum implements _MembersNum {
  const _$_MembersNum(
      {@JsonKey(name: "maxMenNum") required this.maxMenNum,
      @JsonKey(name: "menNum") required this.menNum,
      @JsonKey(name: "maxWomenNum") required this.maxWomenNum,
      @JsonKey(name: "womenNum") required this.womenNum});

  factory _$_MembersNum.fromJson(Map<String, dynamic> json) =>
      _$$_MembersNumFromJson(json);

  @override
  @JsonKey(name: "maxMenNum")
  final int maxMenNum;
  @override
  @JsonKey(name: "menNum")
  final int menNum;
  @override
  @JsonKey(name: "maxWomenNum")
  final int maxWomenNum;
  @override
  @JsonKey(name: "womenNum")
  final int womenNum;

  @override
  String toString() {
    return 'MembersNum(maxMenNum: $maxMenNum, menNum: $menNum, maxWomenNum: $maxWomenNum, womenNum: $womenNum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MembersNum &&
            (identical(other.maxMenNum, maxMenNum) ||
                other.maxMenNum == maxMenNum) &&
            (identical(other.menNum, menNum) || other.menNum == menNum) &&
            (identical(other.maxWomenNum, maxWomenNum) ||
                other.maxWomenNum == maxWomenNum) &&
            (identical(other.womenNum, womenNum) ||
                other.womenNum == womenNum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, maxMenNum, menNum, maxWomenNum, womenNum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MembersNumCopyWith<_$_MembersNum> get copyWith =>
      __$$_MembersNumCopyWithImpl<_$_MembersNum>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MembersNumToJson(
      this,
    );
  }
}

abstract class _MembersNum implements MembersNum {
  const factory _MembersNum(
      {@JsonKey(name: "maxMenNum") required final int maxMenNum,
      @JsonKey(name: "menNum") required final int menNum,
      @JsonKey(name: "maxWomenNum") required final int maxWomenNum,
      @JsonKey(name: "womenNum") required final int womenNum}) = _$_MembersNum;

  factory _MembersNum.fromJson(Map<String, dynamic> json) =
      _$_MembersNum.fromJson;

  @override
  @JsonKey(name: "maxMenNum")
  int get maxMenNum;
  @override
  @JsonKey(name: "menNum")
  int get menNum;
  @override
  @JsonKey(name: "maxWomenNum")
  int get maxWomenNum;
  @override
  @JsonKey(name: "womenNum")
  int get womenNum;
  @override
  @JsonKey(ignore: true)
  _$$_MembersNumCopyWith<_$_MembersNum> get copyWith =>
      throw _privateConstructorUsedError;
}
