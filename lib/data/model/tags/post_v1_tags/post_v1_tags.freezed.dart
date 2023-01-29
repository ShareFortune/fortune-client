// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_v1_tags.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostV1TagsRequest _$PostV1TagsRequestFromJson(Map<String, dynamic> json) {
  return _PostV1TagsRequest.fromJson(json);
}

/// @nodoc
mixin _$PostV1TagsRequest {
  @JsonKey(name: 'nextToken')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'explanation')
  String get explanation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostV1TagsRequestCopyWith<PostV1TagsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostV1TagsRequestCopyWith<$Res> {
  factory $PostV1TagsRequestCopyWith(
          PostV1TagsRequest value, $Res Function(PostV1TagsRequest) then) =
      _$PostV1TagsRequestCopyWithImpl<$Res, PostV1TagsRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'nextToken') String name,
      @JsonKey(name: 'explanation') String explanation});
}

/// @nodoc
class _$PostV1TagsRequestCopyWithImpl<$Res, $Val extends PostV1TagsRequest>
    implements $PostV1TagsRequestCopyWith<$Res> {
  _$PostV1TagsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? explanation = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostV1TagsRequestCopyWith<$Res>
    implements $PostV1TagsRequestCopyWith<$Res> {
  factory _$$_PostV1TagsRequestCopyWith(_$_PostV1TagsRequest value,
          $Res Function(_$_PostV1TagsRequest) then) =
      __$$_PostV1TagsRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'nextToken') String name,
      @JsonKey(name: 'explanation') String explanation});
}

/// @nodoc
class __$$_PostV1TagsRequestCopyWithImpl<$Res>
    extends _$PostV1TagsRequestCopyWithImpl<$Res, _$_PostV1TagsRequest>
    implements _$$_PostV1TagsRequestCopyWith<$Res> {
  __$$_PostV1TagsRequestCopyWithImpl(
      _$_PostV1TagsRequest _value, $Res Function(_$_PostV1TagsRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? explanation = null,
  }) {
    return _then(_$_PostV1TagsRequest(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostV1TagsRequest implements _PostV1TagsRequest {
  const _$_PostV1TagsRequest(
      {@JsonKey(name: 'nextToken') required this.name,
      @JsonKey(name: 'explanation') required this.explanation});

  factory _$_PostV1TagsRequest.fromJson(Map<String, dynamic> json) =>
      _$$_PostV1TagsRequestFromJson(json);

  @override
  @JsonKey(name: 'nextToken')
  final String name;
  @override
  @JsonKey(name: 'explanation')
  final String explanation;

  @override
  String toString() {
    return 'PostV1TagsRequest(name: $name, explanation: $explanation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostV1TagsRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, explanation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostV1TagsRequestCopyWith<_$_PostV1TagsRequest> get copyWith =>
      __$$_PostV1TagsRequestCopyWithImpl<_$_PostV1TagsRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostV1TagsRequestToJson(
      this,
    );
  }
}

abstract class _PostV1TagsRequest implements PostV1TagsRequest {
  const factory _PostV1TagsRequest(
          {@JsonKey(name: 'nextToken') required final String name,
          @JsonKey(name: 'explanation') required final String explanation}) =
      _$_PostV1TagsRequest;

  factory _PostV1TagsRequest.fromJson(Map<String, dynamic> json) =
      _$_PostV1TagsRequest.fromJson;

  @override
  @JsonKey(name: 'nextToken')
  String get name;
  @override
  @JsonKey(name: 'explanation')
  String get explanation;
  @override
  @JsonKey(ignore: true)
  _$$_PostV1TagsRequestCopyWith<_$_PostV1TagsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

PostV1TagsResponse _$PostV1TagsResponseFromJson(Map<String, dynamic> json) {
  return _PostV1TagsResponse.fromJson(json);
}

/// @nodoc
mixin _$PostV1TagsResponse {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostV1TagsResponseCopyWith<PostV1TagsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostV1TagsResponseCopyWith<$Res> {
  factory $PostV1TagsResponseCopyWith(
          PostV1TagsResponse value, $Res Function(PostV1TagsResponse) then) =
      _$PostV1TagsResponseCopyWithImpl<$Res, PostV1TagsResponse>;
  @useResult
  $Res call({@JsonKey(name: 'id') String id});
}

/// @nodoc
class _$PostV1TagsResponseCopyWithImpl<$Res, $Val extends PostV1TagsResponse>
    implements $PostV1TagsResponseCopyWith<$Res> {
  _$PostV1TagsResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_PostV1TagsResponseCopyWith<$Res>
    implements $PostV1TagsResponseCopyWith<$Res> {
  factory _$$_PostV1TagsResponseCopyWith(_$_PostV1TagsResponse value,
          $Res Function(_$_PostV1TagsResponse) then) =
      __$$_PostV1TagsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id') String id});
}

/// @nodoc
class __$$_PostV1TagsResponseCopyWithImpl<$Res>
    extends _$PostV1TagsResponseCopyWithImpl<$Res, _$_PostV1TagsResponse>
    implements _$$_PostV1TagsResponseCopyWith<$Res> {
  __$$_PostV1TagsResponseCopyWithImpl(
      _$_PostV1TagsResponse _value, $Res Function(_$_PostV1TagsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_PostV1TagsResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostV1TagsResponse implements _PostV1TagsResponse {
  const _$_PostV1TagsResponse({@JsonKey(name: 'id') required this.id});

  factory _$_PostV1TagsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PostV1TagsResponseFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;

  @override
  String toString() {
    return 'PostV1TagsResponse(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostV1TagsResponse &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostV1TagsResponseCopyWith<_$_PostV1TagsResponse> get copyWith =>
      __$$_PostV1TagsResponseCopyWithImpl<_$_PostV1TagsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostV1TagsResponseToJson(
      this,
    );
  }
}

abstract class _PostV1TagsResponse implements PostV1TagsResponse {
  const factory _PostV1TagsResponse(
      {@JsonKey(name: 'id') required final String id}) = _$_PostV1TagsResponse;

  factory _PostV1TagsResponse.fromJson(Map<String, dynamic> json) =
      _$_PostV1TagsResponse.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_PostV1TagsResponseCopyWith<_$_PostV1TagsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
