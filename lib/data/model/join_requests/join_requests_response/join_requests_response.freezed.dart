// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'join_requests_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JoinRequestIdResponse _$JoinRequestIdResponseFromJson(
    Map<String, dynamic> json) {
  return _JoinRequestIdResponse.fromJson(json);
}

/// @nodoc
mixin _$JoinRequestIdResponse {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JoinRequestIdResponseCopyWith<JoinRequestIdResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinRequestIdResponseCopyWith<$Res> {
  factory $JoinRequestIdResponseCopyWith(JoinRequestIdResponse value,
          $Res Function(JoinRequestIdResponse) then) =
      _$JoinRequestIdResponseCopyWithImpl<$Res, JoinRequestIdResponse>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$JoinRequestIdResponseCopyWithImpl<$Res,
        $Val extends JoinRequestIdResponse>
    implements $JoinRequestIdResponseCopyWith<$Res> {
  _$JoinRequestIdResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_JoinRequestIdResponseCopyWith<$Res>
    implements $JoinRequestIdResponseCopyWith<$Res> {
  factory _$$_JoinRequestIdResponseCopyWith(_$_JoinRequestIdResponse value,
          $Res Function(_$_JoinRequestIdResponse) then) =
      __$$_JoinRequestIdResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_JoinRequestIdResponseCopyWithImpl<$Res>
    extends _$JoinRequestIdResponseCopyWithImpl<$Res, _$_JoinRequestIdResponse>
    implements _$$_JoinRequestIdResponseCopyWith<$Res> {
  __$$_JoinRequestIdResponseCopyWithImpl(_$_JoinRequestIdResponse _value,
      $Res Function(_$_JoinRequestIdResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_JoinRequestIdResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JoinRequestIdResponse implements _JoinRequestIdResponse {
  const _$_JoinRequestIdResponse({required this.id});

  factory _$_JoinRequestIdResponse.fromJson(Map<String, dynamic> json) =>
      _$$_JoinRequestIdResponseFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'JoinRequestIdResponse(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JoinRequestIdResponse &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JoinRequestIdResponseCopyWith<_$_JoinRequestIdResponse> get copyWith =>
      __$$_JoinRequestIdResponseCopyWithImpl<_$_JoinRequestIdResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JoinRequestIdResponseToJson(
      this,
    );
  }
}

abstract class _JoinRequestIdResponse implements JoinRequestIdResponse {
  const factory _JoinRequestIdResponse({required final String id}) =
      _$_JoinRequestIdResponse;

  factory _JoinRequestIdResponse.fromJson(Map<String, dynamic> json) =
      _$_JoinRequestIdResponse.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_JoinRequestIdResponseCopyWith<_$_JoinRequestIdResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

JoinRequestsResponse _$JoinRequestsResponseFromJson(Map<String, dynamic> json) {
  return _JoinRequestsResponse.fromJson(json);
}

/// @nodoc
mixin _$JoinRequestsResponse {
  String get nextToken => throw _privateConstructorUsedError;
  List<RoomJoinRequest> get joinRequests => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JoinRequestsResponseCopyWith<JoinRequestsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinRequestsResponseCopyWith<$Res> {
  factory $JoinRequestsResponseCopyWith(JoinRequestsResponse value,
          $Res Function(JoinRequestsResponse) then) =
      _$JoinRequestsResponseCopyWithImpl<$Res, JoinRequestsResponse>;
  @useResult
  $Res call({String nextToken, List<RoomJoinRequest> joinRequests});
}

/// @nodoc
class _$JoinRequestsResponseCopyWithImpl<$Res,
        $Val extends JoinRequestsResponse>
    implements $JoinRequestsResponseCopyWith<$Res> {
  _$JoinRequestsResponseCopyWithImpl(this._value, this._then);

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
              as List<RoomJoinRequest>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JoinRequestsResponseCopyWith<$Res>
    implements $JoinRequestsResponseCopyWith<$Res> {
  factory _$$_JoinRequestsResponseCopyWith(_$_JoinRequestsResponse value,
          $Res Function(_$_JoinRequestsResponse) then) =
      __$$_JoinRequestsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nextToken, List<RoomJoinRequest> joinRequests});
}

/// @nodoc
class __$$_JoinRequestsResponseCopyWithImpl<$Res>
    extends _$JoinRequestsResponseCopyWithImpl<$Res, _$_JoinRequestsResponse>
    implements _$$_JoinRequestsResponseCopyWith<$Res> {
  __$$_JoinRequestsResponseCopyWithImpl(_$_JoinRequestsResponse _value,
      $Res Function(_$_JoinRequestsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextToken = null,
    Object? joinRequests = null,
  }) {
    return _then(_$_JoinRequestsResponse(
      nextToken: null == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String,
      joinRequests: null == joinRequests
          ? _value._joinRequests
          : joinRequests // ignore: cast_nullable_to_non_nullable
              as List<RoomJoinRequest>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JoinRequestsResponse implements _JoinRequestsResponse {
  const _$_JoinRequestsResponse(
      {required this.nextToken,
      required final List<RoomJoinRequest> joinRequests})
      : _joinRequests = joinRequests;

  factory _$_JoinRequestsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_JoinRequestsResponseFromJson(json);

  @override
  final String nextToken;
  final List<RoomJoinRequest> _joinRequests;
  @override
  List<RoomJoinRequest> get joinRequests {
    if (_joinRequests is EqualUnmodifiableListView) return _joinRequests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_joinRequests);
  }

  @override
  String toString() {
    return 'JoinRequestsResponse(nextToken: $nextToken, joinRequests: $joinRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JoinRequestsResponse &&
            (identical(other.nextToken, nextToken) ||
                other.nextToken == nextToken) &&
            const DeepCollectionEquality()
                .equals(other._joinRequests, _joinRequests));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nextToken,
      const DeepCollectionEquality().hash(_joinRequests));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JoinRequestsResponseCopyWith<_$_JoinRequestsResponse> get copyWith =>
      __$$_JoinRequestsResponseCopyWithImpl<_$_JoinRequestsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JoinRequestsResponseToJson(
      this,
    );
  }
}

abstract class _JoinRequestsResponse implements JoinRequestsResponse {
  const factory _JoinRequestsResponse(
          {required final String nextToken,
          required final List<RoomJoinRequest> joinRequests}) =
      _$_JoinRequestsResponse;

  factory _JoinRequestsResponse.fromJson(Map<String, dynamic> json) =
      _$_JoinRequestsResponse.fromJson;

  @override
  String get nextToken;
  @override
  List<RoomJoinRequest> get joinRequests;
  @override
  @JsonKey(ignore: true)
  _$$_JoinRequestsResponseCopyWith<_$_JoinRequestsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

RoomJoinRequest _$RoomJoinRequestFromJson(Map<String, dynamic> json) {
  return _RoomJoinRequest.fromJson(json);
}

/// @nodoc
mixin _$RoomJoinRequest {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
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
  $Res call({String id, String name, String userId, String userImageURL});
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
    Object? id = null,
    Object? name = null,
    Object? userId = null,
    Object? userImageURL = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
  $Res call({String id, String name, String userId, String userImageURL});
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
    Object? id = null,
    Object? name = null,
    Object? userId = null,
    Object? userImageURL = null,
  }) {
    return _then(_$_RoomJoinRequest(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
      {required this.id,
      required this.name,
      required this.userId,
      required this.userImageURL});

  factory _$_RoomJoinRequest.fromJson(Map<String, dynamic> json) =>
      _$$_RoomJoinRequestFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String userId;
  @override
  final String userImageURL;

  @override
  String toString() {
    return 'RoomJoinRequest(id: $id, name: $name, userId: $userId, userImageURL: $userImageURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomJoinRequest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userImageURL, userImageURL) ||
                other.userImageURL == userImageURL));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, userId, userImageURL);

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
      {required final String id,
      required final String name,
      required final String userId,
      required final String userImageURL}) = _$_RoomJoinRequest;

  factory _RoomJoinRequest.fromJson(Map<String, dynamic> json) =
      _$_RoomJoinRequest.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get userId;
  @override
  String get userImageURL;
  @override
  @JsonKey(ignore: true)
  _$$_RoomJoinRequestCopyWith<_$_RoomJoinRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
