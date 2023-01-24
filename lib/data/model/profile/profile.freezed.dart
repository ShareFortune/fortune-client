// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;

  /// 名前
  @JsonKey(name: "username")
  String get username => throw _privateConstructorUsedError;

  /// ニックネーム
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;

  /// プロフィール画像
  @JsonKey(name: "mainImageURL")
  String get mainImageURL => throw _privateConstructorUsedError;

  /// 性別
  @JsonKey(name: "gender")
  @GenderConverter()
  Gender get gender => throw _privateConstructorUsedError;

  /// 居住地
  @JsonKey(name: "address")
  Address get address => throw _privateConstructorUsedError;

  /// NULL =>
  /// 身長
  @JsonKey(name: "height")
  int? get height => throw _privateConstructorUsedError;

  /// お酒をよく飲むか
  @JsonKey(name: "drinkFrequency")
  @DrinkFrequencyConverter()
  DrinkFrequency? get drinkFrequency => throw _privateConstructorUsedError;

  /// タバコをよく吸うか
  @JsonKey(name: "cigaretteFrequency")
  @CigaretteFrequencyConverter()
  CigaretteFrequency? get cigaretteFrequency =>
      throw _privateConstructorUsedError;

  /// 自己紹介文
  @JsonKey(name: "selfIntroduction")
  String? get selfIntroduction => throw _privateConstructorUsedError;

  /// 居住地
  @JsonKey(name: "tags")
  List<Tag>? get tags => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "id")
          String id,
      @JsonKey(name: "username")
          String username,
      @JsonKey(name: "name")
          String name,
      @JsonKey(name: "mainImageURL")
          String mainImageURL,
      @JsonKey(name: "gender")
      @GenderConverter()
          Gender gender,
      @JsonKey(name: "address")
          Address address,
      @JsonKey(name: "height")
          int? height,
      @JsonKey(name: "drinkFrequency")
      @DrinkFrequencyConverter()
          DrinkFrequency? drinkFrequency,
      @JsonKey(name: "cigaretteFrequency")
      @CigaretteFrequencyConverter()
          CigaretteFrequency? cigaretteFrequency,
      @JsonKey(name: "selfIntroduction")
          String? selfIntroduction,
      @JsonKey(name: "tags")
          List<Tag>? tags});

  $AddressCopyWith<$Res> get address;
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
    Object? id = null,
    Object? username = null,
    Object? name = null,
    Object? mainImageURL = null,
    Object? gender = null,
    Object? address = null,
    Object? height = freezed,
    Object? drinkFrequency = freezed,
    Object? cigaretteFrequency = freezed,
    Object? selfIntroduction = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mainImageURL: null == mainImageURL
          ? _value.mainImageURL
          : mainImageURL // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      drinkFrequency: freezed == drinkFrequency
          ? _value.drinkFrequency
          : drinkFrequency // ignore: cast_nullable_to_non_nullable
              as DrinkFrequency?,
      cigaretteFrequency: freezed == cigaretteFrequency
          ? _value.cigaretteFrequency
          : cigaretteFrequency // ignore: cast_nullable_to_non_nullable
              as CigaretteFrequency?,
      selfIntroduction: freezed == selfIntroduction
          ? _value.selfIntroduction
          : selfIntroduction // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
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
      {@JsonKey(name: "id")
          String id,
      @JsonKey(name: "username")
          String username,
      @JsonKey(name: "name")
          String name,
      @JsonKey(name: "mainImageURL")
          String mainImageURL,
      @JsonKey(name: "gender")
      @GenderConverter()
          Gender gender,
      @JsonKey(name: "address")
          Address address,
      @JsonKey(name: "height")
          int? height,
      @JsonKey(name: "drinkFrequency")
      @DrinkFrequencyConverter()
          DrinkFrequency? drinkFrequency,
      @JsonKey(name: "cigaretteFrequency")
      @CigaretteFrequencyConverter()
          CigaretteFrequency? cigaretteFrequency,
      @JsonKey(name: "selfIntroduction")
          String? selfIntroduction,
      @JsonKey(name: "tags")
          List<Tag>? tags});

  @override
  $AddressCopyWith<$Res> get address;
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
    Object? id = null,
    Object? username = null,
    Object? name = null,
    Object? mainImageURL = null,
    Object? gender = null,
    Object? address = null,
    Object? height = freezed,
    Object? drinkFrequency = freezed,
    Object? cigaretteFrequency = freezed,
    Object? selfIntroduction = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$_Profile(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mainImageURL: null == mainImageURL
          ? _value.mainImageURL
          : mainImageURL // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      drinkFrequency: freezed == drinkFrequency
          ? _value.drinkFrequency
          : drinkFrequency // ignore: cast_nullable_to_non_nullable
              as DrinkFrequency?,
      cigaretteFrequency: freezed == cigaretteFrequency
          ? _value.cigaretteFrequency
          : cigaretteFrequency // ignore: cast_nullable_to_non_nullable
              as CigaretteFrequency?,
      selfIntroduction: freezed == selfIntroduction
          ? _value.selfIntroduction
          : selfIntroduction // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Profile implements _Profile {
  _$_Profile(
      {@JsonKey(name: "id")
          required this.id,
      @JsonKey(name: "username")
          required this.username,
      @JsonKey(name: "name")
          required this.name,
      @JsonKey(name: "mainImageURL")
          required this.mainImageURL,
      @JsonKey(name: "gender")
      @GenderConverter()
          required this.gender,
      @JsonKey(name: "address")
          required this.address,
      @JsonKey(name: "height")
          required this.height,
      @JsonKey(name: "drinkFrequency")
      @DrinkFrequencyConverter()
          required this.drinkFrequency,
      @JsonKey(name: "cigaretteFrequency")
      @CigaretteFrequencyConverter()
          required this.cigaretteFrequency,
      @JsonKey(name: "selfIntroduction")
          required this.selfIntroduction,
      @JsonKey(name: "tags")
          required final List<Tag>? tags})
      : _tags = tags;

  factory _$_Profile.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;

  /// 名前
  @override
  @JsonKey(name: "username")
  final String username;

  /// ニックネーム
  @override
  @JsonKey(name: "name")
  final String name;

  /// プロフィール画像
  @override
  @JsonKey(name: "mainImageURL")
  final String mainImageURL;

  /// 性別
  @override
  @JsonKey(name: "gender")
  @GenderConverter()
  final Gender gender;

  /// 居住地
  @override
  @JsonKey(name: "address")
  final Address address;

  /// NULL =>
  /// 身長
  @override
  @JsonKey(name: "height")
  final int? height;

  /// お酒をよく飲むか
  @override
  @JsonKey(name: "drinkFrequency")
  @DrinkFrequencyConverter()
  final DrinkFrequency? drinkFrequency;

  /// タバコをよく吸うか
  @override
  @JsonKey(name: "cigaretteFrequency")
  @CigaretteFrequencyConverter()
  final CigaretteFrequency? cigaretteFrequency;

  /// 自己紹介文
  @override
  @JsonKey(name: "selfIntroduction")
  final String? selfIntroduction;

  /// 居住地
  final List<Tag>? _tags;

  /// 居住地
  @override
  @JsonKey(name: "tags")
  List<Tag>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Profile(id: $id, username: $username, name: $name, mainImageURL: $mainImageURL, gender: $gender, address: $address, height: $height, drinkFrequency: $drinkFrequency, cigaretteFrequency: $cigaretteFrequency, selfIntroduction: $selfIntroduction, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Profile &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mainImageURL, mainImageURL) ||
                other.mainImageURL == mainImageURL) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.drinkFrequency, drinkFrequency) ||
                other.drinkFrequency == drinkFrequency) &&
            (identical(other.cigaretteFrequency, cigaretteFrequency) ||
                other.cigaretteFrequency == cigaretteFrequency) &&
            (identical(other.selfIntroduction, selfIntroduction) ||
                other.selfIntroduction == selfIntroduction) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      username,
      name,
      mainImageURL,
      gender,
      address,
      height,
      drinkFrequency,
      cigaretteFrequency,
      selfIntroduction,
      const DeepCollectionEquality().hash(_tags));

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
  factory _Profile(
      {@JsonKey(name: "id")
          required final String id,
      @JsonKey(name: "username")
          required final String username,
      @JsonKey(name: "name")
          required final String name,
      @JsonKey(name: "mainImageURL")
          required final String mainImageURL,
      @JsonKey(name: "gender")
      @GenderConverter()
          required final Gender gender,
      @JsonKey(name: "address")
          required final Address address,
      @JsonKey(name: "height")
          required final int? height,
      @JsonKey(name: "drinkFrequency")
      @DrinkFrequencyConverter()
          required final DrinkFrequency? drinkFrequency,
      @JsonKey(name: "cigaretteFrequency")
      @CigaretteFrequencyConverter()
          required final CigaretteFrequency? cigaretteFrequency,
      @JsonKey(name: "selfIntroduction")
          required final String? selfIntroduction,
      @JsonKey(name: "tags")
          required final List<Tag>? tags}) = _$_Profile;

  factory _Profile.fromJson(Map<String, dynamic> json) = _$_Profile.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override

  /// 名前
  @JsonKey(name: "username")
  String get username;
  @override

  /// ニックネーム
  @JsonKey(name: "name")
  String get name;
  @override

  /// プロフィール画像
  @JsonKey(name: "mainImageURL")
  String get mainImageURL;
  @override

  /// 性別
  @JsonKey(name: "gender")
  @GenderConverter()
  Gender get gender;
  @override

  /// 居住地
  @JsonKey(name: "address")
  Address get address;
  @override

  /// NULL =>
  /// 身長
  @JsonKey(name: "height")
  int? get height;
  @override

  /// お酒をよく飲むか
  @JsonKey(name: "drinkFrequency")
  @DrinkFrequencyConverter()
  DrinkFrequency? get drinkFrequency;
  @override

  /// タバコをよく吸うか
  @JsonKey(name: "cigaretteFrequency")
  @CigaretteFrequencyConverter()
  CigaretteFrequency? get cigaretteFrequency;
  @override

  /// 自己紹介文
  @JsonKey(name: "selfIntroduction")
  String? get selfIntroduction;
  @override

  /// 居住地
  @JsonKey(name: "tags")
  List<Tag>? get tags;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileCopyWith<_$_Profile> get copyWith =>
      throw _privateConstructorUsedError;
}
