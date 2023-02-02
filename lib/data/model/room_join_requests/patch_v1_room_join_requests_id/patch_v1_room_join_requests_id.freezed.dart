// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patch_v1_room_join_requests_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PatchV1RoomJoinRequestsIdResponse _$PatchV1RoomJoinRequestsIdResponseFromJson(
    Map<String, dynamic> json) {
  return _PatchV1RoomJoinRequestsIdResponse.fromJson(json);
}

/// @nodoc
mixin _$PatchV1RoomJoinRequestsIdResponse {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatchV1RoomJoinRequestsIdResponseCopyWith<PatchV1RoomJoinRequestsIdResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatchV1RoomJoinRequestsIdResponseCopyWith<$Res> {
  factory $PatchV1RoomJoinRequestsIdResponseCopyWith(
          PatchV1RoomJoinRequestsIdResponse value,
          $Res Function(PatchV1RoomJoinRequestsIdResponse) then) =
      _$PatchV1RoomJoinRequestsIdResponseCopyWithImpl<$Res,
          PatchV1RoomJoinRequestsIdResponse>;
  @useResult
  $Res call({@JsonKey(name: "id") String id});
}

/// @nodoc
class _$PatchV1RoomJoinRequestsIdResponseCopyWithImpl<$Res,
        $Val extends PatchV1RoomJoinRequestsIdResponse>
    implements $PatchV1RoomJoinRequestsIdResponseCopyWith<$Res> {
  _$PatchV1RoomJoinRequestsIdResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_PatchV1RoomJoinRequestsIdResponseCopyWith<$Res>
    implements $PatchV1RoomJoinRequestsIdResponseCopyWith<$Res> {
  factory _$$_PatchV1RoomJoinRequestsIdResponseCopyWith(
          _$_PatchV1RoomJoinRequestsIdResponse value,
          $Res Function(_$_PatchV1RoomJoinRequestsIdResponse) then) =
      __$$_PatchV1RoomJoinRequestsIdResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "id") String id});
}

/// @nodoc
class __$$_PatchV1RoomJoinRequestsIdResponseCopyWithImpl<$Res>
    extends _$PatchV1RoomJoinRequestsIdResponseCopyWithImpl<$Res,
        _$_PatchV1RoomJoinRequestsIdResponse>
    implements _$$_PatchV1RoomJoinRequestsIdResponseCopyWith<$Res> {
  __$$_PatchV1RoomJoinRequestsIdResponseCopyWithImpl(
      _$_PatchV1RoomJoinRequestsIdResponse _value,
      $Res Function(_$_PatchV1RoomJoinRequestsIdResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_PatchV1RoomJoinRequestsIdResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PatchV1RoomJoinRequestsIdResponse
    implements _PatchV1RoomJoinRequestsIdResponse {
  const _$_PatchV1RoomJoinRequestsIdResponse(
      {@JsonKey(name: "id") required this.id});

  factory _$_PatchV1RoomJoinRequestsIdResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_PatchV1RoomJoinRequestsIdResponseFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;

  @override
  String toString() {
    return 'PatchV1RoomJoinRequestsIdResponse(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PatchV1RoomJoinRequestsIdResponse &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PatchV1RoomJoinRequestsIdResponseCopyWith<
          _$_PatchV1RoomJoinRequestsIdResponse>
      get copyWith => __$$_PatchV1RoomJoinRequestsIdResponseCopyWithImpl<
          _$_PatchV1RoomJoinRequestsIdResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatchV1RoomJoinRequestsIdResponseToJson(
      this,
    );
  }
}

abstract class _PatchV1RoomJoinRequestsIdResponse
    implements PatchV1RoomJoinRequestsIdResponse {
  const factory _PatchV1RoomJoinRequestsIdResponse(
          {@JsonKey(name: "id") required final String id}) =
      _$_PatchV1RoomJoinRequestsIdResponse;

  factory _PatchV1RoomJoinRequestsIdResponse.fromJson(
          Map<String, dynamic> json) =
      _$_PatchV1RoomJoinRequestsIdResponse.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_PatchV1RoomJoinRequestsIdResponseCopyWith<
          _$_PatchV1RoomJoinRequestsIdResponse>
      get copyWith => throw _privateConstructorUsedError;
}
