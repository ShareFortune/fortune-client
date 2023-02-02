// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_v1_tags.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetV1TagsResponse _$GetV1TagsResponseFromJson(Map<String, dynamic> json) {
  return _GetV1TagsResponse.fromJson(json);
}

/// @nodoc
mixin _$GetV1TagsResponse {
  @JsonKey(name: 'nextToken')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'tags')
  List<Tag> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetV1TagsResponseCopyWith<GetV1TagsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetV1TagsResponseCopyWith<$Res> {
  factory $GetV1TagsResponseCopyWith(
          GetV1TagsResponse value, $Res Function(GetV1TagsResponse) then) =
      _$GetV1TagsResponseCopyWithImpl<$Res, GetV1TagsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'nextToken') String name,
      @JsonKey(name: 'tags') List<Tag> data});
}

/// @nodoc
class _$GetV1TagsResponseCopyWithImpl<$Res, $Val extends GetV1TagsResponse>
    implements $GetV1TagsResponseCopyWith<$Res> {
  _$GetV1TagsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetV1TagsResponseCopyWith<$Res>
    implements $GetV1TagsResponseCopyWith<$Res> {
  factory _$$_GetV1TagsResponseCopyWith(_$_GetV1TagsResponse value,
          $Res Function(_$_GetV1TagsResponse) then) =
      __$$_GetV1TagsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'nextToken') String name,
      @JsonKey(name: 'tags') List<Tag> data});
}

/// @nodoc
class __$$_GetV1TagsResponseCopyWithImpl<$Res>
    extends _$GetV1TagsResponseCopyWithImpl<$Res, _$_GetV1TagsResponse>
    implements _$$_GetV1TagsResponseCopyWith<$Res> {
  __$$_GetV1TagsResponseCopyWithImpl(
      _$_GetV1TagsResponse _value, $Res Function(_$_GetV1TagsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? data = null,
  }) {
    return _then(_$_GetV1TagsResponse(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetV1TagsResponse implements _GetV1TagsResponse {
  const _$_GetV1TagsResponse(
      {@JsonKey(name: 'nextToken') required this.name,
      @JsonKey(name: 'tags') required final List<Tag> data})
      : _data = data;

  factory _$_GetV1TagsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetV1TagsResponseFromJson(json);

  @override
  @JsonKey(name: 'nextToken')
  final String name;
  final List<Tag> _data;
  @override
  @JsonKey(name: 'tags')
  List<Tag> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'GetV1TagsResponse(name: $name, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetV1TagsResponse &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetV1TagsResponseCopyWith<_$_GetV1TagsResponse> get copyWith =>
      __$$_GetV1TagsResponseCopyWithImpl<_$_GetV1TagsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetV1TagsResponseToJson(
      this,
    );
  }
}

abstract class _GetV1TagsResponse implements GetV1TagsResponse {
  const factory _GetV1TagsResponse(
          {@JsonKey(name: 'nextToken') required final String name,
          @JsonKey(name: 'tags') required final List<Tag> data}) =
      _$_GetV1TagsResponse;

  factory _GetV1TagsResponse.fromJson(Map<String, dynamic> json) =
      _$_GetV1TagsResponse.fromJson;

  @override
  @JsonKey(name: 'nextToken')
  String get name;
  @override
  @JsonKey(name: 'tags')
  List<Tag> get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetV1TagsResponseCopyWith<_$_GetV1TagsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
