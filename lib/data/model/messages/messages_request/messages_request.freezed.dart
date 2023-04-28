// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'messages_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessagesRequest _$MessagesRequestFromJson(Map<String, dynamic> json) {
  return _MessagesRequest.fromJson(json);
}

/// @nodoc
mixin _$MessagesRequest {
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessagesRequestCopyWith<MessagesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagesRequestCopyWith<$Res> {
  factory $MessagesRequestCopyWith(
          MessagesRequest value, $Res Function(MessagesRequest) then) =
      _$MessagesRequestCopyWithImpl<$Res, MessagesRequest>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class _$MessagesRequestCopyWithImpl<$Res, $Val extends MessagesRequest>
    implements $MessagesRequestCopyWith<$Res> {
  _$MessagesRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$_MessagesRequestCopyWith<$Res>
    implements $MessagesRequestCopyWith<$Res> {
  factory _$$_MessagesRequestCopyWith(
          _$_MessagesRequest value, $Res Function(_$_MessagesRequest) then) =
      __$$_MessagesRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_MessagesRequestCopyWithImpl<$Res>
    extends _$MessagesRequestCopyWithImpl<$Res, _$_MessagesRequest>
    implements _$$_MessagesRequestCopyWith<$Res> {
  __$$_MessagesRequestCopyWithImpl(
      _$_MessagesRequest _value, $Res Function(_$_MessagesRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_MessagesRequest(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessagesRequest implements _MessagesRequest {
  const _$_MessagesRequest({required this.text});

  factory _$_MessagesRequest.fromJson(Map<String, dynamic> json) =>
      _$$_MessagesRequestFromJson(json);

  @override
  final String text;

  @override
  String toString() {
    return 'MessagesRequest(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessagesRequest &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessagesRequestCopyWith<_$_MessagesRequest> get copyWith =>
      __$$_MessagesRequestCopyWithImpl<_$_MessagesRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessagesRequestToJson(
      this,
    );
  }
}

abstract class _MessagesRequest implements MessagesRequest {
  const factory _MessagesRequest({required final String text}) =
      _$_MessagesRequest;

  factory _MessagesRequest.fromJson(Map<String, dynamic> json) =
      _$_MessagesRequest.fromJson;

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_MessagesRequestCopyWith<_$_MessagesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageMessagesRequest _$ImageMessagesRequestFromJson(Map<String, dynamic> json) {
  return _ImageMessagesRequest.fromJson(json);
}

/// @nodoc
mixin _$ImageMessagesRequest {
  String get file => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageMessagesRequestCopyWith<ImageMessagesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageMessagesRequestCopyWith<$Res> {
  factory $ImageMessagesRequestCopyWith(ImageMessagesRequest value,
          $Res Function(ImageMessagesRequest) then) =
      _$ImageMessagesRequestCopyWithImpl<$Res, ImageMessagesRequest>;
  @useResult
  $Res call({String file});
}

/// @nodoc
class _$ImageMessagesRequestCopyWithImpl<$Res,
        $Val extends ImageMessagesRequest>
    implements $ImageMessagesRequestCopyWith<$Res> {
  _$ImageMessagesRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$_ImageMessagesRequestCopyWith<$Res>
    implements $ImageMessagesRequestCopyWith<$Res> {
  factory _$$_ImageMessagesRequestCopyWith(_$_ImageMessagesRequest value,
          $Res Function(_$_ImageMessagesRequest) then) =
      __$$_ImageMessagesRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String file});
}

/// @nodoc
class __$$_ImageMessagesRequestCopyWithImpl<$Res>
    extends _$ImageMessagesRequestCopyWithImpl<$Res, _$_ImageMessagesRequest>
    implements _$$_ImageMessagesRequestCopyWith<$Res> {
  __$$_ImageMessagesRequestCopyWithImpl(_$_ImageMessagesRequest _value,
      $Res Function(_$_ImageMessagesRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_$_ImageMessagesRequest(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageMessagesRequest implements _ImageMessagesRequest {
  const _$_ImageMessagesRequest({required this.file});

  factory _$_ImageMessagesRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ImageMessagesRequestFromJson(json);

  @override
  final String file;

  @override
  String toString() {
    return 'ImageMessagesRequest(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageMessagesRequest &&
            (identical(other.file, file) || other.file == file));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageMessagesRequestCopyWith<_$_ImageMessagesRequest> get copyWith =>
      __$$_ImageMessagesRequestCopyWithImpl<_$_ImageMessagesRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageMessagesRequestToJson(
      this,
    );
  }
}

abstract class _ImageMessagesRequest implements ImageMessagesRequest {
  const factory _ImageMessagesRequest({required final String file}) =
      _$_ImageMessagesRequest;

  factory _ImageMessagesRequest.fromJson(Map<String, dynamic> json) =
      _$_ImageMessagesRequest.fromJson;

  @override
  String get file;
  @override
  @JsonKey(ignore: true)
  _$$_ImageMessagesRequestCopyWith<_$_ImageMessagesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
