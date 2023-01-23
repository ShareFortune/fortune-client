// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_update_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileUpdateState {
  /// 身長
  int? get stature => throw _privateConstructorUsedError;

  /// 居住地
  Address? get address => throw _privateConstructorUsedError;

  /// お酒
  DrinkFrequency? get drinkFrequency => throw _privateConstructorUsedError;

  /// タバコ
  CigaretteFrequency? get cigaretteFrequency =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileUpdateStateCopyWith<ProfileUpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileUpdateStateCopyWith<$Res> {
  factory $ProfileUpdateStateCopyWith(
          ProfileUpdateState value, $Res Function(ProfileUpdateState) then) =
      _$ProfileUpdateStateCopyWithImpl<$Res, ProfileUpdateState>;
  @useResult
  $Res call(
      {int? stature,
      Address? address,
      DrinkFrequency? drinkFrequency,
      CigaretteFrequency? cigaretteFrequency});

  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class _$ProfileUpdateStateCopyWithImpl<$Res, $Val extends ProfileUpdateState>
    implements $ProfileUpdateStateCopyWith<$Res> {
  _$ProfileUpdateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stature = freezed,
    Object? address = freezed,
    Object? drinkFrequency = freezed,
    Object? cigaretteFrequency = freezed,
  }) {
    return _then(_value.copyWith(
      stature: freezed == stature
          ? _value.stature
          : stature // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      drinkFrequency: freezed == drinkFrequency
          ? _value.drinkFrequency
          : drinkFrequency // ignore: cast_nullable_to_non_nullable
              as DrinkFrequency?,
      cigaretteFrequency: freezed == cigaretteFrequency
          ? _value.cigaretteFrequency
          : cigaretteFrequency // ignore: cast_nullable_to_non_nullable
              as CigaretteFrequency?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProfileUpdateStateCopyWith<$Res>
    implements $ProfileUpdateStateCopyWith<$Res> {
  factory _$$_ProfileUpdateStateCopyWith(_$_ProfileUpdateState value,
          $Res Function(_$_ProfileUpdateState) then) =
      __$$_ProfileUpdateStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? stature,
      Address? address,
      DrinkFrequency? drinkFrequency,
      CigaretteFrequency? cigaretteFrequency});

  @override
  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class __$$_ProfileUpdateStateCopyWithImpl<$Res>
    extends _$ProfileUpdateStateCopyWithImpl<$Res, _$_ProfileUpdateState>
    implements _$$_ProfileUpdateStateCopyWith<$Res> {
  __$$_ProfileUpdateStateCopyWithImpl(
      _$_ProfileUpdateState _value, $Res Function(_$_ProfileUpdateState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stature = freezed,
    Object? address = freezed,
    Object? drinkFrequency = freezed,
    Object? cigaretteFrequency = freezed,
  }) {
    return _then(_$_ProfileUpdateState(
      stature: freezed == stature
          ? _value.stature
          : stature // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      drinkFrequency: freezed == drinkFrequency
          ? _value.drinkFrequency
          : drinkFrequency // ignore: cast_nullable_to_non_nullable
              as DrinkFrequency?,
      cigaretteFrequency: freezed == cigaretteFrequency
          ? _value.cigaretteFrequency
          : cigaretteFrequency // ignore: cast_nullable_to_non_nullable
              as CigaretteFrequency?,
    ));
  }
}

/// @nodoc

class _$_ProfileUpdateState implements _ProfileUpdateState {
  const _$_ProfileUpdateState(
      {this.stature,
      this.address,
      this.drinkFrequency,
      this.cigaretteFrequency});

  /// 身長
  @override
  final int? stature;

  /// 居住地
  @override
  final Address? address;

  /// お酒
  @override
  final DrinkFrequency? drinkFrequency;

  /// タバコ
  @override
  final CigaretteFrequency? cigaretteFrequency;

  @override
  String toString() {
    return 'ProfileUpdateState(stature: $stature, address: $address, drinkFrequency: $drinkFrequency, cigaretteFrequency: $cigaretteFrequency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileUpdateState &&
            (identical(other.stature, stature) || other.stature == stature) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.drinkFrequency, drinkFrequency) ||
                other.drinkFrequency == drinkFrequency) &&
            (identical(other.cigaretteFrequency, cigaretteFrequency) ||
                other.cigaretteFrequency == cigaretteFrequency));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, stature, address, drinkFrequency, cigaretteFrequency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileUpdateStateCopyWith<_$_ProfileUpdateState> get copyWith =>
      __$$_ProfileUpdateStateCopyWithImpl<_$_ProfileUpdateState>(
          this, _$identity);
}

abstract class _ProfileUpdateState implements ProfileUpdateState {
  const factory _ProfileUpdateState(
      {final int? stature,
      final Address? address,
      final DrinkFrequency? drinkFrequency,
      final CigaretteFrequency? cigaretteFrequency}) = _$_ProfileUpdateState;

  @override

  /// 身長
  int? get stature;
  @override

  /// 居住地
  Address? get address;
  @override

  /// お酒
  DrinkFrequency? get drinkFrequency;
  @override

  /// タバコ
  CigaretteFrequency? get cigaretteFrequency;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileUpdateStateCopyWith<_$_ProfileUpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}
