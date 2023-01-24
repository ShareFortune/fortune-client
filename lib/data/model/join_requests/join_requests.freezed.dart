// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'join_requests.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JoinRequests _$JoinRequestsFromJson(Map<String, dynamic> json) {
  return _JoinRequests.fromJson(json);
}

/// @nodoc
mixin _$JoinRequests {
  @JsonKey(name: 'nextToken')
  String get nextToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'joinRequests')
  List<JoinRequest> get joinRequests => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JoinRequestsCopyWith<JoinRequests> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinRequestsCopyWith<$Res> {
  factory $JoinRequestsCopyWith(
          JoinRequests value, $Res Function(JoinRequests) then) =
      _$JoinRequestsCopyWithImpl<$Res, JoinRequests>;
  @useResult
  $Res call(
      {@JsonKey(name: 'nextToken') String nextToken,
      @JsonKey(name: 'joinRequests') List<JoinRequest> joinRequests});
}

/// @nodoc
class _$JoinRequestsCopyWithImpl<$Res, $Val extends JoinRequests>
    implements $JoinRequestsCopyWith<$Res> {
  _$JoinRequestsCopyWithImpl(this._value, this._then);

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
abstract class _$$_JoinRequestsCopyWith<$Res>
    implements $JoinRequestsCopyWith<$Res> {
  factory _$$_JoinRequestsCopyWith(
          _$_JoinRequests value, $Res Function(_$_JoinRequests) then) =
      __$$_JoinRequestsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'nextToken') String nextToken,
      @JsonKey(name: 'joinRequests') List<JoinRequest> joinRequests});
}

/// @nodoc
class __$$_JoinRequestsCopyWithImpl<$Res>
    extends _$JoinRequestsCopyWithImpl<$Res, _$_JoinRequests>
    implements _$$_JoinRequestsCopyWith<$Res> {
  __$$_JoinRequestsCopyWithImpl(
      _$_JoinRequests _value, $Res Function(_$_JoinRequests) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextToken = null,
    Object? joinRequests = null,
  }) {
    return _then(_$_JoinRequests(
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
class _$_JoinRequests implements _JoinRequests {
  const _$_JoinRequests(
      {@JsonKey(name: 'nextToken')
          required this.nextToken,
      @JsonKey(name: 'joinRequests')
          required final List<JoinRequest> joinRequests})
      : _joinRequests = joinRequests;

  factory _$_JoinRequests.fromJson(Map<String, dynamic> json) =>
      _$$_JoinRequestsFromJson(json);

  @override
  @JsonKey(name: 'nextToken')
  final String nextToken;
  final List<JoinRequest> _joinRequests;
  @override
  @JsonKey(name: 'joinRequests')
  List<JoinRequest> get joinRequests {
    if (_joinRequests is EqualUnmodifiableListView) return _joinRequests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_joinRequests);
  }

  @override
  String toString() {
    return 'JoinRequests(nextToken: $nextToken, joinRequests: $joinRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JoinRequests &&
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
  _$$_JoinRequestsCopyWith<_$_JoinRequests> get copyWith =>
      __$$_JoinRequestsCopyWithImpl<_$_JoinRequests>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JoinRequestsToJson(
      this,
    );
  }
}

abstract class _JoinRequests implements JoinRequests {
  const factory _JoinRequests(
      {@JsonKey(name: 'nextToken')
          required final String nextToken,
      @JsonKey(name: 'joinRequests')
          required final List<JoinRequest> joinRequests}) = _$_JoinRequests;

  factory _JoinRequests.fromJson(Map<String, dynamic> json) =
      _$_JoinRequests.fromJson;

  @override
  @JsonKey(name: 'nextToken')
  String get nextToken;
  @override
  @JsonKey(name: 'joinRequests')
  List<JoinRequest> get joinRequests;
  @override
  @JsonKey(ignore: true)
  _$$_JoinRequestsCopyWith<_$_JoinRequests> get copyWith =>
      throw _privateConstructorUsedError;
}

JoinRequest _$JoinRequestFromJson(Map<String, dynamic> json) {
  return _JoinRequest.fromJson(json);
}

/// @nodoc
mixin _$JoinRequest {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'userImageUrl')
  String get userImageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JoinRequestCopyWith<JoinRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinRequestCopyWith<$Res> {
  factory $JoinRequestCopyWith(
          JoinRequest value, $Res Function(JoinRequest) then) =
      _$JoinRequestCopyWithImpl<$Res, JoinRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'userId') String userId,
      @JsonKey(name: 'userImageUrl') String userImageUrl});
}

/// @nodoc
class _$JoinRequestCopyWithImpl<$Res, $Val extends JoinRequest>
    implements $JoinRequestCopyWith<$Res> {
  _$JoinRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? userId = null,
    Object? userImageUrl = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userImageUrl: null == userImageUrl
          ? _value.userImageUrl
          : userImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JoinRequestCopyWith<$Res>
    implements $JoinRequestCopyWith<$Res> {
  factory _$$_JoinRequestCopyWith(
          _$_JoinRequest value, $Res Function(_$_JoinRequest) then) =
      __$$_JoinRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'userId') String userId,
      @JsonKey(name: 'userImageUrl') String userImageUrl});
}

/// @nodoc
class __$$_JoinRequestCopyWithImpl<$Res>
    extends _$JoinRequestCopyWithImpl<$Res, _$_JoinRequest>
    implements _$$_JoinRequestCopyWith<$Res> {
  __$$_JoinRequestCopyWithImpl(
      _$_JoinRequest _value, $Res Function(_$_JoinRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? userId = null,
    Object? userImageUrl = null,
  }) {
    return _then(_$_JoinRequest(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userImageUrl: null == userImageUrl
          ? _value.userImageUrl
          : userImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JoinRequest implements _JoinRequest {
  const _$_JoinRequest(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'userId') required this.userId,
      @JsonKey(name: 'userImageUrl') required this.userImageUrl});

  factory _$_JoinRequest.fromJson(Map<String, dynamic> json) =>
      _$$_JoinRequestFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'userId')
  final String userId;
  @override
  @JsonKey(name: 'userImageUrl')
  final String userImageUrl;

  @override
  String toString() {
    return 'JoinRequest(name: $name, userId: $userId, userImageUrl: $userImageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JoinRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userImageUrl, userImageUrl) ||
                other.userImageUrl == userImageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, userId, userImageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JoinRequestCopyWith<_$_JoinRequest> get copyWith =>
      __$$_JoinRequestCopyWithImpl<_$_JoinRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JoinRequestToJson(
      this,
    );
  }
}

abstract class _JoinRequest implements JoinRequest {
  const factory _JoinRequest(
          {@JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'userId') required final String userId,
          @JsonKey(name: 'userImageUrl') required final String userImageUrl}) =
      _$_JoinRequest;

  factory _JoinRequest.fromJson(Map<String, dynamic> json) =
      _$_JoinRequest.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'userId')
  String get userId;
  @override
  @JsonKey(name: 'userImageUrl')
  String get userImageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_JoinRequestCopyWith<_$_JoinRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
