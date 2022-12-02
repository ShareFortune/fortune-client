// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoomList _$RoomListFromJson(Map<String, dynamic> json) {
  return _RoomList.fromJson(json);
}

/// @nodoc
mixin _$RoomList {
  String get nextToken => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get rooms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomListCopyWith<RoomList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomListCopyWith<$Res> {
  factory $RoomListCopyWith(RoomList value, $Res Function(RoomList) then) =
      _$RoomListCopyWithImpl<$Res, RoomList>;
  @useResult
  $Res call({String nextToken, List<Map<String, dynamic>> rooms});
}

/// @nodoc
class _$RoomListCopyWithImpl<$Res, $Val extends RoomList>
    implements $RoomListCopyWith<$Res> {
  _$RoomListCopyWithImpl(this._value, this._then);

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
              as List<Map<String, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoomListCopyWith<$Res> implements $RoomListCopyWith<$Res> {
  factory _$$_RoomListCopyWith(
          _$_RoomList value, $Res Function(_$_RoomList) then) =
      __$$_RoomListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nextToken, List<Map<String, dynamic>> rooms});
}

/// @nodoc
class __$$_RoomListCopyWithImpl<$Res>
    extends _$RoomListCopyWithImpl<$Res, _$_RoomList>
    implements _$$_RoomListCopyWith<$Res> {
  __$$_RoomListCopyWithImpl(
      _$_RoomList _value, $Res Function(_$_RoomList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextToken = null,
    Object? rooms = null,
  }) {
    return _then(_$_RoomList(
      nextToken: null == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String,
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoomList extends _RoomList {
  const _$_RoomList(
      {required this.nextToken,
      required final List<Map<String, dynamic>> rooms})
      : _rooms = rooms,
        super._();

  factory _$_RoomList.fromJson(Map<String, dynamic> json) =>
      _$$_RoomListFromJson(json);

  @override
  final String nextToken;
  final List<Map<String, dynamic>> _rooms;
  @override
  List<Map<String, dynamic>> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  String toString() {
    return 'RoomList(nextToken: $nextToken, rooms: $rooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomList &&
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
  _$$_RoomListCopyWith<_$_RoomList> get copyWith =>
      __$$_RoomListCopyWithImpl<_$_RoomList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomListToJson(
      this,
    );
  }
}

abstract class _RoomList extends RoomList {
  const factory _RoomList(
      {required final String nextToken,
      required final List<Map<String, dynamic>> rooms}) = _$_RoomList;
  const _RoomList._() : super._();

  factory _RoomList.fromJson(Map<String, dynamic> json) = _$_RoomList.fromJson;

  @override
  String get nextToken;
  @override
  List<Map<String, dynamic>> get rooms;
  @override
  @JsonKey(ignore: true)
  _$$_RoomListCopyWith<_$_RoomList> get copyWith =>
      throw _privateConstructorUsedError;
}
