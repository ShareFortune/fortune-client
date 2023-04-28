// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'addresses_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddressesResponse _$AddressesResponseFromJson(Map<String, dynamic> json) {
  return _AddressesResponse.fromJson(json);
}

/// @nodoc
mixin _$AddressesResponse {
  List<AddressWithId> get addresses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressesResponseCopyWith<AddressesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressesResponseCopyWith<$Res> {
  factory $AddressesResponseCopyWith(
          AddressesResponse value, $Res Function(AddressesResponse) then) =
      _$AddressesResponseCopyWithImpl<$Res, AddressesResponse>;
  @useResult
  $Res call({List<AddressWithId> addresses});
}

/// @nodoc
class _$AddressesResponseCopyWithImpl<$Res, $Val extends AddressesResponse>
    implements $AddressesResponseCopyWith<$Res> {
  _$AddressesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addresses = null,
  }) {
    return _then(_value.copyWith(
      addresses: null == addresses
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<AddressWithId>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressesResponseCopyWith<$Res>
    implements $AddressesResponseCopyWith<$Res> {
  factory _$$_AddressesResponseCopyWith(_$_AddressesResponse value,
          $Res Function(_$_AddressesResponse) then) =
      __$$_AddressesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AddressWithId> addresses});
}

/// @nodoc
class __$$_AddressesResponseCopyWithImpl<$Res>
    extends _$AddressesResponseCopyWithImpl<$Res, _$_AddressesResponse>
    implements _$$_AddressesResponseCopyWith<$Res> {
  __$$_AddressesResponseCopyWithImpl(
      _$_AddressesResponse _value, $Res Function(_$_AddressesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addresses = null,
  }) {
    return _then(_$_AddressesResponse(
      addresses: null == addresses
          ? _value._addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<AddressWithId>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddressesResponse implements _AddressesResponse {
  const _$_AddressesResponse({required final List<AddressWithId> addresses})
      : _addresses = addresses;

  factory _$_AddressesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AddressesResponseFromJson(json);

  final List<AddressWithId> _addresses;
  @override
  List<AddressWithId> get addresses {
    if (_addresses is EqualUnmodifiableListView) return _addresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addresses);
  }

  @override
  String toString() {
    return 'AddressesResponse(addresses: $addresses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressesResponse &&
            const DeepCollectionEquality()
                .equals(other._addresses, _addresses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_addresses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressesResponseCopyWith<_$_AddressesResponse> get copyWith =>
      __$$_AddressesResponseCopyWithImpl<_$_AddressesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressesResponseToJson(
      this,
    );
  }
}

abstract class _AddressesResponse implements AddressesResponse {
  const factory _AddressesResponse(
      {required final List<AddressWithId> addresses}) = _$_AddressesResponse;

  factory _AddressesResponse.fromJson(Map<String, dynamic> json) =
      _$_AddressesResponse.fromJson;

  @override
  List<AddressWithId> get addresses;
  @override
  @JsonKey(ignore: true)
  _$$_AddressesResponseCopyWith<_$_AddressesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
