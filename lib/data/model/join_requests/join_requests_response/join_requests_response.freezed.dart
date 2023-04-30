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
  List<JoinRequest> get joinRequests => throw _privateConstructorUsedError;

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
  $Res call({String nextToken, List<JoinRequest> joinRequests});
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
              as List<JoinRequest>,
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
  $Res call({String nextToken, List<JoinRequest> joinRequests});
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
              as List<JoinRequest>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JoinRequestsResponse implements _JoinRequestsResponse {
  const _$_JoinRequestsResponse(
      {required this.nextToken, required final List<JoinRequest> joinRequests})
      : _joinRequests = joinRequests;

  factory _$_JoinRequestsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_JoinRequestsResponseFromJson(json);

  @override
  final String nextToken;
  final List<JoinRequest> _joinRequests;
  @override
  List<JoinRequest> get joinRequests {
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
      required final List<JoinRequest> joinRequests}) = _$_JoinRequestsResponse;

  factory _JoinRequestsResponse.fromJson(Map<String, dynamic> json) =
      _$_JoinRequestsResponse.fromJson;

  @override
  String get nextToken;
  @override
  List<JoinRequest> get joinRequests;
  @override
  @JsonKey(ignore: true)
  _$$_JoinRequestsResponseCopyWith<_$_JoinRequestsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
