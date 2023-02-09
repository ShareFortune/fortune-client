// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_v1_message_rooms_id_messages.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostV1MessageRoomsIdMessagesRequest
    _$PostV1MessageRoomsIdMessagesRequestFromJson(Map<String, dynamic> json) {
  return _PostV1MessageRoomsIdMessagesRequest.fromJson(json);
}

/// @nodoc
mixin _$PostV1MessageRoomsIdMessagesRequest {
  @JsonKey(name: 'text')
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostV1MessageRoomsIdMessagesRequestCopyWith<
          PostV1MessageRoomsIdMessagesRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostV1MessageRoomsIdMessagesRequestCopyWith<$Res> {
  factory $PostV1MessageRoomsIdMessagesRequestCopyWith(
          PostV1MessageRoomsIdMessagesRequest value,
          $Res Function(PostV1MessageRoomsIdMessagesRequest) then) =
      _$PostV1MessageRoomsIdMessagesRequestCopyWithImpl<$Res,
          PostV1MessageRoomsIdMessagesRequest>;
  @useResult
  $Res call({@JsonKey(name: 'text') String text});
}

/// @nodoc
class _$PostV1MessageRoomsIdMessagesRequestCopyWithImpl<$Res,
        $Val extends PostV1MessageRoomsIdMessagesRequest>
    implements $PostV1MessageRoomsIdMessagesRequestCopyWith<$Res> {
  _$PostV1MessageRoomsIdMessagesRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostV1MessageRoomsIdMessagesRequestCopyWith<$Res>
    implements $PostV1MessageRoomsIdMessagesRequestCopyWith<$Res> {
  factory _$$_PostV1MessageRoomsIdMessagesRequestCopyWith(
          _$_PostV1MessageRoomsIdMessagesRequest value,
          $Res Function(_$_PostV1MessageRoomsIdMessagesRequest) then) =
      __$$_PostV1MessageRoomsIdMessagesRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'text') String text});
}

/// @nodoc
class __$$_PostV1MessageRoomsIdMessagesRequestCopyWithImpl<$Res>
    extends _$PostV1MessageRoomsIdMessagesRequestCopyWithImpl<$Res,
        _$_PostV1MessageRoomsIdMessagesRequest>
    implements _$$_PostV1MessageRoomsIdMessagesRequestCopyWith<$Res> {
  __$$_PostV1MessageRoomsIdMessagesRequestCopyWithImpl(
      _$_PostV1MessageRoomsIdMessagesRequest _value,
      $Res Function(_$_PostV1MessageRoomsIdMessagesRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_PostV1MessageRoomsIdMessagesRequest(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostV1MessageRoomsIdMessagesRequest
    implements _PostV1MessageRoomsIdMessagesRequest {
  const _$_PostV1MessageRoomsIdMessagesRequest(
      {@JsonKey(name: 'text') required this.text});

  factory _$_PostV1MessageRoomsIdMessagesRequest.fromJson(
          Map<String, dynamic> json) =>
      _$$_PostV1MessageRoomsIdMessagesRequestFromJson(json);

  @override
  @JsonKey(name: 'text')
  final String text;

  @override
  String toString() {
    return 'PostV1MessageRoomsIdMessagesRequest(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostV1MessageRoomsIdMessagesRequest &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostV1MessageRoomsIdMessagesRequestCopyWith<
          _$_PostV1MessageRoomsIdMessagesRequest>
      get copyWith => __$$_PostV1MessageRoomsIdMessagesRequestCopyWithImpl<
          _$_PostV1MessageRoomsIdMessagesRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostV1MessageRoomsIdMessagesRequestToJson(
      this,
    );
  }
}

abstract class _PostV1MessageRoomsIdMessagesRequest
    implements PostV1MessageRoomsIdMessagesRequest {
  const factory _PostV1MessageRoomsIdMessagesRequest(
          {@JsonKey(name: 'text') required final String text}) =
      _$_PostV1MessageRoomsIdMessagesRequest;

  factory _PostV1MessageRoomsIdMessagesRequest.fromJson(
          Map<String, dynamic> json) =
      _$_PostV1MessageRoomsIdMessagesRequest.fromJson;

  @override
  @JsonKey(name: 'text')
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_PostV1MessageRoomsIdMessagesRequestCopyWith<
          _$_PostV1MessageRoomsIdMessagesRequest>
      get copyWith => throw _privateConstructorUsedError;
}

PostV1MessageRoomsIdMessagesResponse
    _$PostV1MessageRoomsIdMessagesResponseFromJson(Map<String, dynamic> json) {
  return _PostV1MessageRoomsIdMessagesResponse.fromJson(json);
}

/// @nodoc
mixin _$PostV1MessageRoomsIdMessagesResponse {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostV1MessageRoomsIdMessagesResponseCopyWith<
          PostV1MessageRoomsIdMessagesResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostV1MessageRoomsIdMessagesResponseCopyWith<$Res> {
  factory $PostV1MessageRoomsIdMessagesResponseCopyWith(
          PostV1MessageRoomsIdMessagesResponse value,
          $Res Function(PostV1MessageRoomsIdMessagesResponse) then) =
      _$PostV1MessageRoomsIdMessagesResponseCopyWithImpl<$Res,
          PostV1MessageRoomsIdMessagesResponse>;
  @useResult
  $Res call({@JsonKey(name: 'id') String id});
}

/// @nodoc
class _$PostV1MessageRoomsIdMessagesResponseCopyWithImpl<$Res,
        $Val extends PostV1MessageRoomsIdMessagesResponse>
    implements $PostV1MessageRoomsIdMessagesResponseCopyWith<$Res> {
  _$PostV1MessageRoomsIdMessagesResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_PostV1MessageRoomsIdMessagesResponseCopyWith<$Res>
    implements $PostV1MessageRoomsIdMessagesResponseCopyWith<$Res> {
  factory _$$_PostV1MessageRoomsIdMessagesResponseCopyWith(
          _$_PostV1MessageRoomsIdMessagesResponse value,
          $Res Function(_$_PostV1MessageRoomsIdMessagesResponse) then) =
      __$$_PostV1MessageRoomsIdMessagesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id') String id});
}

/// @nodoc
class __$$_PostV1MessageRoomsIdMessagesResponseCopyWithImpl<$Res>
    extends _$PostV1MessageRoomsIdMessagesResponseCopyWithImpl<$Res,
        _$_PostV1MessageRoomsIdMessagesResponse>
    implements _$$_PostV1MessageRoomsIdMessagesResponseCopyWith<$Res> {
  __$$_PostV1MessageRoomsIdMessagesResponseCopyWithImpl(
      _$_PostV1MessageRoomsIdMessagesResponse _value,
      $Res Function(_$_PostV1MessageRoomsIdMessagesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_PostV1MessageRoomsIdMessagesResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostV1MessageRoomsIdMessagesResponse
    implements _PostV1MessageRoomsIdMessagesResponse {
  const _$_PostV1MessageRoomsIdMessagesResponse(
      {@JsonKey(name: 'id') required this.id});

  factory _$_PostV1MessageRoomsIdMessagesResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_PostV1MessageRoomsIdMessagesResponseFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;

  @override
  String toString() {
    return 'PostV1MessageRoomsIdMessagesResponse(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostV1MessageRoomsIdMessagesResponse &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostV1MessageRoomsIdMessagesResponseCopyWith<
          _$_PostV1MessageRoomsIdMessagesResponse>
      get copyWith => __$$_PostV1MessageRoomsIdMessagesResponseCopyWithImpl<
          _$_PostV1MessageRoomsIdMessagesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostV1MessageRoomsIdMessagesResponseToJson(
      this,
    );
  }
}

abstract class _PostV1MessageRoomsIdMessagesResponse
    implements PostV1MessageRoomsIdMessagesResponse {
  const factory _PostV1MessageRoomsIdMessagesResponse(
          {@JsonKey(name: 'id') required final String id}) =
      _$_PostV1MessageRoomsIdMessagesResponse;

  factory _PostV1MessageRoomsIdMessagesResponse.fromJson(
          Map<String, dynamic> json) =
      _$_PostV1MessageRoomsIdMessagesResponse.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_PostV1MessageRoomsIdMessagesResponseCopyWith<
          _$_PostV1MessageRoomsIdMessagesResponse>
      get copyWith => throw _privateConstructorUsedError;
}
