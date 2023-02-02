// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_v1_rooms_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetV1RoomsSearchResponse _$GetV1RoomsSearchResponseFromJson(
    Map<String, dynamic> json) {
  return _GetV1RoomsSearchResponse.fromJson(json);
}

/// @nodoc
mixin _$GetV1RoomsSearchResponse {
  @JsonKey(name: "nextToken")
  String get nextToken => throw _privateConstructorUsedError;
  @JsonKey(name: "rooms")
  Room get rooms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetV1RoomsSearchResponseCopyWith<GetV1RoomsSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetV1RoomsSearchResponseCopyWith<$Res> {
  factory $GetV1RoomsSearchResponseCopyWith(GetV1RoomsSearchResponse value,
          $Res Function(GetV1RoomsSearchResponse) then) =
      _$GetV1RoomsSearchResponseCopyWithImpl<$Res, GetV1RoomsSearchResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "nextToken") String nextToken,
      @JsonKey(name: "rooms") Room rooms});

  $RoomCopyWith<$Res> get rooms;
}

/// @nodoc
class _$GetV1RoomsSearchResponseCopyWithImpl<$Res,
        $Val extends GetV1RoomsSearchResponse>
    implements $GetV1RoomsSearchResponseCopyWith<$Res> {
  _$GetV1RoomsSearchResponseCopyWithImpl(this._value, this._then);

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
              as Room,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RoomCopyWith<$Res> get rooms {
    return $RoomCopyWith<$Res>(_value.rooms, (value) {
      return _then(_value.copyWith(rooms: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GetV1RoomsSearchResponseCopyWith<$Res>
    implements $GetV1RoomsSearchResponseCopyWith<$Res> {
  factory _$$_GetV1RoomsSearchResponseCopyWith(
          _$_GetV1RoomsSearchResponse value,
          $Res Function(_$_GetV1RoomsSearchResponse) then) =
      __$$_GetV1RoomsSearchResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "nextToken") String nextToken,
      @JsonKey(name: "rooms") Room rooms});

  @override
  $RoomCopyWith<$Res> get rooms;
}

/// @nodoc
class __$$_GetV1RoomsSearchResponseCopyWithImpl<$Res>
    extends _$GetV1RoomsSearchResponseCopyWithImpl<$Res,
        _$_GetV1RoomsSearchResponse>
    implements _$$_GetV1RoomsSearchResponseCopyWith<$Res> {
  __$$_GetV1RoomsSearchResponseCopyWithImpl(_$_GetV1RoomsSearchResponse _value,
      $Res Function(_$_GetV1RoomsSearchResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextToken = null,
    Object? rooms = null,
  }) {
    return _then(_$_GetV1RoomsSearchResponse(
      nextToken: null == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String,
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as Room,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetV1RoomsSearchResponse implements _GetV1RoomsSearchResponse {
  const _$_GetV1RoomsSearchResponse(
      {@JsonKey(name: "nextToken") required this.nextToken,
      @JsonKey(name: "rooms") required this.rooms});

  factory _$_GetV1RoomsSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetV1RoomsSearchResponseFromJson(json);

  @override
  @JsonKey(name: "nextToken")
  final String nextToken;
  @override
  @JsonKey(name: "rooms")
  final Room rooms;

  @override
  String toString() {
    return 'GetV1RoomsSearchResponse(nextToken: $nextToken, rooms: $rooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetV1RoomsSearchResponse &&
            (identical(other.nextToken, nextToken) ||
                other.nextToken == nextToken) &&
            (identical(other.rooms, rooms) || other.rooms == rooms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nextToken, rooms);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetV1RoomsSearchResponseCopyWith<_$_GetV1RoomsSearchResponse>
      get copyWith => __$$_GetV1RoomsSearchResponseCopyWithImpl<
          _$_GetV1RoomsSearchResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetV1RoomsSearchResponseToJson(
      this,
    );
  }
}

abstract class _GetV1RoomsSearchResponse implements GetV1RoomsSearchResponse {
  const factory _GetV1RoomsSearchResponse(
          {@JsonKey(name: "nextToken") required final String nextToken,
          @JsonKey(name: "rooms") required final Room rooms}) =
      _$_GetV1RoomsSearchResponse;

  factory _GetV1RoomsSearchResponse.fromJson(Map<String, dynamic> json) =
      _$_GetV1RoomsSearchResponse.fromJson;

  @override
  @JsonKey(name: "nextToken")
  String get nextToken;
  @override
  @JsonKey(name: "rooms")
  Room get rooms;
  @override
  @JsonKey(ignore: true)
  _$$_GetV1RoomsSearchResponseCopyWith<_$_GetV1RoomsSearchResponse>
      get copyWith => throw _privateConstructorUsedError;
}
