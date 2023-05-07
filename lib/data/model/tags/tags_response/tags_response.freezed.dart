// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tags_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TagIdResponse _$TagIdResponseFromJson(Map<String, dynamic> json) {
  return _TagIdResponse.fromJson(json);
}

/// @nodoc
mixin _$TagIdResponse {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TagIdResponseCopyWith<TagIdResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagIdResponseCopyWith<$Res> {
  factory $TagIdResponseCopyWith(
          TagIdResponse value, $Res Function(TagIdResponse) then) =
      _$TagIdResponseCopyWithImpl<$Res, TagIdResponse>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$TagIdResponseCopyWithImpl<$Res, $Val extends TagIdResponse>
    implements $TagIdResponseCopyWith<$Res> {
  _$TagIdResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_TagIdResponseCopyWith<$Res>
    implements $TagIdResponseCopyWith<$Res> {
  factory _$$_TagIdResponseCopyWith(
          _$_TagIdResponse value, $Res Function(_$_TagIdResponse) then) =
      __$$_TagIdResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_TagIdResponseCopyWithImpl<$Res>
    extends _$TagIdResponseCopyWithImpl<$Res, _$_TagIdResponse>
    implements _$$_TagIdResponseCopyWith<$Res> {
  __$$_TagIdResponseCopyWithImpl(
      _$_TagIdResponse _value, $Res Function(_$_TagIdResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_TagIdResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TagIdResponse implements _TagIdResponse {
  const _$_TagIdResponse({required this.id});

  factory _$_TagIdResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TagIdResponseFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'TagIdResponse(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TagIdResponse &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TagIdResponseCopyWith<_$_TagIdResponse> get copyWith =>
      __$$_TagIdResponseCopyWithImpl<_$_TagIdResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TagIdResponseToJson(
      this,
    );
  }
}

abstract class _TagIdResponse implements TagIdResponse {
  const factory _TagIdResponse({required final String id}) = _$_TagIdResponse;

  factory _TagIdResponse.fromJson(Map<String, dynamic> json) =
      _$_TagIdResponse.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_TagIdResponseCopyWith<_$_TagIdResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

TagsResponse _$TagsResponseFromJson(Map<String, dynamic> json) {
  return _TagsResponse.fromJson(json);
}

/// @nodoc
mixin _$TagsResponse {
  String get nextToken => throw _privateConstructorUsedError;
  List<Tag> get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TagsResponseCopyWith<TagsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagsResponseCopyWith<$Res> {
  factory $TagsResponseCopyWith(
          TagsResponse value, $Res Function(TagsResponse) then) =
      _$TagsResponseCopyWithImpl<$Res, TagsResponse>;
  @useResult
  $Res call({String nextToken, List<Tag> tags});
}

/// @nodoc
class _$TagsResponseCopyWithImpl<$Res, $Val extends TagsResponse>
    implements $TagsResponseCopyWith<$Res> {
  _$TagsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextToken = null,
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      nextToken: null == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TagsResponseCopyWith<$Res>
    implements $TagsResponseCopyWith<$Res> {
  factory _$$_TagsResponseCopyWith(
          _$_TagsResponse value, $Res Function(_$_TagsResponse) then) =
      __$$_TagsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nextToken, List<Tag> tags});
}

/// @nodoc
class __$$_TagsResponseCopyWithImpl<$Res>
    extends _$TagsResponseCopyWithImpl<$Res, _$_TagsResponse>
    implements _$$_TagsResponseCopyWith<$Res> {
  __$$_TagsResponseCopyWithImpl(
      _$_TagsResponse _value, $Res Function(_$_TagsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextToken = null,
    Object? tags = null,
  }) {
    return _then(_$_TagsResponse(
      nextToken: null == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TagsResponse implements _TagsResponse {
  const _$_TagsResponse(
      {required this.nextToken, required final List<Tag> tags})
      : _tags = tags;

  factory _$_TagsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TagsResponseFromJson(json);

  @override
  final String nextToken;
  final List<Tag> _tags;
  @override
  List<Tag> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'TagsResponse(nextToken: $nextToken, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TagsResponse &&
            (identical(other.nextToken, nextToken) ||
                other.nextToken == nextToken) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, nextToken, const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TagsResponseCopyWith<_$_TagsResponse> get copyWith =>
      __$$_TagsResponseCopyWithImpl<_$_TagsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TagsResponseToJson(
      this,
    );
  }
}

abstract class _TagsResponse implements TagsResponse {
  const factory _TagsResponse(
      {required final String nextToken,
      required final List<Tag> tags}) = _$_TagsResponse;

  factory _TagsResponse.fromJson(Map<String, dynamic> json) =
      _$_TagsResponse.fromJson;

  @override
  String get nextToken;
  @override
  List<Tag> get tags;
  @override
  @JsonKey(ignore: true)
  _$$_TagsResponseCopyWith<_$_TagsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
