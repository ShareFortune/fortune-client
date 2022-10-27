// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return _Profile.fromJson(json);
}

/// @nodoc
mixin _$Profile {
  String get mainImagePath => throw _privateConstructorUsedError;
  String get secondImagePath => throw _privateConstructorUsedError;
  String get thirdImagePath => throw _privateConstructorUsedError;
  String get fourthImagePath => throw _privateConstructorUsedError;
  String get fifthImagePath => throw _privateConstructorUsedError;
  String get sixthImagePath => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  DrinkFrequency get drinkFrequency =>
      throw _privateConstructorUsedError; // お酒をよく飲むか
  CigaretteFrequency get cigaretteFrequency =>
      throw _privateConstructorUsedError; // タバコをよく吸うか
  String get selfIntroduction =>
      throw _privateConstructorUsedError; // 自己紹介文(nullalble)
  Address get adress => throw _privateConstructorUsedError; // 居住地
  String get occupationID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res, Profile>;
  @useResult
  $Res call(
      {String mainImagePath,
      String secondImagePath,
      String thirdImagePath,
      String fourthImagePath,
      String fifthImagePath,
      String sixthImagePath,
      String name,
      Gender gender,
      int height,
      DrinkFrequency drinkFrequency,
      CigaretteFrequency cigaretteFrequency,
      String selfIntroduction,
      Address adress,
      String occupationID});

  $AddressCopyWith<$Res> get adress;
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res, $Val extends Profile>
    implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainImagePath = null,
    Object? secondImagePath = null,
    Object? thirdImagePath = null,
    Object? fourthImagePath = null,
    Object? fifthImagePath = null,
    Object? sixthImagePath = null,
    Object? name = null,
    Object? gender = null,
    Object? height = null,
    Object? drinkFrequency = null,
    Object? cigaretteFrequency = null,
    Object? selfIntroduction = null,
    Object? adress = null,
    Object? occupationID = null,
  }) {
    return _then(_value.copyWith(
      mainImagePath: null == mainImagePath
          ? _value.mainImagePath
          : mainImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      secondImagePath: null == secondImagePath
          ? _value.secondImagePath
          : secondImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      thirdImagePath: null == thirdImagePath
          ? _value.thirdImagePath
          : thirdImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      fourthImagePath: null == fourthImagePath
          ? _value.fourthImagePath
          : fourthImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      fifthImagePath: null == fifthImagePath
          ? _value.fifthImagePath
          : fifthImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      sixthImagePath: null == sixthImagePath
          ? _value.sixthImagePath
          : sixthImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      drinkFrequency: null == drinkFrequency
          ? _value.drinkFrequency
          : drinkFrequency // ignore: cast_nullable_to_non_nullable
              as DrinkFrequency,
      cigaretteFrequency: null == cigaretteFrequency
          ? _value.cigaretteFrequency
          : cigaretteFrequency // ignore: cast_nullable_to_non_nullable
              as CigaretteFrequency,
      selfIntroduction: null == selfIntroduction
          ? _value.selfIntroduction
          : selfIntroduction // ignore: cast_nullable_to_non_nullable
              as String,
      adress: null == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as Address,
      occupationID: null == occupationID
          ? _value.occupationID
          : occupationID // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get adress {
    return $AddressCopyWith<$Res>(_value.adress, (value) {
      return _then(_value.copyWith(adress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProfileCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$$_ProfileCopyWith(
          _$_Profile value, $Res Function(_$_Profile) then) =
      __$$_ProfileCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String mainImagePath,
      String secondImagePath,
      String thirdImagePath,
      String fourthImagePath,
      String fifthImagePath,
      String sixthImagePath,
      String name,
      Gender gender,
      int height,
      DrinkFrequency drinkFrequency,
      CigaretteFrequency cigaretteFrequency,
      String selfIntroduction,
      Address adress,
      String occupationID});

  @override
  $AddressCopyWith<$Res> get adress;
}

/// @nodoc
class __$$_ProfileCopyWithImpl<$Res>
    extends _$ProfileCopyWithImpl<$Res, _$_Profile>
    implements _$$_ProfileCopyWith<$Res> {
  __$$_ProfileCopyWithImpl(_$_Profile _value, $Res Function(_$_Profile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainImagePath = null,
    Object? secondImagePath = null,
    Object? thirdImagePath = null,
    Object? fourthImagePath = null,
    Object? fifthImagePath = null,
    Object? sixthImagePath = null,
    Object? name = null,
    Object? gender = null,
    Object? height = null,
    Object? drinkFrequency = null,
    Object? cigaretteFrequency = null,
    Object? selfIntroduction = null,
    Object? adress = null,
    Object? occupationID = null,
  }) {
    return _then(_$_Profile(
      mainImagePath: null == mainImagePath
          ? _value.mainImagePath
          : mainImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      secondImagePath: null == secondImagePath
          ? _value.secondImagePath
          : secondImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      thirdImagePath: null == thirdImagePath
          ? _value.thirdImagePath
          : thirdImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      fourthImagePath: null == fourthImagePath
          ? _value.fourthImagePath
          : fourthImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      fifthImagePath: null == fifthImagePath
          ? _value.fifthImagePath
          : fifthImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      sixthImagePath: null == sixthImagePath
          ? _value.sixthImagePath
          : sixthImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      drinkFrequency: null == drinkFrequency
          ? _value.drinkFrequency
          : drinkFrequency // ignore: cast_nullable_to_non_nullable
              as DrinkFrequency,
      cigaretteFrequency: null == cigaretteFrequency
          ? _value.cigaretteFrequency
          : cigaretteFrequency // ignore: cast_nullable_to_non_nullable
              as CigaretteFrequency,
      selfIntroduction: null == selfIntroduction
          ? _value.selfIntroduction
          : selfIntroduction // ignore: cast_nullable_to_non_nullable
              as String,
      adress: null == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as Address,
      occupationID: null == occupationID
          ? _value.occupationID
          : occupationID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Profile implements _Profile {
  const _$_Profile(
      {required this.mainImagePath,
      required this.secondImagePath,
      required this.thirdImagePath,
      required this.fourthImagePath,
      required this.fifthImagePath,
      required this.sixthImagePath,
      required this.name,
      required this.gender,
      required this.height,
      required this.drinkFrequency,
      required this.cigaretteFrequency,
      required this.selfIntroduction,
      required this.adress,
      required this.occupationID});

  factory _$_Profile.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileFromJson(json);

  @override
  final String mainImagePath;
  @override
  final String secondImagePath;
  @override
  final String thirdImagePath;
  @override
  final String fourthImagePath;
  @override
  final String fifthImagePath;
  @override
  final String sixthImagePath;
  @override
  final String name;
  @override
  final Gender gender;
  @override
  final int height;
  @override
  final DrinkFrequency drinkFrequency;
// お酒をよく飲むか
  @override
  final CigaretteFrequency cigaretteFrequency;
// タバコをよく吸うか
  @override
  final String selfIntroduction;
// 自己紹介文(nullalble)
  @override
  final Address adress;
// 居住地
  @override
  final String occupationID;

  @override
  String toString() {
    return 'Profile(mainImagePath: $mainImagePath, secondImagePath: $secondImagePath, thirdImagePath: $thirdImagePath, fourthImagePath: $fourthImagePath, fifthImagePath: $fifthImagePath, sixthImagePath: $sixthImagePath, name: $name, gender: $gender, height: $height, drinkFrequency: $drinkFrequency, cigaretteFrequency: $cigaretteFrequency, selfIntroduction: $selfIntroduction, adress: $adress, occupationID: $occupationID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Profile &&
            (identical(other.mainImagePath, mainImagePath) ||
                other.mainImagePath == mainImagePath) &&
            (identical(other.secondImagePath, secondImagePath) ||
                other.secondImagePath == secondImagePath) &&
            (identical(other.thirdImagePath, thirdImagePath) ||
                other.thirdImagePath == thirdImagePath) &&
            (identical(other.fourthImagePath, fourthImagePath) ||
                other.fourthImagePath == fourthImagePath) &&
            (identical(other.fifthImagePath, fifthImagePath) ||
                other.fifthImagePath == fifthImagePath) &&
            (identical(other.sixthImagePath, sixthImagePath) ||
                other.sixthImagePath == sixthImagePath) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.drinkFrequency, drinkFrequency) ||
                other.drinkFrequency == drinkFrequency) &&
            (identical(other.cigaretteFrequency, cigaretteFrequency) ||
                other.cigaretteFrequency == cigaretteFrequency) &&
            (identical(other.selfIntroduction, selfIntroduction) ||
                other.selfIntroduction == selfIntroduction) &&
            (identical(other.adress, adress) || other.adress == adress) &&
            (identical(other.occupationID, occupationID) ||
                other.occupationID == occupationID));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      mainImagePath,
      secondImagePath,
      thirdImagePath,
      fourthImagePath,
      fifthImagePath,
      sixthImagePath,
      name,
      gender,
      height,
      drinkFrequency,
      cigaretteFrequency,
      selfIntroduction,
      adress,
      occupationID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileCopyWith<_$_Profile> get copyWith =>
      __$$_ProfileCopyWithImpl<_$_Profile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileToJson(
      this,
    );
  }
}

abstract class _Profile implements Profile {
  const factory _Profile(
      {required final String mainImagePath,
      required final String secondImagePath,
      required final String thirdImagePath,
      required final String fourthImagePath,
      required final String fifthImagePath,
      required final String sixthImagePath,
      required final String name,
      required final Gender gender,
      required final int height,
      required final DrinkFrequency drinkFrequency,
      required final CigaretteFrequency cigaretteFrequency,
      required final String selfIntroduction,
      required final Address adress,
      required final String occupationID}) = _$_Profile;

  factory _Profile.fromJson(Map<String, dynamic> json) = _$_Profile.fromJson;

  @override
  String get mainImagePath;
  @override
  String get secondImagePath;
  @override
  String get thirdImagePath;
  @override
  String get fourthImagePath;
  @override
  String get fifthImagePath;
  @override
  String get sixthImagePath;
  @override
  String get name;
  @override
  Gender get gender;
  @override
  int get height;
  @override
  DrinkFrequency get drinkFrequency;
  @override // お酒をよく飲むか
  CigaretteFrequency get cigaretteFrequency;
  @override // タバコをよく吸うか
  String get selfIntroduction;
  @override // 自己紹介文(nullalble)
  Address get adress;
  @override // 居住地
  String get occupationID;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileCopyWith<_$_Profile> get copyWith =>
      throw _privateConstructorUsedError;
}
