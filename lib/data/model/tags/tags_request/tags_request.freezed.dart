// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tags_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TagsRequest _$TagsRequestFromJson(Map<String, dynamic> json) {
  return _TagsRequest.fromJson(json);
}

/// @nodoc
mixin _$TagsRequest {
  String get name => throw _privateConstructorUsedError;
  String get explanation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TagsRequestCopyWith<TagsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagsRequestCopyWith<$Res> {
  factory $TagsRequestCopyWith(
          TagsRequest value, $Res Function(TagsRequest) then) =
      _$TagsRequestCopyWithImpl<$Res, TagsRequest>;
  @useResult
  $Res call({String name, String explanation});
}

/// @nodoc
class _$TagsRequestCopyWithImpl<$Res, $Val extends TagsRequest>
    implements $TagsRequestCopyWith<$Res> {
  _$TagsRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$_TagsRequestCopyWith<$Res>
    implements $TagsRequestCopyWith<$Res> {
  factory _$$_TagsRequestCopyWith(
          _$_TagsRequest value, $Res Function(_$_TagsRequest) then) =
      __$$_TagsRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String explanation});
}

/// @nodoc
class __$$_TagsRequestCopyWithImpl<$Res>
    extends _$TagsRequestCopyWithImpl<$Res, _$_TagsRequest>
    implements _$$_TagsRequestCopyWith<$Res> {
  __$$_TagsRequestCopyWithImpl(
      _$_TagsRequest _value, $Res Function(_$_TagsRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? explanation = null,
  }) {
    return _then(_$_TagsRequest(
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
class _$_TagsRequest implements _TagsRequest {
  const _$_TagsRequest({required this.name, required this.explanation});

  factory _$_TagsRequest.fromJson(Map<String, dynamic> json) =>
      _$$_TagsRequestFromJson(json);

  @override
  final String name;
  @override
  final String explanation;

  @override
  String toString() {
    return 'TagsRequest(name: $name, explanation: $explanation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TagsRequest &&
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
  _$$_TagsRequestCopyWith<_$_TagsRequest> get copyWith =>
      __$$_TagsRequestCopyWithImpl<_$_TagsRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TagsRequestToJson(
      this,
    );
  }
}

abstract class _TagsRequest implements TagsRequest {
  const factory _TagsRequest(
      {required final String name,
      required final String explanation}) = _$_TagsRequest;

  factory _TagsRequest.fromJson(Map<String, dynamic> json) =
      _$_TagsRequest.fromJson;

  @override
  String get name;
  @override
  String get explanation;
  @override
  @JsonKey(ignore: true)
  _$$_TagsRequestCopyWith<_$_TagsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
