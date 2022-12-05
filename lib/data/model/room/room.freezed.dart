// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  String get id => throw _privateConstructorUsedError;

  /// ルームネーム
  String get roomName => throw _privateConstructorUsedError;

  /// ホスト画像
  String get hostMainImageURL => throw _privateConstructorUsedError;

  /// メンバー画像リスト
  List<String> get participantMainImageURLs =>
      throw _privateConstructorUsedError;

  /// 居住地
  Map<String, dynamic> get address => throw _privateConstructorUsedError;

  /// お気に入りしているかどうか
  bool get isFavorite => throw _privateConstructorUsedError;

  /// 参加人数
  Map<String, dynamic> get membersNum => throw _privateConstructorUsedError;

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
      {String id,
      String roomName,
      String hostMainImageURL,
      List<String> participantMainImageURLs,
      Map<String, dynamic> address,
      bool isFavorite,
      Map<String, dynamic> membersNum});
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
    Object? participantMainImageURLs = null,
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
      participantMainImageURLs: null == participantMainImageURLs
          ? _value.participantMainImageURLs
          : participantMainImageURLs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      membersNum: null == membersNum
          ? _value.membersNum
          : membersNum // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoomCopyWith<$Res> implements $RoomCopyWith<$Res> {
  factory _$$_RoomCopyWith(_$_Room value, $Res Function(_$_Room) then) =
      __$$_RoomCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String roomName,
      String hostMainImageURL,
      List<String> participantMainImageURLs,
      Map<String, dynamic> address,
      bool isFavorite,
      Map<String, dynamic> membersNum});
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
    Object? participantMainImageURLs = null,
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
      participantMainImageURLs: null == participantMainImageURLs
          ? _value._participantMainImageURLs
          : participantMainImageURLs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      address: null == address
          ? _value._address
          : address // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      membersNum: null == membersNum
          ? _value._membersNum
          : membersNum // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Room extends _Room {
  const _$_Room(
      {required this.id,
      required this.roomName,
      required this.hostMainImageURL,
      required final List<String> participantMainImageURLs,
      required final Map<String, dynamic> address,
      required this.isFavorite,
      required final Map<String, dynamic> membersNum})
      : _participantMainImageURLs = participantMainImageURLs,
        _address = address,
        _membersNum = membersNum,
        super._();

  factory _$_Room.fromJson(Map<String, dynamic> json) => _$$_RoomFromJson(json);

  /// ルームID
  @override
  final String id;

  /// ルームネーム
  @override
  final String roomName;

  /// ホスト画像
  @override
  final String hostMainImageURL;

  /// メンバー画像リスト
  final List<String> _participantMainImageURLs;

  /// メンバー画像リスト
  @override
  List<String> get participantMainImageURLs {
    if (_participantMainImageURLs is EqualUnmodifiableListView)
      return _participantMainImageURLs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participantMainImageURLs);
  }

  /// 居住地
  final Map<String, dynamic> _address;

  /// 居住地
  @override
  Map<String, dynamic> get address {
    if (_address is EqualUnmodifiableMapView) return _address;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_address);
  }

  /// お気に入りしているかどうか
  @override
  final bool isFavorite;

  /// 参加人数
  final Map<String, dynamic> _membersNum;

  /// 参加人数
  @override
  Map<String, dynamic> get membersNum {
    if (_membersNum is EqualUnmodifiableMapView) return _membersNum;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_membersNum);
  }

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
            const DeepCollectionEquality().equals(other._address, _address) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            const DeepCollectionEquality()
                .equals(other._membersNum, _membersNum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      roomName,
      hostMainImageURL,
      const DeepCollectionEquality().hash(_participantMainImageURLs),
      const DeepCollectionEquality().hash(_address),
      isFavorite,
      const DeepCollectionEquality().hash(_membersNum));

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

abstract class _Room extends Room {
  const factory _Room(
      {required final String id,
      required final String roomName,
      required final String hostMainImageURL,
      required final List<String> participantMainImageURLs,
      required final Map<String, dynamic> address,
      required final bool isFavorite,
      required final Map<String, dynamic> membersNum}) = _$_Room;
  const _Room._() : super._();

  factory _Room.fromJson(Map<String, dynamic> json) = _$_Room.fromJson;

  @override

  /// ルームID
  String get id;
  @override

  /// ルームネーム
  String get roomName;
  @override

  /// ホスト画像
  String get hostMainImageURL;
  @override

  /// メンバー画像リスト
  List<String> get participantMainImageURLs;
  @override

  /// 居住地
  Map<String, dynamic> get address;
  @override

  /// お気に入りしているかどうか
  bool get isFavorite;
  @override

  /// 参加人数
  Map<String, dynamic> get membersNum;
  @override
  @JsonKey(ignore: true)
  _$$_RoomCopyWith<_$_Room> get copyWith => throw _privateConstructorUsedError;
}
