// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_v1_message_rooms_id_message_images.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostV1MessageRoomsIdMessageImagesRequest
    _$PostV1MessageRoomsIdMessageImagesRequestFromJson(
        Map<String, dynamic> json) {
  return _PostV1MessageRoomsIdMessageImagesRequest.fromJson(json);
}

/// @nodoc
mixin _$PostV1MessageRoomsIdMessageImagesRequest {
  @JsonKey(name: 'file')
  String get file => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostV1MessageRoomsIdMessageImagesRequestCopyWith<
          PostV1MessageRoomsIdMessageImagesRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostV1MessageRoomsIdMessageImagesRequestCopyWith<$Res> {
  factory $PostV1MessageRoomsIdMessageImagesRequestCopyWith(
          PostV1MessageRoomsIdMessageImagesRequest value,
          $Res Function(PostV1MessageRoomsIdMessageImagesRequest) then) =
      _$PostV1MessageRoomsIdMessageImagesRequestCopyWithImpl<$Res,
          PostV1MessageRoomsIdMessageImagesRequest>;
  @useResult
  $Res call({@JsonKey(name: 'file') String file});
}

/// @nodoc
class _$PostV1MessageRoomsIdMessageImagesRequestCopyWithImpl<$Res,
        $Val extends PostV1MessageRoomsIdMessageImagesRequest>
    implements $PostV1MessageRoomsIdMessageImagesRequestCopyWith<$Res> {
  _$PostV1MessageRoomsIdMessageImagesRequestCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_value.copyWith(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostV1MessageRoomsIdMessageImagesRequestCopyWith<$Res>
    implements $PostV1MessageRoomsIdMessageImagesRequestCopyWith<$Res> {
  factory _$$_PostV1MessageRoomsIdMessageImagesRequestCopyWith(
          _$_PostV1MessageRoomsIdMessageImagesRequest value,
          $Res Function(_$_PostV1MessageRoomsIdMessageImagesRequest) then) =
      __$$_PostV1MessageRoomsIdMessageImagesRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'file') String file});
}

/// @nodoc
class __$$_PostV1MessageRoomsIdMessageImagesRequestCopyWithImpl<$Res>
    extends _$PostV1MessageRoomsIdMessageImagesRequestCopyWithImpl<$Res,
        _$_PostV1MessageRoomsIdMessageImagesRequest>
    implements _$$_PostV1MessageRoomsIdMessageImagesRequestCopyWith<$Res> {
  __$$_PostV1MessageRoomsIdMessageImagesRequestCopyWithImpl(
      _$_PostV1MessageRoomsIdMessageImagesRequest _value,
      $Res Function(_$_PostV1MessageRoomsIdMessageImagesRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_$_PostV1MessageRoomsIdMessageImagesRequest(
      null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostV1MessageRoomsIdMessageImagesRequest
    implements _PostV1MessageRoomsIdMessageImagesRequest {
  const _$_PostV1MessageRoomsIdMessageImagesRequest(
      @JsonKey(name: 'file') this.file);

  factory _$_PostV1MessageRoomsIdMessageImagesRequest.fromJson(
          Map<String, dynamic> json) =>
      _$$_PostV1MessageRoomsIdMessageImagesRequestFromJson(json);

  @override
  @JsonKey(name: 'file')
  final String file;

  @override
  String toString() {
    return 'PostV1MessageRoomsIdMessageImagesRequest(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostV1MessageRoomsIdMessageImagesRequest &&
            (identical(other.file, file) || other.file == file));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostV1MessageRoomsIdMessageImagesRequestCopyWith<
          _$_PostV1MessageRoomsIdMessageImagesRequest>
      get copyWith => __$$_PostV1MessageRoomsIdMessageImagesRequestCopyWithImpl<
          _$_PostV1MessageRoomsIdMessageImagesRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostV1MessageRoomsIdMessageImagesRequestToJson(
      this,
    );
  }
}

abstract class _PostV1MessageRoomsIdMessageImagesRequest
    implements PostV1MessageRoomsIdMessageImagesRequest {
  const factory _PostV1MessageRoomsIdMessageImagesRequest(
          @JsonKey(name: 'file') final String file) =
      _$_PostV1MessageRoomsIdMessageImagesRequest;

  factory _PostV1MessageRoomsIdMessageImagesRequest.fromJson(
          Map<String, dynamic> json) =
      _$_PostV1MessageRoomsIdMessageImagesRequest.fromJson;

  @override
  @JsonKey(name: 'file')
  String get file;
  @override
  @JsonKey(ignore: true)
  _$$_PostV1MessageRoomsIdMessageImagesRequestCopyWith<
          _$_PostV1MessageRoomsIdMessageImagesRequest>
      get copyWith => throw _privateConstructorUsedError;
}

PostV1MessageRoomsIdMessageImagesResponse
    _$PostV1MessageRoomsIdMessageImagesResponseFromJson(
        Map<String, dynamic> json) {
  return _PostV1MessageRoomsIdMessageImagesResponse.fromJson(json);
}

/// @nodoc
mixin _$PostV1MessageRoomsIdMessageImagesResponse {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostV1MessageRoomsIdMessageImagesResponseCopyWith<
          PostV1MessageRoomsIdMessageImagesResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostV1MessageRoomsIdMessageImagesResponseCopyWith<$Res> {
  factory $PostV1MessageRoomsIdMessageImagesResponseCopyWith(
          PostV1MessageRoomsIdMessageImagesResponse value,
          $Res Function(PostV1MessageRoomsIdMessageImagesResponse) then) =
      _$PostV1MessageRoomsIdMessageImagesResponseCopyWithImpl<$Res,
          PostV1MessageRoomsIdMessageImagesResponse>;
  @useResult
  $Res call({@JsonKey(name: 'id') String id});
}

/// @nodoc
class _$PostV1MessageRoomsIdMessageImagesResponseCopyWithImpl<$Res,
        $Val extends PostV1MessageRoomsIdMessageImagesResponse>
    implements $PostV1MessageRoomsIdMessageImagesResponseCopyWith<$Res> {
  _$PostV1MessageRoomsIdMessageImagesResponseCopyWithImpl(
      this._value, this._then);

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
abstract class _$$_PostV1MessageRoomsIdMessageImagesResponseCopyWith<$Res>
    implements $PostV1MessageRoomsIdMessageImagesResponseCopyWith<$Res> {
  factory _$$_PostV1MessageRoomsIdMessageImagesResponseCopyWith(
          _$_PostV1MessageRoomsIdMessageImagesResponse value,
          $Res Function(_$_PostV1MessageRoomsIdMessageImagesResponse) then) =
      __$$_PostV1MessageRoomsIdMessageImagesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id') String id});
}

/// @nodoc
class __$$_PostV1MessageRoomsIdMessageImagesResponseCopyWithImpl<$Res>
    extends _$PostV1MessageRoomsIdMessageImagesResponseCopyWithImpl<$Res,
        _$_PostV1MessageRoomsIdMessageImagesResponse>
    implements _$$_PostV1MessageRoomsIdMessageImagesResponseCopyWith<$Res> {
  __$$_PostV1MessageRoomsIdMessageImagesResponseCopyWithImpl(
      _$_PostV1MessageRoomsIdMessageImagesResponse _value,
      $Res Function(_$_PostV1MessageRoomsIdMessageImagesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_PostV1MessageRoomsIdMessageImagesResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostV1MessageRoomsIdMessageImagesResponse
    implements _PostV1MessageRoomsIdMessageImagesResponse {
  const _$_PostV1MessageRoomsIdMessageImagesResponse(
      {@JsonKey(name: 'id') required this.id});

  factory _$_PostV1MessageRoomsIdMessageImagesResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_PostV1MessageRoomsIdMessageImagesResponseFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;

  @override
  String toString() {
    return 'PostV1MessageRoomsIdMessageImagesResponse(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostV1MessageRoomsIdMessageImagesResponse &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostV1MessageRoomsIdMessageImagesResponseCopyWith<
          _$_PostV1MessageRoomsIdMessageImagesResponse>
      get copyWith =>
          __$$_PostV1MessageRoomsIdMessageImagesResponseCopyWithImpl<
              _$_PostV1MessageRoomsIdMessageImagesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostV1MessageRoomsIdMessageImagesResponseToJson(
      this,
    );
  }
}

abstract class _PostV1MessageRoomsIdMessageImagesResponse
    implements PostV1MessageRoomsIdMessageImagesResponse {
  const factory _PostV1MessageRoomsIdMessageImagesResponse(
          {@JsonKey(name: 'id') required final String id}) =
      _$_PostV1MessageRoomsIdMessageImagesResponse;

  factory _PostV1MessageRoomsIdMessageImagesResponse.fromJson(
          Map<String, dynamic> json) =
      _$_PostV1MessageRoomsIdMessageImagesResponse.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_PostV1MessageRoomsIdMessageImagesResponseCopyWith<
          _$_PostV1MessageRoomsIdMessageImagesResponse>
      get copyWith => throw _privateConstructorUsedError;
}
