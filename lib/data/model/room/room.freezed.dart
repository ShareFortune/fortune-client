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
  String get roomName => throw _privateConstructorUsedError;

  /// 期限
  String get applicationDeadline => throw _privateConstructorUsedError;

  /// ホスト画像
  String get hostMainImageURL => throw _privateConstructorUsedError;

  /// メンバー画像リスト
  List<String> get participantMainImageURLs =>
      throw _privateConstructorUsedError;

  /// 居住地
  Map<String, dynamic> get address => throw _privateConstructorUsedError;

  /// ホストかどうか
  bool get isHost => throw _privateConstructorUsedError;

  /// 参加者かどうか
  bool get isParticipant => throw _privateConstructorUsedError;

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
      String roomName,
      String applicationDeadline,
      String hostMainImageURL,
      List<String> participantMainImageURLs,
      Map<String, dynamic> address,
      bool isHost,
      bool isParticipant});
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
    Object? roomName = null,
    Object? applicationDeadline = null,
    Object? hostMainImageURL = null,
    Object? participantMainImageURLs = null,
    Object? address = null,
    Object? isHost = null,
    Object? isParticipant = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      roomName: null == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      applicationDeadline: null == applicationDeadline
          ? _value.applicationDeadline
          : applicationDeadline // ignore: cast_nullable_to_non_nullable
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
      isHost: null == isHost
          ? _value.isHost
          : isHost // ignore: cast_nullable_to_non_nullable
              as bool,
      isParticipant: null == isParticipant
          ? _value.isParticipant
          : isParticipant // ignore: cast_nullable_to_non_nullable
              as bool,
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
      {String? id,
      String roomName,
      String applicationDeadline,
      String hostMainImageURL,
      List<String> participantMainImageURLs,
      Map<String, dynamic> address,
      bool isHost,
      bool isParticipant});
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
    Object? roomName = null,
    Object? applicationDeadline = null,
    Object? hostMainImageURL = null,
    Object? participantMainImageURLs = null,
    Object? address = null,
    Object? isHost = null,
    Object? isParticipant = null,
  }) {
    return _then(_$_Room(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      roomName: null == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      applicationDeadline: null == applicationDeadline
          ? _value.applicationDeadline
          : applicationDeadline // ignore: cast_nullable_to_non_nullable
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
      isHost: null == isHost
          ? _value.isHost
          : isHost // ignore: cast_nullable_to_non_nullable
              as bool,
      isParticipant: null == isParticipant
          ? _value.isParticipant
          : isParticipant // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Room extends _Room {
  const _$_Room(
      {required this.id,
      required this.roomName,
      required this.applicationDeadline,
      required this.hostMainImageURL,
      required final List<String> participantMainImageURLs,
      required final Map<String, dynamic> address,
      required this.isHost,
      required this.isParticipant})
      : _participantMainImageURLs = participantMainImageURLs,
        _address = address,
        super._();

  factory _$_Room.fromJson(Map<String, dynamic> json) => _$$_RoomFromJson(json);

  /// ルームID
  @override
  final String? id;

  /// ルームネーム
  @override
  final String roomName;

  /// 期限
  @override
  final String applicationDeadline;

  /// ホスト画像
  @override
  final String hostMainImageURL;

  /// メンバー画像リスト
  final List<String> _participantMainImageURLs;

  /// メンバー画像リスト
  @override
  List<String> get participantMainImageURLs {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participantMainImageURLs);
  }

  /// 居住地
  final Map<String, dynamic> _address;

  /// 居住地
  @override
  Map<String, dynamic> get address {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_address);
  }

  /// ホストかどうか
  @override
  final bool isHost;

  /// 参加者かどうか
  @override
  final bool isParticipant;

  @override
  String toString() {
    return 'Room(id: $id, roomName: $roomName, applicationDeadline: $applicationDeadline, hostMainImageURL: $hostMainImageURL, participantMainImageURLs: $participantMainImageURLs, address: $address, isHost: $isHost, isParticipant: $isParticipant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Room &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.roomName, roomName) ||
                other.roomName == roomName) &&
            (identical(other.applicationDeadline, applicationDeadline) ||
                other.applicationDeadline == applicationDeadline) &&
            (identical(other.hostMainImageURL, hostMainImageURL) ||
                other.hostMainImageURL == hostMainImageURL) &&
            const DeepCollectionEquality().equals(
                other._participantMainImageURLs, _participantMainImageURLs) &&
            const DeepCollectionEquality().equals(other._address, _address) &&
            (identical(other.isHost, isHost) || other.isHost == isHost) &&
            (identical(other.isParticipant, isParticipant) ||
                other.isParticipant == isParticipant));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      roomName,
      applicationDeadline,
      hostMainImageURL,
      const DeepCollectionEquality().hash(_participantMainImageURLs),
      const DeepCollectionEquality().hash(_address),
      isHost,
      isParticipant);

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
      {required final String? id,
      required final String roomName,
      required final String applicationDeadline,
      required final String hostMainImageURL,
      required final List<String> participantMainImageURLs,
      required final Map<String, dynamic> address,
      required final bool isHost,
      required final bool isParticipant}) = _$_Room;
  const _Room._() : super._();

  factory _Room.fromJson(Map<String, dynamic> json) = _$_Room.fromJson;

  @override

  /// ルームID
  String? get id;
  @override

  /// ルームネーム
  String get roomName;
  @override

  /// 期限
  String get applicationDeadline;
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

  /// ホストかどうか
  bool get isHost;
  @override

  /// 参加者かどうか
  bool get isParticipant;
  @override
  @JsonKey(ignore: true)
  _$$_RoomCopyWith<_$_Room> get copyWith => throw _privateConstructorUsedError;
}
