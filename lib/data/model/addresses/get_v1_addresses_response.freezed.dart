// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_v1_addresses_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetV1AddressesResponse _$GetV1AddressesResponseFromJson(
    Map<String, dynamic> json) {
  return _GetV1AddressesResponse.fromJson(json);
}

/// @nodoc
mixin _$GetV1AddressesResponse {
  @JsonKey(name: 'addresses')
  List<AddressWithId> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetV1AddressesResponseCopyWith<GetV1AddressesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetV1AddressesResponseCopyWith<$Res> {
  factory $GetV1AddressesResponseCopyWith(GetV1AddressesResponse value,
          $Res Function(GetV1AddressesResponse) then) =
      _$GetV1AddressesResponseCopyWithImpl<$Res, GetV1AddressesResponse>;
  @useResult
  $Res call({@JsonKey(name: 'addresses') List<AddressWithId> data});
}

/// @nodoc
class _$GetV1AddressesResponseCopyWithImpl<$Res,
        $Val extends GetV1AddressesResponse>
    implements $GetV1AddressesResponseCopyWith<$Res> {
  _$GetV1AddressesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AddressWithId>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetV1AddressesResponseCopyWith<$Res>
    implements $GetV1AddressesResponseCopyWith<$Res> {
  factory _$$_GetV1AddressesResponseCopyWith(_$_GetV1AddressesResponse value,
          $Res Function(_$_GetV1AddressesResponse) then) =
      __$$_GetV1AddressesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'addresses') List<AddressWithId> data});
}

/// @nodoc
class __$$_GetV1AddressesResponseCopyWithImpl<$Res>
    extends _$GetV1AddressesResponseCopyWithImpl<$Res,
        _$_GetV1AddressesResponse>
    implements _$$_GetV1AddressesResponseCopyWith<$Res> {
  __$$_GetV1AddressesResponseCopyWithImpl(_$_GetV1AddressesResponse _value,
      $Res Function(_$_GetV1AddressesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_GetV1AddressesResponse(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AddressWithId>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetV1AddressesResponse implements _GetV1AddressesResponse {
  const _$_GetV1AddressesResponse(
      @JsonKey(name: 'addresses') final List<AddressWithId> data)
      : _data = data;

  factory _$_GetV1AddressesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetV1AddressesResponseFromJson(json);

  final List<AddressWithId> _data;
  @override
  @JsonKey(name: 'addresses')
  List<AddressWithId> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'GetV1AddressesResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetV1AddressesResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetV1AddressesResponseCopyWith<_$_GetV1AddressesResponse> get copyWith =>
      __$$_GetV1AddressesResponseCopyWithImpl<_$_GetV1AddressesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetV1AddressesResponseToJson(
      this,
    );
  }
}

abstract class _GetV1AddressesResponse implements GetV1AddressesResponse {
  const factory _GetV1AddressesResponse(
          @JsonKey(name: 'addresses') final List<AddressWithId> data) =
      _$_GetV1AddressesResponse;

  factory _GetV1AddressesResponse.fromJson(Map<String, dynamic> json) =
      _$_GetV1AddressesResponse.fromJson;

  @override
  @JsonKey(name: 'addresses')
  List<AddressWithId> get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetV1AddressesResponseCopyWith<_$_GetV1AddressesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
