// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_profile_entry_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailedProfileEntryState {
  /// 名前
  String get name => throw _privateConstructorUsedError;

  /// 性別
  Gender? get gender => throw _privateConstructorUsedError;

  /// 身長
  int? get stature => throw _privateConstructorUsedError;

  /// お酒
  DrinkFrequency? get drinkFrequency => throw _privateConstructorUsedError;

  /// タバコ
  CigaretteFrequency? get cigaretteFrequency =>
      throw _privateConstructorUsedError;

  /// 居住地
  Address? get adress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailedProfileEntryStateCopyWith<DetailedProfileEntryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedProfileEntryStateCopyWith<$Res> {
  factory $DetailedProfileEntryStateCopyWith(DetailedProfileEntryState value,
          $Res Function(DetailedProfileEntryState) then) =
      _$DetailedProfileEntryStateCopyWithImpl<$Res, DetailedProfileEntryState>;
  @useResult
  $Res call(
      {String name,
      Gender? gender,
      int? stature,
      DrinkFrequency? drinkFrequency,
      CigaretteFrequency? cigaretteFrequency,
      Address? adress});

  $AddressCopyWith<$Res>? get adress;
}

/// @nodoc
class _$DetailedProfileEntryStateCopyWithImpl<$Res,
        $Val extends DetailedProfileEntryState>
    implements $DetailedProfileEntryStateCopyWith<$Res> {
  _$DetailedProfileEntryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? gender = freezed,
    Object? stature = freezed,
    Object? drinkFrequency = freezed,
    Object? cigaretteFrequency = freezed,
    Object? adress = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      stature: freezed == stature
          ? _value.stature
          : stature // ignore: cast_nullable_to_non_nullable
              as int?,
      drinkFrequency: freezed == drinkFrequency
          ? _value.drinkFrequency
          : drinkFrequency // ignore: cast_nullable_to_non_nullable
              as DrinkFrequency?,
      cigaretteFrequency: freezed == cigaretteFrequency
          ? _value.cigaretteFrequency
          : cigaretteFrequency // ignore: cast_nullable_to_non_nullable
              as CigaretteFrequency?,
      adress: freezed == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as Address?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get adress {
    if (_value.adress == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.adress!, (value) {
      return _then(_value.copyWith(adress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DetailedProfileEntryStateCopyWith<$Res>
    implements $DetailedProfileEntryStateCopyWith<$Res> {
  factory _$$_DetailedProfileEntryStateCopyWith(
          _$_DetailedProfileEntryState value,
          $Res Function(_$_DetailedProfileEntryState) then) =
      __$$_DetailedProfileEntryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      Gender? gender,
      int? stature,
      DrinkFrequency? drinkFrequency,
      CigaretteFrequency? cigaretteFrequency,
      Address? adress});

  @override
  $AddressCopyWith<$Res>? get adress;
}

/// @nodoc
class __$$_DetailedProfileEntryStateCopyWithImpl<$Res>
    extends _$DetailedProfileEntryStateCopyWithImpl<$Res,
        _$_DetailedProfileEntryState>
    implements _$$_DetailedProfileEntryStateCopyWith<$Res> {
  __$$_DetailedProfileEntryStateCopyWithImpl(
      _$_DetailedProfileEntryState _value,
      $Res Function(_$_DetailedProfileEntryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? gender = freezed,
    Object? stature = freezed,
    Object? drinkFrequency = freezed,
    Object? cigaretteFrequency = freezed,
    Object? adress = freezed,
  }) {
    return _then(_$_DetailedProfileEntryState(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      stature: freezed == stature
          ? _value.stature
          : stature // ignore: cast_nullable_to_non_nullable
              as int?,
      drinkFrequency: freezed == drinkFrequency
          ? _value.drinkFrequency
          : drinkFrequency // ignore: cast_nullable_to_non_nullable
              as DrinkFrequency?,
      cigaretteFrequency: freezed == cigaretteFrequency
          ? _value.cigaretteFrequency
          : cigaretteFrequency // ignore: cast_nullable_to_non_nullable
              as CigaretteFrequency?,
      adress: freezed == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as Address?,
    ));
  }
}

/// @nodoc

class _$_DetailedProfileEntryState implements _DetailedProfileEntryState {
  const _$_DetailedProfileEntryState(
      {this.name = "",
      this.gender,
      this.stature,
      this.drinkFrequency,
      this.cigaretteFrequency,
      this.adress});

  /// 名前
  @override
  @JsonKey()
  final String name;

  /// 性別
  @override
  final Gender? gender;

  /// 身長
  @override
  final int? stature;

  /// お酒
  @override
  final DrinkFrequency? drinkFrequency;

  /// タバコ
  @override
  final CigaretteFrequency? cigaretteFrequency;

  /// 居住地
  @override
  final Address? adress;

  @override
  String toString() {
    return 'DetailedProfileEntryState(name: $name, gender: $gender, stature: $stature, drinkFrequency: $drinkFrequency, cigaretteFrequency: $cigaretteFrequency, adress: $adress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailedProfileEntryState &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.stature, stature) || other.stature == stature) &&
            (identical(other.drinkFrequency, drinkFrequency) ||
                other.drinkFrequency == drinkFrequency) &&
            (identical(other.cigaretteFrequency, cigaretteFrequency) ||
                other.cigaretteFrequency == cigaretteFrequency) &&
            (identical(other.adress, adress) || other.adress == adress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, gender, stature,
      drinkFrequency, cigaretteFrequency, adress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailedProfileEntryStateCopyWith<_$_DetailedProfileEntryState>
      get copyWith => __$$_DetailedProfileEntryStateCopyWithImpl<
          _$_DetailedProfileEntryState>(this, _$identity);
}

abstract class _DetailedProfileEntryState implements DetailedProfileEntryState {
  const factory _DetailedProfileEntryState(
      {final String name,
      final Gender? gender,
      final int? stature,
      final DrinkFrequency? drinkFrequency,
      final CigaretteFrequency? cigaretteFrequency,
      final Address? adress}) = _$_DetailedProfileEntryState;

  @override

  /// 名前
  String get name;
  @override

  /// 性別
  Gender? get gender;
  @override

  /// 身長
  int? get stature;
  @override

  /// お酒
  DrinkFrequency? get drinkFrequency;
  @override

  /// タバコ
  CigaretteFrequency? get cigaretteFrequency;
  @override

  /// 居住地
  Address? get adress;
  @override
  @JsonKey(ignore: true)
  _$$_DetailedProfileEntryStateCopyWith<_$_DetailedProfileEntryState>
      get copyWith => throw _privateConstructorUsedError;
}
