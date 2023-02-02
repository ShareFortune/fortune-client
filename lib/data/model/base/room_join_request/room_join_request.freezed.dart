// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_join_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoomJoinRequest _$RoomJoinRequestFromJson(Map<String, dynamic> json) {
  return _RoomJoinRequest.fromJson(json);
}

/// @nodoc
mixin _$RoomJoinRequest {
  @JsonKey(name: "userId")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "userImageURL")
  String get userImageURL => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomJoinRequestCopyWith<RoomJoinRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomJoinRequestCopyWith<$Res> {
  factory $RoomJoinRequestCopyWith(
          RoomJoinRequest value, $Res Function(RoomJoinRequest) then) =
      _$RoomJoinRequestCopyWithImpl<$Res, RoomJoinRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "userId") String userId,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "userImageURL") String userImageURL});
}

/// @nodoc
class _$RoomJoinRequestCopyWithImpl<$Res, $Val extends RoomJoinRequest>
    implements $RoomJoinRequestCopyWith<$Res> {
  _$RoomJoinRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$_RoomJoinRequestCopyWith<$Res>
    implements $RoomJoinRequestCopyWith<$Res> {
  factory _$$_RoomJoinRequestCopyWith(
          _$_RoomJoinRequest value, $Res Function(_$_RoomJoinRequest) then) =
      __$$_RoomJoinRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "userId") String userId,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "userImageURL") String userImageURL});
}

/// @nodoc
class __$$_RoomJoinRequestCopyWithImpl<$Res>
    extends _$RoomJoinRequestCopyWithImpl<$Res, _$_RoomJoinRequest>
    implements _$$_RoomJoinRequestCopyWith<$Res> {
  __$$_RoomJoinRequestCopyWithImpl(
      _$_RoomJoinRequest _value, $Res Function(_$_RoomJoinRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? name = null,
    Object? userImageURL = null,
  }) {
    return _then(_$_RoomJoinRequest(
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
class _$_RoomJoinRequest implements _RoomJoinRequest {
  const _$_RoomJoinRequest(
      {@JsonKey(name: "userId") required this.userId,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "userImageURL") required this.userImageURL});

  factory _$_RoomJoinRequest.fromJson(Map<String, dynamic> json) =>
      _$$_RoomJoinRequestFromJson(json);

  @override
  @JsonKey(name: "userId")
  final String userId;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "userImageURL")
  final String userImageURL;

  @override
  String toString() {
    return 'RoomJoinRequest(userId: $userId, name: $name, userImageURL: $userImageURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomJoinRequest &&
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
  _$$_RoomJoinRequestCopyWith<_$_RoomJoinRequest> get copyWith =>
      __$$_RoomJoinRequestCopyWithImpl<_$_RoomJoinRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomJoinRequestToJson(
      this,
    );
  }
}

abstract class _RoomJoinRequest implements RoomJoinRequest {
  const factory _RoomJoinRequest(
          {@JsonKey(name: "userId") required final String userId,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "userImageURL") required final String userImageURL}) =
      _$_RoomJoinRequest;

  factory _RoomJoinRequest.fromJson(Map<String, dynamic> json) =
      _$_RoomJoinRequest.fromJson;

  @override
  @JsonKey(name: "userId")
  String get userId;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "userImageURL")
  String get userImageURL;
  @override
  @JsonKey(ignore: true)
  _$$_RoomJoinRequestCopyWith<_$_RoomJoinRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
