// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_v1_rooms_id_room_join_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostV1RoomsIdRoomJoinRequestResponse
    _$PostV1RoomsIdRoomJoinRequestResponseFromJson(Map<String, dynamic> json) {
  return _PostV1RoomsIdRoomJoinRequestResponse.fromJson(json);
}

/// @nodoc
mixin _$PostV1RoomsIdRoomJoinRequestResponse {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostV1RoomsIdRoomJoinRequestResponseCopyWith<
          PostV1RoomsIdRoomJoinRequestResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostV1RoomsIdRoomJoinRequestResponseCopyWith<$Res> {
  factory $PostV1RoomsIdRoomJoinRequestResponseCopyWith(
          PostV1RoomsIdRoomJoinRequestResponse value,
          $Res Function(PostV1RoomsIdRoomJoinRequestResponse) then) =
      _$PostV1RoomsIdRoomJoinRequestResponseCopyWithImpl<$Res,
          PostV1RoomsIdRoomJoinRequestResponse>;
  @useResult
  $Res call({@JsonKey(name: 'id') String id});
}

/// @nodoc
class _$PostV1RoomsIdRoomJoinRequestResponseCopyWithImpl<$Res,
        $Val extends PostV1RoomsIdRoomJoinRequestResponse>
    implements $PostV1RoomsIdRoomJoinRequestResponseCopyWith<$Res> {
  _$PostV1RoomsIdRoomJoinRequestResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_PostV1RoomsIdRoomJoinRequestResponseCopyWith<$Res>
    implements $PostV1RoomsIdRoomJoinRequestResponseCopyWith<$Res> {
  factory _$$_PostV1RoomsIdRoomJoinRequestResponseCopyWith(
          _$_PostV1RoomsIdRoomJoinRequestResponse value,
          $Res Function(_$_PostV1RoomsIdRoomJoinRequestResponse) then) =
      __$$_PostV1RoomsIdRoomJoinRequestResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id') String id});
}

/// @nodoc
class __$$_PostV1RoomsIdRoomJoinRequestResponseCopyWithImpl<$Res>
    extends _$PostV1RoomsIdRoomJoinRequestResponseCopyWithImpl<$Res,
        _$_PostV1RoomsIdRoomJoinRequestResponse>
    implements _$$_PostV1RoomsIdRoomJoinRequestResponseCopyWith<$Res> {
  __$$_PostV1RoomsIdRoomJoinRequestResponseCopyWithImpl(
      _$_PostV1RoomsIdRoomJoinRequestResponse _value,
      $Res Function(_$_PostV1RoomsIdRoomJoinRequestResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_PostV1RoomsIdRoomJoinRequestResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostV1RoomsIdRoomJoinRequestResponse
    implements _PostV1RoomsIdRoomJoinRequestResponse {
  const _$_PostV1RoomsIdRoomJoinRequestResponse(
      {@JsonKey(name: 'id') required this.id});

  factory _$_PostV1RoomsIdRoomJoinRequestResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_PostV1RoomsIdRoomJoinRequestResponseFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;

  @override
  String toString() {
    return 'PostV1RoomsIdRoomJoinRequestResponse(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostV1RoomsIdRoomJoinRequestResponse &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostV1RoomsIdRoomJoinRequestResponseCopyWith<
          _$_PostV1RoomsIdRoomJoinRequestResponse>
      get copyWith => __$$_PostV1RoomsIdRoomJoinRequestResponseCopyWithImpl<
          _$_PostV1RoomsIdRoomJoinRequestResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostV1RoomsIdRoomJoinRequestResponseToJson(
      this,
    );
  }
}

abstract class _PostV1RoomsIdRoomJoinRequestResponse
    implements PostV1RoomsIdRoomJoinRequestResponse {
  const factory _PostV1RoomsIdRoomJoinRequestResponse(
          {@JsonKey(name: 'id') required final String id}) =
      _$_PostV1RoomsIdRoomJoinRequestResponse;

  factory _PostV1RoomsIdRoomJoinRequestResponse.fromJson(
          Map<String, dynamic> json) =
      _$_PostV1RoomsIdRoomJoinRequestResponse.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_PostV1RoomsIdRoomJoinRequestResponseCopyWith<
          _$_PostV1RoomsIdRoomJoinRequestResponse>
      get copyWith => throw _privateConstructorUsedError;
}
