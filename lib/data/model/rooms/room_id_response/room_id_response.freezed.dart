// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_id_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoomIdResponse _$RoomIdResponseFromJson(Map<String, dynamic> json) {
  return _RoomIdResponse.fromJson(json);
}

/// @nodoc
mixin _$RoomIdResponse {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomIdResponseCopyWith<RoomIdResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomIdResponseCopyWith<$Res> {
  factory $RoomIdResponseCopyWith(
          RoomIdResponse value, $Res Function(RoomIdResponse) then) =
      _$RoomIdResponseCopyWithImpl<$Res, RoomIdResponse>;
  @useResult
  $Res call({@JsonKey(name: 'id') String id});
}

/// @nodoc
class _$RoomIdResponseCopyWithImpl<$Res, $Val extends RoomIdResponse>
    implements $RoomIdResponseCopyWith<$Res> {
  _$RoomIdResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_RoomIdResponseCopyWith<$Res>
    implements $RoomIdResponseCopyWith<$Res> {
  factory _$$_RoomIdResponseCopyWith(
          _$_RoomIdResponse value, $Res Function(_$_RoomIdResponse) then) =
      __$$_RoomIdResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id') String id});
}

/// @nodoc
class __$$_RoomIdResponseCopyWithImpl<$Res>
    extends _$RoomIdResponseCopyWithImpl<$Res, _$_RoomIdResponse>
    implements _$$_RoomIdResponseCopyWith<$Res> {
  __$$_RoomIdResponseCopyWithImpl(
      _$_RoomIdResponse _value, $Res Function(_$_RoomIdResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_RoomIdResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoomIdResponse implements _RoomIdResponse {
  const _$_RoomIdResponse({@JsonKey(name: 'id') required this.id});

  factory _$_RoomIdResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RoomIdResponseFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;

  @override
  String toString() {
    return 'RoomIdResponse(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomIdResponse &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomIdResponseCopyWith<_$_RoomIdResponse> get copyWith =>
      __$$_RoomIdResponseCopyWithImpl<_$_RoomIdResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomIdResponseToJson(
      this,
    );
  }
}

abstract class _RoomIdResponse implements RoomIdResponse {
  const factory _RoomIdResponse(
      {@JsonKey(name: 'id') required final String id}) = _$_RoomIdResponse;

  factory _RoomIdResponse.fromJson(Map<String, dynamic> json) =
      _$_RoomIdResponse.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_RoomIdResponseCopyWith<_$_RoomIdResponse> get copyWith =>
      throw _privateConstructorUsedError;
}