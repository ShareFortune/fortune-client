// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_v1_room_join_requests.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetV1RoomJoinRequestsResponse _$GetV1RoomJoinRequestsResponseFromJson(
    Map<String, dynamic> json) {
  return _GetV1RoomJoinRequestsResponse.fromJson(json);
}

/// @nodoc
mixin _$GetV1RoomJoinRequestsResponse {
  @JsonKey(name: "nextToken")
  String get nextToken => throw _privateConstructorUsedError;
  @JsonKey(name: "joinRequests")
  String get joinRequests => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetV1RoomJoinRequestsResponseCopyWith<GetV1RoomJoinRequestsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetV1RoomJoinRequestsResponseCopyWith<$Res> {
  factory $GetV1RoomJoinRequestsResponseCopyWith(
          GetV1RoomJoinRequestsResponse value,
          $Res Function(GetV1RoomJoinRequestsResponse) then) =
      _$GetV1RoomJoinRequestsResponseCopyWithImpl<$Res,
          GetV1RoomJoinRequestsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "nextToken") String nextToken,
      @JsonKey(name: "joinRequests") String joinRequests});
}

/// @nodoc
class _$GetV1RoomJoinRequestsResponseCopyWithImpl<$Res,
        $Val extends GetV1RoomJoinRequestsResponse>
    implements $GetV1RoomJoinRequestsResponseCopyWith<$Res> {
  _$GetV1RoomJoinRequestsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextToken = null,
    Object? joinRequests = null,
  }) {
    return _then(_value.copyWith(
      nextToken: null == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String,
      joinRequests: null == joinRequests
          ? _value.joinRequests
          : joinRequests // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetV1RoomJoinRequestsResponseCopyWith<$Res>
    implements $GetV1RoomJoinRequestsResponseCopyWith<$Res> {
  factory _$$_GetV1RoomJoinRequestsResponseCopyWith(
          _$_GetV1RoomJoinRequestsResponse value,
          $Res Function(_$_GetV1RoomJoinRequestsResponse) then) =
      __$$_GetV1RoomJoinRequestsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "nextToken") String nextToken,
      @JsonKey(name: "joinRequests") String joinRequests});
}

/// @nodoc
class __$$_GetV1RoomJoinRequestsResponseCopyWithImpl<$Res>
    extends _$GetV1RoomJoinRequestsResponseCopyWithImpl<$Res,
        _$_GetV1RoomJoinRequestsResponse>
    implements _$$_GetV1RoomJoinRequestsResponseCopyWith<$Res> {
  __$$_GetV1RoomJoinRequestsResponseCopyWithImpl(
      _$_GetV1RoomJoinRequestsResponse _value,
      $Res Function(_$_GetV1RoomJoinRequestsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextToken = null,
    Object? joinRequests = null,
  }) {
    return _then(_$_GetV1RoomJoinRequestsResponse(
      nextToken: null == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String,
      joinRequests: null == joinRequests
          ? _value.joinRequests
          : joinRequests // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetV1RoomJoinRequestsResponse
    implements _GetV1RoomJoinRequestsResponse {
  const _$_GetV1RoomJoinRequestsResponse(
      {@JsonKey(name: "nextToken") required this.nextToken,
      @JsonKey(name: "joinRequests") required this.joinRequests});

  factory _$_GetV1RoomJoinRequestsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetV1RoomJoinRequestsResponseFromJson(json);

  @override
  @JsonKey(name: "nextToken")
  final String nextToken;
  @override
  @JsonKey(name: "joinRequests")
  final String joinRequests;

  @override
  String toString() {
    return 'GetV1RoomJoinRequestsResponse(nextToken: $nextToken, joinRequests: $joinRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetV1RoomJoinRequestsResponse &&
            (identical(other.nextToken, nextToken) ||
                other.nextToken == nextToken) &&
            (identical(other.joinRequests, joinRequests) ||
                other.joinRequests == joinRequests));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nextToken, joinRequests);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetV1RoomJoinRequestsResponseCopyWith<_$_GetV1RoomJoinRequestsResponse>
      get copyWith => __$$_GetV1RoomJoinRequestsResponseCopyWithImpl<
          _$_GetV1RoomJoinRequestsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetV1RoomJoinRequestsResponseToJson(
      this,
    );
  }
}

abstract class _GetV1RoomJoinRequestsResponse
    implements GetV1RoomJoinRequestsResponse {
  const factory _GetV1RoomJoinRequestsResponse(
          {@JsonKey(name: "nextToken") required final String nextToken,
          @JsonKey(name: "joinRequests") required final String joinRequests}) =
      _$_GetV1RoomJoinRequestsResponse;

  factory _GetV1RoomJoinRequestsResponse.fromJson(Map<String, dynamic> json) =
      _$_GetV1RoomJoinRequestsResponse.fromJson;

  @override
  @JsonKey(name: "nextToken")
  String get nextToken;
  @override
  @JsonKey(name: "joinRequests")
  String get joinRequests;
  @override
  @JsonKey(ignore: true)
  _$$_GetV1RoomJoinRequestsResponseCopyWith<_$_GetV1RoomJoinRequestsResponse>
      get copyWith => throw _privateConstructorUsedError;
}
