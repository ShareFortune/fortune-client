// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_v1_users.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostV1UsersRequest _$PostV1UsersRequestFromJson(Map<String, dynamic> json) {
  return _PostV1UsersRequest.fromJson(json);
}

/// @nodoc
mixin _$PostV1UsersRequest {
  @JsonKey(name: "firebaseId")
  String get firebaseId => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: "birthday")
  String get birthday => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostV1UsersRequestCopyWith<PostV1UsersRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostV1UsersRequestCopyWith<$Res> {
  factory $PostV1UsersRequestCopyWith(
          PostV1UsersRequest value, $Res Function(PostV1UsersRequest) then) =
      _$PostV1UsersRequestCopyWithImpl<$Res, PostV1UsersRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "firebaseId") String firebaseId,
      @JsonKey(name: "username") String username,
      @JsonKey(name: "birthday") String birthday});
}

/// @nodoc
class _$PostV1UsersRequestCopyWithImpl<$Res, $Val extends PostV1UsersRequest>
    implements $PostV1UsersRequestCopyWith<$Res> {
  _$PostV1UsersRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$_PostV1UsersRequestCopyWith<$Res>
    implements $PostV1UsersRequestCopyWith<$Res> {
  factory _$$_PostV1UsersRequestCopyWith(_$_PostV1UsersRequest value,
          $Res Function(_$_PostV1UsersRequest) then) =
      __$$_PostV1UsersRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "firebaseId") String firebaseId,
      @JsonKey(name: "username") String username,
      @JsonKey(name: "birthday") String birthday});
}

/// @nodoc
class __$$_PostV1UsersRequestCopyWithImpl<$Res>
    extends _$PostV1UsersRequestCopyWithImpl<$Res, _$_PostV1UsersRequest>
    implements _$$_PostV1UsersRequestCopyWith<$Res> {
  __$$_PostV1UsersRequestCopyWithImpl(
      _$_PostV1UsersRequest _value, $Res Function(_$_PostV1UsersRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firebaseId = null,
    Object? username = null,
    Object? birthday = null,
  }) {
    return _then(_$_PostV1UsersRequest(
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
class _$_PostV1UsersRequest implements _PostV1UsersRequest {
  const _$_PostV1UsersRequest(
      {@JsonKey(name: "firebaseId") required this.firebaseId,
      @JsonKey(name: "username") required this.username,
      @JsonKey(name: "birthday") required this.birthday});

  factory _$_PostV1UsersRequest.fromJson(Map<String, dynamic> json) =>
      _$$_PostV1UsersRequestFromJson(json);

  @override
  @JsonKey(name: "firebaseId")
  final String firebaseId;
  @override
  @JsonKey(name: "username")
  final String username;
  @override
  @JsonKey(name: "birthday")
  final String birthday;

  @override
  String toString() {
    return 'PostV1UsersRequest(firebaseId: $firebaseId, username: $username, birthday: $birthday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostV1UsersRequest &&
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
  _$$_PostV1UsersRequestCopyWith<_$_PostV1UsersRequest> get copyWith =>
      __$$_PostV1UsersRequestCopyWithImpl<_$_PostV1UsersRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostV1UsersRequestToJson(
      this,
    );
  }
}

abstract class _PostV1UsersRequest implements PostV1UsersRequest {
  const factory _PostV1UsersRequest(
          {@JsonKey(name: "firebaseId") required final String firebaseId,
          @JsonKey(name: "username") required final String username,
          @JsonKey(name: "birthday") required final String birthday}) =
      _$_PostV1UsersRequest;

  factory _PostV1UsersRequest.fromJson(Map<String, dynamic> json) =
      _$_PostV1UsersRequest.fromJson;

  @override
  @JsonKey(name: "firebaseId")
  String get firebaseId;
  @override
  @JsonKey(name: "username")
  String get username;
  @override
  @JsonKey(name: "birthday")
  String get birthday;
  @override
  @JsonKey(ignore: true)
  _$$_PostV1UsersRequestCopyWith<_$_PostV1UsersRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

PostV1UsersResponse _$PostV1UsersResponseFromJson(Map<String, dynamic> json) {
  return _PostV1UsersResponse.fromJson(json);
}

/// @nodoc
mixin _$PostV1UsersResponse {
  @JsonKey(name: 'id')
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
  $Res call({@JsonKey(name: 'id') String id});
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
  $Res call({@JsonKey(name: 'id') String id});
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
  const _$_PostV1UsersResponse({@JsonKey(name: 'id') required this.id});

  factory _$_PostV1UsersResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PostV1UsersResponseFromJson(json);

  @override
  @JsonKey(name: 'id')
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
  const factory _PostV1UsersResponse(
      {@JsonKey(name: 'id') required final String id}) = _$_PostV1UsersResponse;

  factory _PostV1UsersResponse.fromJson(Map<String, dynamic> json) =
      _$_PostV1UsersResponse.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_PostV1UsersResponseCopyWith<_$_PostV1UsersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
