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
  /// 性別
  Gender? get gender => throw _privateConstructorUsedError;

  /// 身長
  int? get height => throw _privateConstructorUsedError;

  /// お酒
  String? get drinkFrequency => throw _privateConstructorUsedError;

  /// タバコ
  String? get cigaretteFrequency => throw _privateConstructorUsedError;

  /// 職業
  String? get occupation => throw _privateConstructorUsedError;

  /// 居住地
  String? get residence => throw _privateConstructorUsedError;

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
      {Gender? gender,
      int? height,
      String? drinkFrequency,
      String? cigaretteFrequency,
      String? occupation,
      String? residence});
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
    Object? gender = freezed,
    Object? height = freezed,
    Object? drinkFrequency = freezed,
    Object? cigaretteFrequency = freezed,
    Object? occupation = freezed,
    Object? residence = freezed,
  }) {
    return _then(_value.copyWith(
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      drinkFrequency: freezed == drinkFrequency
          ? _value.drinkFrequency
          : drinkFrequency // ignore: cast_nullable_to_non_nullable
              as String?,
      cigaretteFrequency: freezed == cigaretteFrequency
          ? _value.cigaretteFrequency
          : cigaretteFrequency // ignore: cast_nullable_to_non_nullable
              as String?,
      occupation: freezed == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as String?,
      residence: freezed == residence
          ? _value.residence
          : residence // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
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
      {Gender? gender,
      int? height,
      String? drinkFrequency,
      String? cigaretteFrequency,
      String? occupation,
      String? residence});
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
    Object? gender = freezed,
    Object? height = freezed,
    Object? drinkFrequency = freezed,
    Object? cigaretteFrequency = freezed,
    Object? occupation = freezed,
    Object? residence = freezed,
  }) {
    return _then(_$_DetailedProfileEntryState(
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      drinkFrequency: freezed == drinkFrequency
          ? _value.drinkFrequency
          : drinkFrequency // ignore: cast_nullable_to_non_nullable
              as String?,
      cigaretteFrequency: freezed == cigaretteFrequency
          ? _value.cigaretteFrequency
          : cigaretteFrequency // ignore: cast_nullable_to_non_nullable
              as String?,
      occupation: freezed == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as String?,
      residence: freezed == residence
          ? _value.residence
          : residence // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DetailedProfileEntryState extends _DetailedProfileEntryState {
  const _$_DetailedProfileEntryState(
      {this.gender,
      this.height,
      this.drinkFrequency,
      this.cigaretteFrequency,
      this.occupation,
      this.residence})
      : super._();

  /// 性別
  @override
  final Gender? gender;

  /// 身長
  @override
  final int? height;

  /// お酒
  @override
  final String? drinkFrequency;

  /// タバコ
  @override
  final String? cigaretteFrequency;

  /// 職業
  @override
  final String? occupation;

  /// 居住地
  @override
  final String? residence;

  @override
  String toString() {
    return 'DetailedProfileEntryState(gender: $gender, height: $height, drinkFrequency: $drinkFrequency, cigaretteFrequency: $cigaretteFrequency, occupation: $occupation, residence: $residence)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailedProfileEntryState &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.drinkFrequency, drinkFrequency) ||
                other.drinkFrequency == drinkFrequency) &&
            (identical(other.cigaretteFrequency, cigaretteFrequency) ||
                other.cigaretteFrequency == cigaretteFrequency) &&
            (identical(other.occupation, occupation) ||
                other.occupation == occupation) &&
            (identical(other.residence, residence) ||
                other.residence == residence));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gender, height, drinkFrequency,
      cigaretteFrequency, occupation, residence);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailedProfileEntryStateCopyWith<_$_DetailedProfileEntryState>
      get copyWith => __$$_DetailedProfileEntryStateCopyWithImpl<
          _$_DetailedProfileEntryState>(this, _$identity);
}

abstract class _DetailedProfileEntryState extends DetailedProfileEntryState {
  const factory _DetailedProfileEntryState(
      {final Gender? gender,
      final int? height,
      final String? drinkFrequency,
      final String? cigaretteFrequency,
      final String? occupation,
      final String? residence}) = _$_DetailedProfileEntryState;
  const _DetailedProfileEntryState._() : super._();

  @override

  /// 性別
  Gender? get gender;
  @override

  /// 身長
  int? get height;
  @override

  /// お酒
  String? get drinkFrequency;
  @override

  /// タバコ
  String? get cigaretteFrequency;
  @override

  /// 職業
  String? get occupation;
  @override

  /// 居住地
  String? get residence;
  @override
  @JsonKey(ignore: true)
  _$$_DetailedProfileEntryStateCopyWith<_$_DetailedProfileEntryState>
      get copyWith => throw _privateConstructorUsedError;
}
