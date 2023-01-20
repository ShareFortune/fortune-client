// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Addresses _$AddressesFromJson(Map<String, dynamic> json) {
  return _Addresses.fromJson(json);
}

/// @nodoc
mixin _$Addresses {
  @JsonKey(name: 'addresses')
  List<Address> get addresses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressesCopyWith<Addresses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressesCopyWith<$Res> {
  factory $AddressesCopyWith(Addresses value, $Res Function(Addresses) then) =
      _$AddressesCopyWithImpl<$Res, Addresses>;
  @useResult
  $Res call({@JsonKey(name: 'addresses') List<Address> addresses});
}

/// @nodoc
class _$AddressesCopyWithImpl<$Res, $Val extends Addresses>
    implements $AddressesCopyWith<$Res> {
  _$AddressesCopyWithImpl(this._value, this._then);

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
              as List<Address>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressesCopyWith<$Res> implements $AddressesCopyWith<$Res> {
  factory _$$_AddressesCopyWith(
          _$_Addresses value, $Res Function(_$_Addresses) then) =
      __$$_AddressesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'addresses') List<Address> addresses});
}

/// @nodoc
class __$$_AddressesCopyWithImpl<$Res>
    extends _$AddressesCopyWithImpl<$Res, _$_Addresses>
    implements _$$_AddressesCopyWith<$Res> {
  __$$_AddressesCopyWithImpl(
      _$_Addresses _value, $Res Function(_$_Addresses) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addresses = null,
  }) {
    return _then(_$_Addresses(
      null == addresses
          ? _value._addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<Address>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Addresses implements _Addresses {
  const _$_Addresses(@JsonKey(name: 'addresses') final List<Address> addresses)
      : _addresses = addresses;

  factory _$_Addresses.fromJson(Map<String, dynamic> json) =>
      _$$_AddressesFromJson(json);

  final List<Address> _addresses;
  @override
  @JsonKey(name: 'addresses')
  List<Address> get addresses {
    if (_addresses is EqualUnmodifiableListView) return _addresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addresses);
  }

  @override
  String toString() {
    return 'Addresses(addresses: $addresses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Addresses &&
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
  _$$_AddressesCopyWith<_$_Addresses> get copyWith =>
      __$$_AddressesCopyWithImpl<_$_Addresses>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressesToJson(
      this,
    );
  }
}

abstract class _Addresses implements Addresses {
  const factory _Addresses(
      @JsonKey(name: 'addresses') final List<Address> addresses) = _$_Addresses;

  factory _Addresses.fromJson(Map<String, dynamic> json) =
      _$_Addresses.fromJson;

  @override
  @JsonKey(name: 'addresses')
  List<Address> get addresses;
  @override
  @JsonKey(ignore: true)
  _$$_AddressesCopyWith<_$_Addresses> get copyWith =>
      throw _privateConstructorUsedError;
}

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  @JsonKey(name: 'id', nullable: true)
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'country')
  String get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'prefecture')
  String get prefecture => throw _privateConstructorUsedError;
  @JsonKey(name: 'city')
  String get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', nullable: true) int? id,
      @JsonKey(name: 'country') String country,
      @JsonKey(name: 'prefecture') String prefecture,
      @JsonKey(name: 'city') String city});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? country = null,
    Object? prefecture = null,
    Object? city = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      prefecture: null == prefecture
          ? _value.prefecture
          : prefecture // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$_AddressCopyWith(
          _$_Address value, $Res Function(_$_Address) then) =
      __$$_AddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', nullable: true) int? id,
      @JsonKey(name: 'country') String country,
      @JsonKey(name: 'prefecture') String prefecture,
      @JsonKey(name: 'city') String city});
}

/// @nodoc
class __$$_AddressCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$_Address>
    implements _$$_AddressCopyWith<$Res> {
  __$$_AddressCopyWithImpl(_$_Address _value, $Res Function(_$_Address) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? country = null,
    Object? prefecture = null,
    Object? city = null,
  }) {
    return _then(_$_Address(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      prefecture: null == prefecture
          ? _value.prefecture
          : prefecture // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Address extends _Address {
  const _$_Address(
      {@JsonKey(name: 'id', nullable: true) this.id,
      @JsonKey(name: 'country') required this.country,
      @JsonKey(name: 'prefecture') required this.prefecture,
      @JsonKey(name: 'city') required this.city})
      : super._();

  factory _$_Address.fromJson(Map<String, dynamic> json) =>
      _$$_AddressFromJson(json);

  @override
  @JsonKey(name: 'id', nullable: true)
  final int? id;
  @override
  @JsonKey(name: 'country')
  final String country;
  @override
  @JsonKey(name: 'prefecture')
  final String prefecture;
  @override
  @JsonKey(name: 'city')
  final String city;

  @override
  String toString() {
    return 'Address(id: $id, country: $country, prefecture: $prefecture, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Address &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.prefecture, prefecture) ||
                other.prefecture == prefecture) &&
            (identical(other.city, city) || other.city == city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, country, prefecture, city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      __$$_AddressCopyWithImpl<_$_Address>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressToJson(
      this,
    );
  }
}

abstract class _Address extends Address {
  const factory _Address(
      {@JsonKey(name: 'id', nullable: true) final int? id,
      @JsonKey(name: 'country') required final String country,
      @JsonKey(name: 'prefecture') required final String prefecture,
      @JsonKey(name: 'city') required final String city}) = _$_Address;
  const _Address._() : super._();

  factory _Address.fromJson(Map<String, dynamic> json) = _$_Address.fromJson;

  @override
  @JsonKey(name: 'id', nullable: true)
  int? get id;
  @override
  @JsonKey(name: 'country')
  String get country;
  @override
  @JsonKey(name: 'prefecture')
  String get prefecture;
  @override
  @JsonKey(name: 'city')
  String get city;
  @override
  @JsonKey(ignore: true)
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      throw _privateConstructorUsedError;
}
