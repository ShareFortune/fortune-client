// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UsersCreateRequest _$UsersCreateRequestFromJson(Map<String, dynamic> json) {
  return _UsersCreateRequest.fromJson(json);
}

/// @nodoc
mixin _$UsersCreateRequest {
  String get firebaseId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get birthday => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsersCreateRequestCopyWith<UsersCreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersCreateRequestCopyWith<$Res> {
  factory $UsersCreateRequestCopyWith(
          UsersCreateRequest value, $Res Function(UsersCreateRequest) then) =
      _$UsersCreateRequestCopyWithImpl<$Res, UsersCreateRequest>;
  @useResult
  $Res call({String firebaseId, String username, String birthday});
}

/// @nodoc
class _$UsersCreateRequestCopyWithImpl<$Res, $Val extends UsersCreateRequest>
    implements $UsersCreateRequestCopyWith<$Res> {
  _$UsersCreateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firebaseId = null,
    Object? username = null,
    Object? birthday = null,
  }) {
    return _then(_value.copyWith(
      firebaseId: null == firebaseId
          ? _value.firebaseId
          : firebaseId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UsersCreateRequestCopyWith<$Res>
    implements $UsersCreateRequestCopyWith<$Res> {
  factory _$$_UsersCreateRequestCopyWith(_$_UsersCreateRequest value,
          $Res Function(_$_UsersCreateRequest) then) =
      __$$_UsersCreateRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String firebaseId, String username, String birthday});
}

/// @nodoc
class __$$_UsersCreateRequestCopyWithImpl<$Res>
    extends _$UsersCreateRequestCopyWithImpl<$Res, _$_UsersCreateRequest>
    implements _$$_UsersCreateRequestCopyWith<$Res> {
  __$$_UsersCreateRequestCopyWithImpl(
      _$_UsersCreateRequest _value, $Res Function(_$_UsersCreateRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firebaseId = null,
    Object? username = null,
    Object? birthday = null,
  }) {
    return _then(_$_UsersCreateRequest(
      firebaseId: null == firebaseId
          ? _value.firebaseId
          : firebaseId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UsersCreateRequest implements _UsersCreateRequest {
  const _$_UsersCreateRequest(
      {required this.firebaseId,
      required this.username,
      required this.birthday});

  factory _$_UsersCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$$_UsersCreateRequestFromJson(json);

  @override
  final String firebaseId;
  @override
  final String username;
  @override
  final String birthday;

  @override
  String toString() {
    return 'UsersCreateRequest(firebaseId: $firebaseId, username: $username, birthday: $birthday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsersCreateRequest &&
            (identical(other.firebaseId, firebaseId) ||
                other.firebaseId == firebaseId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firebaseId, username, birthday);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsersCreateRequestCopyWith<_$_UsersCreateRequest> get copyWith =>
      __$$_UsersCreateRequestCopyWithImpl<_$_UsersCreateRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UsersCreateRequestToJson(
      this,
    );
  }
}

abstract class _UsersCreateRequest implements UsersCreateRequest {
  const factory _UsersCreateRequest(
      {required final String firebaseId,
      required final String username,
      required final String birthday}) = _$_UsersCreateRequest;

  factory _UsersCreateRequest.fromJson(Map<String, dynamic> json) =
      _$_UsersCreateRequest.fromJson;

  @override
  String get firebaseId;
  @override
  String get username;
  @override
  String get birthday;
  @override
  @JsonKey(ignore: true)
  _$$_UsersCreateRequestCopyWith<_$_UsersCreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

PostV1UsersResponse _$PostV1UsersResponseFromJson(Map<String, dynamic> json) {
  return _PostV1UsersResponse.fromJson(json);
}

/// @nodoc
mixin _$PostV1UsersResponse {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostV1UsersResponseCopyWith<PostV1UsersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostV1UsersResponseCopyWith<$Res> {
  factory $PostV1UsersResponseCopyWith(
          PostV1UsersResponse value, $Res Function(PostV1UsersResponse) then) =
      _$PostV1UsersResponseCopyWithImpl<$Res, PostV1UsersResponse>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$PostV1UsersResponseCopyWithImpl<$Res, $Val extends PostV1UsersResponse>
    implements $PostV1UsersResponseCopyWith<$Res> {
  _$PostV1UsersResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_PostV1UsersResponseCopyWith<$Res>
    implements $PostV1UsersResponseCopyWith<$Res> {
  factory _$$_PostV1UsersResponseCopyWith(_$_PostV1UsersResponse value,
          $Res Function(_$_PostV1UsersResponse) then) =
      __$$_PostV1UsersResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_PostV1UsersResponseCopyWithImpl<$Res>
    extends _$PostV1UsersResponseCopyWithImpl<$Res, _$_PostV1UsersResponse>
    implements _$$_PostV1UsersResponseCopyWith<$Res> {
  __$$_PostV1UsersResponseCopyWithImpl(_$_PostV1UsersResponse _value,
      $Res Function(_$_PostV1UsersResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_PostV1UsersResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostV1UsersResponse implements _PostV1UsersResponse {
  const _$_PostV1UsersResponse({required this.id});

  factory _$_PostV1UsersResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PostV1UsersResponseFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'PostV1UsersResponse(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostV1UsersResponse &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostV1UsersResponseCopyWith<_$_PostV1UsersResponse> get copyWith =>
      __$$_PostV1UsersResponseCopyWithImpl<_$_PostV1UsersResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostV1UsersResponseToJson(
      this,
    );
  }
}

abstract class _PostV1UsersResponse implements PostV1UsersResponse {
  const factory _PostV1UsersResponse({required final String id}) =
      _$_PostV1UsersResponse;

  factory _PostV1UsersResponse.fromJson(Map<String, dynamic> json) =
      _$_PostV1UsersResponse.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_PostV1UsersResponseCopyWith<_$_PostV1UsersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
