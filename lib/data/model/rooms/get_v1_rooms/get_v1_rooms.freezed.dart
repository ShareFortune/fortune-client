// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_v1_rooms.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetV1RoomsResponse _$GetV1RoomsResponseFromJson(Map<String, dynamic> json) {
  return _GetV1RoomsResponse.fromJson(json);
}

/// @nodoc
mixin _$GetV1RoomsResponse {
  @JsonKey(name: "nextToken")
  String get nextToken => throw _privateConstructorUsedError;
  @JsonKey(name: "rooms")
  List<Room> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetV1RoomsResponseCopyWith<GetV1RoomsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetV1RoomsResponseCopyWith<$Res> {
  factory $GetV1RoomsResponseCopyWith(
          GetV1RoomsResponse value, $Res Function(GetV1RoomsResponse) then) =
      _$GetV1RoomsResponseCopyWithImpl<$Res, GetV1RoomsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "nextToken") String nextToken,
      @JsonKey(name: "rooms") List<Room> data});
}

/// @nodoc
class _$GetV1RoomsResponseCopyWithImpl<$Res, $Val extends GetV1RoomsResponse>
    implements $GetV1RoomsResponseCopyWith<$Res> {
  _$GetV1RoomsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextToken = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      nextToken: null == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Room>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetV1RoomsResponseCopyWith<$Res>
    implements $GetV1RoomsResponseCopyWith<$Res> {
  factory _$$_GetV1RoomsResponseCopyWith(_$_GetV1RoomsResponse value,
          $Res Function(_$_GetV1RoomsResponse) then) =
      __$$_GetV1RoomsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "nextToken") String nextToken,
      @JsonKey(name: "rooms") List<Room> data});
}

/// @nodoc
class __$$_GetV1RoomsResponseCopyWithImpl<$Res>
    extends _$GetV1RoomsResponseCopyWithImpl<$Res, _$_GetV1RoomsResponse>
    implements _$$_GetV1RoomsResponseCopyWith<$Res> {
  __$$_GetV1RoomsResponseCopyWithImpl(
      _$_GetV1RoomsResponse _value, $Res Function(_$_GetV1RoomsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextToken = null,
    Object? data = null,
  }) {
    return _then(_$_GetV1RoomsResponse(
      nextToken: null == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Room>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetV1RoomsResponse implements _GetV1RoomsResponse {
  const _$_GetV1RoomsResponse(
      {@JsonKey(name: "nextToken") required this.nextToken,
      @JsonKey(name: "rooms") required final List<Room> data})
      : _data = data;

  factory _$_GetV1RoomsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetV1RoomsResponseFromJson(json);

  @override
  @JsonKey(name: "nextToken")
  final String nextToken;
  final List<Room> _data;
  @override
  @JsonKey(name: "rooms")
  List<Room> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'GetV1RoomsResponse(nextToken: $nextToken, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetV1RoomsResponse &&
            (identical(other.nextToken, nextToken) ||
                other.nextToken == nextToken) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, nextToken, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetV1RoomsResponseCopyWith<_$_GetV1RoomsResponse> get copyWith =>
      __$$_GetV1RoomsResponseCopyWithImpl<_$_GetV1RoomsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetV1RoomsResponseToJson(
      this,
    );
  }
}

abstract class _GetV1RoomsResponse implements GetV1RoomsResponse {
  const factory _GetV1RoomsResponse(
          {@JsonKey(name: "nextToken") required final String nextToken,
          @JsonKey(name: "rooms") required final List<Room> data}) =
      _$_GetV1RoomsResponse;

  factory _GetV1RoomsResponse.fromJson(Map<String, dynamic> json) =
      _$_GetV1RoomsResponse.fromJson;

  @override
  @JsonKey(name: "nextToken")
  String get nextToken;
  @override
  @JsonKey(name: "rooms")
  List<Room> get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetV1RoomsResponseCopyWith<_$_GetV1RoomsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
