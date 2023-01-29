// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_v1_rooms_id_room_join_request_response_join_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetV1RoomsIdRoomJoinRequestResponseJoinRequest
    _$GetV1RoomsIdRoomJoinRequestResponseJoinRequestFromJson(
        Map<String, dynamic> json) {
  return _GetV1RoomsIdRoomJoinRequestResponseJoinRequest.fromJson(json);
}

/// @nodoc
mixin _$GetV1RoomsIdRoomJoinRequestResponseJoinRequest {
  /// ルームID
  @JsonKey(name: "userId")
  String get userId => throw _privateConstructorUsedError;

  /// ルームネーム
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;

  /// リクエストユーザーの画像URL
  @JsonKey(name: "userImageURL")
  String get userImageURL => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetV1RoomsIdRoomJoinRequestResponseJoinRequestCopyWith<
          GetV1RoomsIdRoomJoinRequestResponseJoinRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetV1RoomsIdRoomJoinRequestResponseJoinRequestCopyWith<$Res> {
  factory $GetV1RoomsIdRoomJoinRequestResponseJoinRequestCopyWith(
          GetV1RoomsIdRoomJoinRequestResponseJoinRequest value,
          $Res Function(GetV1RoomsIdRoomJoinRequestResponseJoinRequest) then) =
      _$GetV1RoomsIdRoomJoinRequestResponseJoinRequestCopyWithImpl<$Res,
          GetV1RoomsIdRoomJoinRequestResponseJoinRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "userId") String userId,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "userImageURL") String userImageURL});
}

/// @nodoc
class _$GetV1RoomsIdRoomJoinRequestResponseJoinRequestCopyWithImpl<$Res,
        $Val extends GetV1RoomsIdRoomJoinRequestResponseJoinRequest>
    implements $GetV1RoomsIdRoomJoinRequestResponseJoinRequestCopyWith<$Res> {
  _$GetV1RoomsIdRoomJoinRequestResponseJoinRequestCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? name = null,
    Object? userImageURL = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userImageURL: null == userImageURL
          ? _value.userImageURL
          : userImageURL // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetV1RoomsIdRoomJoinRequestResponseJoinRequestCopyWith<$Res>
    implements $GetV1RoomsIdRoomJoinRequestResponseJoinRequestCopyWith<$Res> {
  factory _$$_GetV1RoomsIdRoomJoinRequestResponseJoinRequestCopyWith(
          _$_GetV1RoomsIdRoomJoinRequestResponseJoinRequest value,
          $Res Function(_$_GetV1RoomsIdRoomJoinRequestResponseJoinRequest)
              then) =
      __$$_GetV1RoomsIdRoomJoinRequestResponseJoinRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "userId") String userId,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "userImageURL") String userImageURL});
}

/// @nodoc
class __$$_GetV1RoomsIdRoomJoinRequestResponseJoinRequestCopyWithImpl<$Res>
    extends _$GetV1RoomsIdRoomJoinRequestResponseJoinRequestCopyWithImpl<$Res,
        _$_GetV1RoomsIdRoomJoinRequestResponseJoinRequest>
    implements
        _$$_GetV1RoomsIdRoomJoinRequestResponseJoinRequestCopyWith<$Res> {
  __$$_GetV1RoomsIdRoomJoinRequestResponseJoinRequestCopyWithImpl(
      _$_GetV1RoomsIdRoomJoinRequestResponseJoinRequest _value,
      $Res Function(_$_GetV1RoomsIdRoomJoinRequestResponseJoinRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? name = null,
    Object? userImageURL = null,
  }) {
    return _then(_$_GetV1RoomsIdRoomJoinRequestResponseJoinRequest(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userImageURL: null == userImageURL
          ? _value.userImageURL
          : userImageURL // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetV1RoomsIdRoomJoinRequestResponseJoinRequest
    implements _GetV1RoomsIdRoomJoinRequestResponseJoinRequest {
  const _$_GetV1RoomsIdRoomJoinRequestResponseJoinRequest(
      {@JsonKey(name: "userId") required this.userId,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "userImageURL") required this.userImageURL});

  factory _$_GetV1RoomsIdRoomJoinRequestResponseJoinRequest.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetV1RoomsIdRoomJoinRequestResponseJoinRequestFromJson(json);

  /// ルームID
  @override
  @JsonKey(name: "userId")
  final String userId;

  /// ルームネーム
  @override
  @JsonKey(name: "name")
  final String name;

  /// リクエストユーザーの画像URL
  @override
  @JsonKey(name: "userImageURL")
  final String userImageURL;

  @override
  String toString() {
    return 'GetV1RoomsIdRoomJoinRequestResponseJoinRequest(userId: $userId, name: $name, userImageURL: $userImageURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetV1RoomsIdRoomJoinRequestResponseJoinRequest &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userImageURL, userImageURL) ||
                other.userImageURL == userImageURL));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, name, userImageURL);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetV1RoomsIdRoomJoinRequestResponseJoinRequestCopyWith<
          _$_GetV1RoomsIdRoomJoinRequestResponseJoinRequest>
      get copyWith =>
          __$$_GetV1RoomsIdRoomJoinRequestResponseJoinRequestCopyWithImpl<
                  _$_GetV1RoomsIdRoomJoinRequestResponseJoinRequest>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetV1RoomsIdRoomJoinRequestResponseJoinRequestToJson(
      this,
    );
  }
}

abstract class _GetV1RoomsIdRoomJoinRequestResponseJoinRequest
    implements GetV1RoomsIdRoomJoinRequestResponseJoinRequest {
  const factory _GetV1RoomsIdRoomJoinRequestResponseJoinRequest(
          {@JsonKey(name: "userId") required final String userId,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "userImageURL") required final String userImageURL}) =
      _$_GetV1RoomsIdRoomJoinRequestResponseJoinRequest;

  factory _GetV1RoomsIdRoomJoinRequestResponseJoinRequest.fromJson(
          Map<String, dynamic> json) =
      _$_GetV1RoomsIdRoomJoinRequestResponseJoinRequest.fromJson;

  @override

  /// ルームID
  @JsonKey(name: "userId")
  String get userId;
  @override

  /// ルームネーム
  @JsonKey(name: "name")
  String get name;
  @override

  /// リクエストユーザーの画像URL
  @JsonKey(name: "userImageURL")
  String get userImageURL;
  @override
  @JsonKey(ignore: true)
  _$$_GetV1RoomsIdRoomJoinRequestResponseJoinRequestCopyWith<
          _$_GetV1RoomsIdRoomJoinRequestResponseJoinRequest>
      get copyWith => throw _privateConstructorUsedError;
}
