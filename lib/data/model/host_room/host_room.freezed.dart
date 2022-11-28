// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'host_room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HostRoomList _$HostRoomListFromJson(Map<String, dynamic> json) {
  return _HostRoomList.fromJson(json);
}

/// @nodoc
mixin _$HostRoomList {
  List<Map<String, dynamic>> get rooms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HostRoomListCopyWith<HostRoomList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HostRoomListCopyWith<$Res> {
  factory $HostRoomListCopyWith(
          HostRoomList value, $Res Function(HostRoomList) then) =
      _$HostRoomListCopyWithImpl<$Res, HostRoomList>;
  @useResult
  $Res call({List<Map<String, dynamic>> rooms});
}

/// @nodoc
class _$HostRoomListCopyWithImpl<$Res, $Val extends HostRoomList>
    implements $HostRoomListCopyWith<$Res> {
  _$HostRoomListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
  }) {
    return _then(_value.copyWith(
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HostRoomListCopyWith<$Res>
    implements $HostRoomListCopyWith<$Res> {
  factory _$$_HostRoomListCopyWith(
          _$_HostRoomList value, $Res Function(_$_HostRoomList) then) =
      __$$_HostRoomListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Map<String, dynamic>> rooms});
}

/// @nodoc
class __$$_HostRoomListCopyWithImpl<$Res>
    extends _$HostRoomListCopyWithImpl<$Res, _$_HostRoomList>
    implements _$$_HostRoomListCopyWith<$Res> {
  __$$_HostRoomListCopyWithImpl(
      _$_HostRoomList _value, $Res Function(_$_HostRoomList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
  }) {
    return _then(_$_HostRoomList(
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HostRoomList extends _HostRoomList {
  const _$_HostRoomList({required final List<Map<String, dynamic>> rooms})
      : _rooms = rooms,
        super._();

  factory _$_HostRoomList.fromJson(Map<String, dynamic> json) =>
      _$$_HostRoomListFromJson(json);

  final List<Map<String, dynamic>> _rooms;
  @override
  List<Map<String, dynamic>> get rooms {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  String toString() {
    return 'HostRoomList(rooms: $rooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HostRoomList &&
            const DeepCollectionEquality().equals(other._rooms, _rooms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rooms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HostRoomListCopyWith<_$_HostRoomList> get copyWith =>
      __$$_HostRoomListCopyWithImpl<_$_HostRoomList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HostRoomListToJson(
      this,
    );
  }
}

abstract class _HostRoomList extends HostRoomList {
  const factory _HostRoomList(
      {required final List<Map<String, dynamic>> rooms}) = _$_HostRoomList;
  const _HostRoomList._() : super._();

  factory _HostRoomList.fromJson(Map<String, dynamic> json) =
      _$_HostRoomList.fromJson;

  @override
  List<Map<String, dynamic>> get rooms;
  @override
  @JsonKey(ignore: true)
  _$$_HostRoomListCopyWith<_$_HostRoomList> get copyWith =>
      throw _privateConstructorUsedError;
}

HostRoom _$HostRoomFromJson(Map<String, dynamic> json) {
  return _HostRoom.fromJson(json);
}

/// @nodoc
mixin _$HostRoom {
  /// ルームネーム
  String get roomName => throw _privateConstructorUsedError;

  /// メンバー画像リスト
  List<String> get participantMainImageURLs =>
      throw _privateConstructorUsedError;

  /// アクション件数
  int get action => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HostRoomCopyWith<HostRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HostRoomCopyWith<$Res> {
  factory $HostRoomCopyWith(HostRoom value, $Res Function(HostRoom) then) =
      _$HostRoomCopyWithImpl<$Res, HostRoom>;
  @useResult
  $Res call(
      {String roomName, List<String> participantMainImageURLs, int action});
}

/// @nodoc
class _$HostRoomCopyWithImpl<$Res, $Val extends HostRoom>
    implements $HostRoomCopyWith<$Res> {
  _$HostRoomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomName = null,
    Object? participantMainImageURLs = null,
    Object? action = null,
  }) {
    return _then(_value.copyWith(
      roomName: null == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      participantMainImageURLs: null == participantMainImageURLs
          ? _value.participantMainImageURLs
          : participantMainImageURLs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HostRoomCopyWith<$Res> implements $HostRoomCopyWith<$Res> {
  factory _$$_HostRoomCopyWith(
          _$_HostRoom value, $Res Function(_$_HostRoom) then) =
      __$$_HostRoomCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String roomName, List<String> participantMainImageURLs, int action});
}

/// @nodoc
class __$$_HostRoomCopyWithImpl<$Res>
    extends _$HostRoomCopyWithImpl<$Res, _$_HostRoom>
    implements _$$_HostRoomCopyWith<$Res> {
  __$$_HostRoomCopyWithImpl(
      _$_HostRoom _value, $Res Function(_$_HostRoom) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomName = null,
    Object? participantMainImageURLs = null,
    Object? action = null,
  }) {
    return _then(_$_HostRoom(
      roomName: null == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      participantMainImageURLs: null == participantMainImageURLs
          ? _value._participantMainImageURLs
          : participantMainImageURLs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HostRoom implements _HostRoom {
  const _$_HostRoom(
      {required this.roomName,
      required final List<String> participantMainImageURLs,
      required this.action})
      : _participantMainImageURLs = participantMainImageURLs;

  factory _$_HostRoom.fromJson(Map<String, dynamic> json) =>
      _$$_HostRoomFromJson(json);

  /// ルームネーム
  @override
  final String roomName;

  /// メンバー画像リスト
  final List<String> _participantMainImageURLs;

  /// メンバー画像リスト
  @override
  List<String> get participantMainImageURLs {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participantMainImageURLs);
  }

  /// アクション件数
  @override
  final int action;

  @override
  String toString() {
    return 'HostRoom(roomName: $roomName, participantMainImageURLs: $participantMainImageURLs, action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HostRoom &&
            (identical(other.roomName, roomName) ||
                other.roomName == roomName) &&
            const DeepCollectionEquality().equals(
                other._participantMainImageURLs, _participantMainImageURLs) &&
            (identical(other.action, action) || other.action == action));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, roomName,
      const DeepCollectionEquality().hash(_participantMainImageURLs), action);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HostRoomCopyWith<_$_HostRoom> get copyWith =>
      __$$_HostRoomCopyWithImpl<_$_HostRoom>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HostRoomToJson(
      this,
    );
  }
}

abstract class _HostRoom implements HostRoom {
  const factory _HostRoom(
      {required final String roomName,
      required final List<String> participantMainImageURLs,
      required final int action}) = _$_HostRoom;

  factory _HostRoom.fromJson(Map<String, dynamic> json) = _$_HostRoom.fromJson;

  @override

  /// ルームネーム
  String get roomName;
  @override

  /// メンバー画像リスト
  List<String> get participantMainImageURLs;
  @override

  /// アクション件数
  int get action;
  @override
  @JsonKey(ignore: true)
  _$$_HostRoomCopyWith<_$_HostRoom> get copyWith =>
      throw _privateConstructorUsedError;
}
