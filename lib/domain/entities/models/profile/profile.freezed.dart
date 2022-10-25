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
  String? get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  DateTime get birthday => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  DrinkFrequency get drinkFrequency =>
      throw _privateConstructorUsedError; // お酒をよく飲むか
  CigaretteFrequency get cigaretteFrequency =>
      throw _privateConstructorUsedError; // タバコをよく吸うか
  String get selfIntroduction =>
      throw _privateConstructorUsedError; // 自己紹介文(nullalble)
  String get countryID => throw _privateConstructorUsedError; // 住んでいる国ID
  String get prefectureID => throw _privateConstructorUsedError; // 住んでいる都道府県ID
  String get cityID => throw _privateConstructorUsedError; // 住んでいる都市ID
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
      {String? id,
      String userId,
      DateTime birthday,
      Gender gender,
      DrinkFrequency drinkFrequency,
      CigaretteFrequency cigaretteFrequency,
      String selfIntroduction,
      String countryID,
      String prefectureID,
      String cityID,
      String occupationID});
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
    Object? id = freezed,
    Object? userId = null,
    Object? birthday = null,
    Object? gender = null,
    Object? drinkFrequency = null,
    Object? cigaretteFrequency = null,
    Object? selfIntroduction = null,
    Object? countryID = null,
    Object? prefectureID = null,
    Object? cityID = null,
    Object? occupationID = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
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
      countryID: null == countryID
          ? _value.countryID
          : countryID // ignore: cast_nullable_to_non_nullable
              as String,
      prefectureID: null == prefectureID
          ? _value.prefectureID
          : prefectureID // ignore: cast_nullable_to_non_nullable
              as String,
      cityID: null == cityID
          ? _value.cityID
          : cityID // ignore: cast_nullable_to_non_nullable
              as String,
      occupationID: null == occupationID
          ? _value.occupationID
          : occupationID // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
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
      {String? id,
      String userId,
      DateTime birthday,
      Gender gender,
      DrinkFrequency drinkFrequency,
      CigaretteFrequency cigaretteFrequency,
      String selfIntroduction,
      String countryID,
      String prefectureID,
      String cityID,
      String occupationID});
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
    Object? id = freezed,
    Object? userId = null,
    Object? birthday = null,
    Object? gender = null,
    Object? drinkFrequency = null,
    Object? cigaretteFrequency = null,
    Object? selfIntroduction = null,
    Object? countryID = null,
    Object? prefectureID = null,
    Object? cityID = null,
    Object? occupationID = null,
  }) {
    return _then(_$_Profile(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
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
      countryID: null == countryID
          ? _value.countryID
          : countryID // ignore: cast_nullable_to_non_nullable
              as String,
      prefectureID: null == prefectureID
          ? _value.prefectureID
          : prefectureID // ignore: cast_nullable_to_non_nullable
              as String,
      cityID: null == cityID
          ? _value.cityID
          : cityID // ignore: cast_nullable_to_non_nullable
              as String,
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
      {required this.id,
      required this.userId,
      required this.birthday,
      required this.gender,
      required this.drinkFrequency,
      required this.cigaretteFrequency,
      required this.selfIntroduction,
      required this.countryID,
      required this.prefectureID,
      required this.cityID,
      required this.occupationID});

  factory _$_Profile.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileFromJson(json);

  @override
  final String? id;
  @override
  final String userId;
  @override
  final DateTime birthday;
  @override
  final Gender gender;
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
  final String countryID;
// 住んでいる国ID
  @override
  final String prefectureID;
// 住んでいる都道府県ID
  @override
  final String cityID;
// 住んでいる都市ID
  @override
  final String occupationID;

  @override
  String toString() {
    return 'Profile(id: $id, userId: $userId, birthday: $birthday, gender: $gender, drinkFrequency: $drinkFrequency, cigaretteFrequency: $cigaretteFrequency, selfIntroduction: $selfIntroduction, countryID: $countryID, prefectureID: $prefectureID, cityID: $cityID, occupationID: $occupationID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Profile &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.drinkFrequency, drinkFrequency) ||
                other.drinkFrequency == drinkFrequency) &&
            (identical(other.cigaretteFrequency, cigaretteFrequency) ||
                other.cigaretteFrequency == cigaretteFrequency) &&
            (identical(other.selfIntroduction, selfIntroduction) ||
                other.selfIntroduction == selfIntroduction) &&
            (identical(other.countryID, countryID) ||
                other.countryID == countryID) &&
            (identical(other.prefectureID, prefectureID) ||
                other.prefectureID == prefectureID) &&
            (identical(other.cityID, cityID) || other.cityID == cityID) &&
            (identical(other.occupationID, occupationID) ||
                other.occupationID == occupationID));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      birthday,
      gender,
      drinkFrequency,
      cigaretteFrequency,
      selfIntroduction,
      countryID,
      prefectureID,
      cityID,
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
      {required final String? id,
      required final String userId,
      required final DateTime birthday,
      required final Gender gender,
      required final DrinkFrequency drinkFrequency,
      required final CigaretteFrequency cigaretteFrequency,
      required final String selfIntroduction,
      required final String countryID,
      required final String prefectureID,
      required final String cityID,
      required final String occupationID}) = _$_Profile;

  factory _Profile.fromJson(Map<String, dynamic> json) = _$_Profile.fromJson;

  @override
  String? get id;
  @override
  String get userId;
  @override
  DateTime get birthday;
  @override
  Gender get gender;
  @override
  DrinkFrequency get drinkFrequency;
  @override // お酒をよく飲むか
  CigaretteFrequency get cigaretteFrequency;
  @override // タバコをよく吸うか
  String get selfIntroduction;
  @override // 自己紹介文(nullalble)
  String get countryID;
  @override // 住んでいる国ID
  String get prefectureID;
  @override // 住んでいる都道府県ID
  String get cityID;
  @override // 住んでいる都市ID
  String get occupationID;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileCopyWith<_$_Profile> get copyWith =>
      throw _privateConstructorUsedError;
}
