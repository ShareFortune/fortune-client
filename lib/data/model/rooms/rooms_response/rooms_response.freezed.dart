// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rooms_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoomIdResponse _$RoomIdResponseFromJson(Map<String, dynamic> json) {
  return _RoomIdResponse.fromJson(json);
}

/// @nodoc
mixin _$RoomIdResponse {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomIdResponseCopyWith<RoomIdResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomIdResponseCopyWith<$Res> {
  factory $RoomIdResponseCopyWith(
          RoomIdResponse value, $Res Function(RoomIdResponse) then) =
      _$RoomIdResponseCopyWithImpl<$Res, RoomIdResponse>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$RoomIdResponseCopyWithImpl<$Res, $Val extends RoomIdResponse>
    implements $RoomIdResponseCopyWith<$Res> {
  _$RoomIdResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoomIdResponseCopyWith<$Res>
    implements $RoomIdResponseCopyWith<$Res> {
  factory _$$_RoomIdResponseCopyWith(
          _$_RoomIdResponse value, $Res Function(_$_RoomIdResponse) then) =
      __$$_RoomIdResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_RoomIdResponseCopyWithImpl<$Res>
    extends _$RoomIdResponseCopyWithImpl<$Res, _$_RoomIdResponse>
    implements _$$_RoomIdResponseCopyWith<$Res> {
  __$$_RoomIdResponseCopyWithImpl(
      _$_RoomIdResponse _value, $Res Function(_$_RoomIdResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_RoomIdResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoomIdResponse implements _RoomIdResponse {
  const _$_RoomIdResponse({required this.id});

  factory _$_RoomIdResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RoomIdResponseFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'RoomIdResponse(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomIdResponse &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomIdResponseCopyWith<_$_RoomIdResponse> get copyWith =>
      __$$_RoomIdResponseCopyWithImpl<_$_RoomIdResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomIdResponseToJson(
      this,
    );
  }
}

abstract class _RoomIdResponse implements RoomIdResponse {
  const factory _RoomIdResponse({required final String id}) = _$_RoomIdResponse;

  factory _RoomIdResponse.fromJson(Map<String, dynamic> json) =
      _$_RoomIdResponse.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_RoomIdResponseCopyWith<_$_RoomIdResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

RoomsResponse _$RoomsResponseFromJson(Map<String, dynamic> json) {
  return _RoomsResponse.fromJson(json);
}

/// @nodoc
mixin _$RoomsResponse {
  String get nextToken => throw _privateConstructorUsedError;
  List<Room> get rooms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomsResponseCopyWith<RoomsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomsResponseCopyWith<$Res> {
  factory $RoomsResponseCopyWith(
          RoomsResponse value, $Res Function(RoomsResponse) then) =
      _$RoomsResponseCopyWithImpl<$Res, RoomsResponse>;
  @useResult
  $Res call({String nextToken, List<Room> rooms});
}

/// @nodoc
class _$RoomsResponseCopyWithImpl<$Res, $Val extends RoomsResponse>
    implements $RoomsResponseCopyWith<$Res> {
  _$RoomsResponseCopyWithImpl(this._value, this._then);

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
              as List<Room>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoomsResponseCopyWith<$Res>
    implements $RoomsResponseCopyWith<$Res> {
  factory _$$_RoomsResponseCopyWith(
          _$_RoomsResponse value, $Res Function(_$_RoomsResponse) then) =
      __$$_RoomsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nextToken, List<Room> rooms});
}

/// @nodoc
class __$$_RoomsResponseCopyWithImpl<$Res>
    extends _$RoomsResponseCopyWithImpl<$Res, _$_RoomsResponse>
    implements _$$_RoomsResponseCopyWith<$Res> {
  __$$_RoomsResponseCopyWithImpl(
      _$_RoomsResponse _value, $Res Function(_$_RoomsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextToken = null,
    Object? rooms = null,
  }) {
    return _then(_$_RoomsResponse(
      nextToken: null == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String,
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoomsResponse implements _RoomsResponse {
  const _$_RoomsResponse(
      {required this.nextToken, required final List<Room> rooms})
      : _rooms = rooms;

  factory _$_RoomsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RoomsResponseFromJson(json);

  @override
  final String nextToken;
  final List<Room> _rooms;
  @override
  List<Room> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  String toString() {
    return 'RoomsResponse(nextToken: $nextToken, rooms: $rooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomsResponse &&
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
  _$$_RoomsResponseCopyWith<_$_RoomsResponse> get copyWith =>
      __$$_RoomsResponseCopyWithImpl<_$_RoomsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomsResponseToJson(
      this,
    );
  }
}

abstract class _RoomsResponse implements RoomsResponse {
  const factory _RoomsResponse(
      {required final String nextToken,
      required final List<Room> rooms}) = _$_RoomsResponse;

  factory _RoomsResponse.fromJson(Map<String, dynamic> json) =
      _$_RoomsResponse.fromJson;

  @override
  String get nextToken;
  @override
  List<Room> get rooms;
  @override
  @JsonKey(ignore: true)
  _$$_RoomsResponseCopyWith<_$_RoomsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
