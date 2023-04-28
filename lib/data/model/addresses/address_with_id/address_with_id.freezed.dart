// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_with_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddressWithId _$AddressWithIdFromJson(Map<String, dynamic> json) {
  return _AddressWithId.fromJson(json);
}

/// @nodoc
mixin _$AddressWithId {
  int get id => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get prefecture => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressWithIdCopyWith<AddressWithId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressWithIdCopyWith<$Res> {
  factory $AddressWithIdCopyWith(
          AddressWithId value, $Res Function(AddressWithId) then) =
      _$AddressWithIdCopyWithImpl<$Res, AddressWithId>;
  @useResult
  $Res call({int id, String country, String prefecture, String city});
}

/// @nodoc
class _$AddressWithIdCopyWithImpl<$Res, $Val extends AddressWithId>
    implements $AddressWithIdCopyWith<$Res> {
  _$AddressWithIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? country = null,
    Object? prefecture = null,
    Object? city = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$_AddressWithIdCopyWith<$Res>
    implements $AddressWithIdCopyWith<$Res> {
  factory _$$_AddressWithIdCopyWith(
          _$_AddressWithId value, $Res Function(_$_AddressWithId) then) =
      __$$_AddressWithIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String country, String prefecture, String city});
}

/// @nodoc
class __$$_AddressWithIdCopyWithImpl<$Res>
    extends _$AddressWithIdCopyWithImpl<$Res, _$_AddressWithId>
    implements _$$_AddressWithIdCopyWith<$Res> {
  __$$_AddressWithIdCopyWithImpl(
      _$_AddressWithId _value, $Res Function(_$_AddressWithId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? country = null,
    Object? prefecture = null,
    Object? city = null,
  }) {
    return _then(_$_AddressWithId(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$_AddressWithId extends _AddressWithId {
  const _$_AddressWithId(
      {required this.id,
      required this.country,
      required this.prefecture,
      required this.city})
      : super._();

  factory _$_AddressWithId.fromJson(Map<String, dynamic> json) =>
      _$$_AddressWithIdFromJson(json);

  @override
  final int id;
  @override
  final String country;
  @override
  final String prefecture;
  @override
  final String city;

  @override
  String toString() {
    return 'AddressWithId(id: $id, country: $country, prefecture: $prefecture, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressWithId &&
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
  _$$_AddressWithIdCopyWith<_$_AddressWithId> get copyWith =>
      __$$_AddressWithIdCopyWithImpl<_$_AddressWithId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressWithIdToJson(
      this,
    );
  }
}

abstract class _AddressWithId extends AddressWithId {
  const factory _AddressWithId(
      {required final int id,
      required final String country,
      required final String prefecture,
      required final String city}) = _$_AddressWithId;
  const _AddressWithId._() : super._();

  factory _AddressWithId.fromJson(Map<String, dynamic> json) =
      _$_AddressWithId.fromJson;

  @override
  int get id;
  @override
  String get country;
  @override
  String get prefecture;
  @override
  String get city;
  @override
  @JsonKey(ignore: true)
  _$$_AddressWithIdCopyWith<_$_AddressWithId> get copyWith =>
      throw _privateConstructorUsedError;
}
