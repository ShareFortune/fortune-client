// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UsersIdResponse _$UsersIdResponseFromJson(Map<String, dynamic> json) {
  return _UsersIdResponse.fromJson(json);
}

/// @nodoc
mixin _$UsersIdResponse {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsersIdResponseCopyWith<UsersIdResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersIdResponseCopyWith<$Res> {
  factory $UsersIdResponseCopyWith(
          UsersIdResponse value, $Res Function(UsersIdResponse) then) =
      _$UsersIdResponseCopyWithImpl<$Res, UsersIdResponse>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$UsersIdResponseCopyWithImpl<$Res, $Val extends UsersIdResponse>
    implements $UsersIdResponseCopyWith<$Res> {
  _$UsersIdResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_UsersIdResponseCopyWith<$Res>
    implements $UsersIdResponseCopyWith<$Res> {
  factory _$$_UsersIdResponseCopyWith(
          _$_UsersIdResponse value, $Res Function(_$_UsersIdResponse) then) =
      __$$_UsersIdResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_UsersIdResponseCopyWithImpl<$Res>
    extends _$UsersIdResponseCopyWithImpl<$Res, _$_UsersIdResponse>
    implements _$$_UsersIdResponseCopyWith<$Res> {
  __$$_UsersIdResponseCopyWithImpl(
      _$_UsersIdResponse _value, $Res Function(_$_UsersIdResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_UsersIdResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UsersIdResponse implements _UsersIdResponse {
  const _$_UsersIdResponse({required this.id});

  factory _$_UsersIdResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UsersIdResponseFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'UsersIdResponse(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsersIdResponse &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsersIdResponseCopyWith<_$_UsersIdResponse> get copyWith =>
      __$$_UsersIdResponseCopyWithImpl<_$_UsersIdResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UsersIdResponseToJson(
      this,
    );
  }
}

abstract class _UsersIdResponse implements UsersIdResponse {
  const factory _UsersIdResponse({required final String id}) =
      _$_UsersIdResponse;

  factory _UsersIdResponse.fromJson(Map<String, dynamic> json) =
      _$_UsersIdResponse.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_UsersIdResponseCopyWith<_$_UsersIdResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
