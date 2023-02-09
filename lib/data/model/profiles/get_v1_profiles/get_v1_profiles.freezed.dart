// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_v1_profiles.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetV1ProfilesResponse _$GetV1ProfilesResponseFromJson(
    Map<String, dynamic> json) {
  return _GetV1ProfilesResponse.fromJson(json);
}

/// @nodoc
mixin _$GetV1ProfilesResponse {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "mainImageURL")
  String get mainImageURL => throw _privateConstructorUsedError;
  @JsonKey(name: "secondImageURL")
  String? get secondImageURL => throw _privateConstructorUsedError;
  @JsonKey(name: "thirdImageURL")
  String? get thirdImageURL => throw _privateConstructorUsedError;
  @JsonKey(name: "fourthImageURL")
  String? get fourthImageURL => throw _privateConstructorUsedError;
  @JsonKey(name: "fifthImageURL")
  String? get fifthImageURL => throw _privateConstructorUsedError;
  @JsonKey(name: "sixthImageURL")
  String? get sixthImageURL => throw _privateConstructorUsedError;
  @JsonKey(name: "gender")
  @GenderConverter()
  Gender get gender => throw _privateConstructorUsedError;
  @JsonKey(name: "height")
  int? get height => throw _privateConstructorUsedError;
  @JsonKey(name: "drinkFrequency")
  @DrinkFrequencyConverter()
  DrinkFrequency? get drinkFrequency => throw _privateConstructorUsedError;
  @JsonKey(name: "cigaretteFrequency")
  @CigaretteFrequencyConverter()
  CigaretteFrequency? get cigaretteFrequency =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "selfIntroduction")
  String? get selfIntroduction => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  Address get address => throw _privateConstructorUsedError;
  @JsonKey(name: "tags")
  List<Tag>? get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetV1ProfilesResponseCopyWith<GetV1ProfilesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetV1ProfilesResponseCopyWith<$Res> {
  factory $GetV1ProfilesResponseCopyWith(GetV1ProfilesResponse value,
          $Res Function(GetV1ProfilesResponse) then) =
      _$GetV1ProfilesResponseCopyWithImpl<$Res, GetV1ProfilesResponse>;
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
      @JsonKey(name: "secondImageURL")
          String? secondImageURL,
      @JsonKey(name: "thirdImageURL")
          String? thirdImageURL,
      @JsonKey(name: "fourthImageURL")
          String? fourthImageURL,
      @JsonKey(name: "fifthImageURL")
          String? fifthImageURL,
      @JsonKey(name: "sixthImageURL")
          String? sixthImageURL,
      @JsonKey(name: "gender")
      @GenderConverter()
          Gender gender,
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
      @JsonKey(name: "address")
          Address address,
      @JsonKey(name: "tags")
          List<Tag>? tags});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class _$GetV1ProfilesResponseCopyWithImpl<$Res,
        $Val extends GetV1ProfilesResponse>
    implements $GetV1ProfilesResponseCopyWith<$Res> {
  _$GetV1ProfilesResponseCopyWithImpl(this._value, this._then);

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
    Object? secondImageURL = freezed,
    Object? thirdImageURL = freezed,
    Object? fourthImageURL = freezed,
    Object? fifthImageURL = freezed,
    Object? sixthImageURL = freezed,
    Object? gender = null,
    Object? height = freezed,
    Object? drinkFrequency = freezed,
    Object? cigaretteFrequency = freezed,
    Object? selfIntroduction = freezed,
    Object? address = null,
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
      secondImageURL: freezed == secondImageURL
          ? _value.secondImageURL
          : secondImageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      thirdImageURL: freezed == thirdImageURL
          ? _value.thirdImageURL
          : thirdImageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      fourthImageURL: freezed == fourthImageURL
          ? _value.fourthImageURL
          : fourthImageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      fifthImageURL: freezed == fifthImageURL
          ? _value.fifthImageURL
          : fifthImageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      sixthImageURL: freezed == sixthImageURL
          ? _value.sixthImageURL
          : sixthImageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
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
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
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
abstract class _$$_GetV1ProfilesResponseCopyWith<$Res>
    implements $GetV1ProfilesResponseCopyWith<$Res> {
  factory _$$_GetV1ProfilesResponseCopyWith(_$_GetV1ProfilesResponse value,
          $Res Function(_$_GetV1ProfilesResponse) then) =
      __$$_GetV1ProfilesResponseCopyWithImpl<$Res>;
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
      @JsonKey(name: "secondImageURL")
          String? secondImageURL,
      @JsonKey(name: "thirdImageURL")
          String? thirdImageURL,
      @JsonKey(name: "fourthImageURL")
          String? fourthImageURL,
      @JsonKey(name: "fifthImageURL")
          String? fifthImageURL,
      @JsonKey(name: "sixthImageURL")
          String? sixthImageURL,
      @JsonKey(name: "gender")
      @GenderConverter()
          Gender gender,
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
      @JsonKey(name: "address")
          Address address,
      @JsonKey(name: "tags")
          List<Tag>? tags});

  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$_GetV1ProfilesResponseCopyWithImpl<$Res>
    extends _$GetV1ProfilesResponseCopyWithImpl<$Res, _$_GetV1ProfilesResponse>
    implements _$$_GetV1ProfilesResponseCopyWith<$Res> {
  __$$_GetV1ProfilesResponseCopyWithImpl(_$_GetV1ProfilesResponse _value,
      $Res Function(_$_GetV1ProfilesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? name = null,
    Object? mainImageURL = null,
    Object? secondImageURL = freezed,
    Object? thirdImageURL = freezed,
    Object? fourthImageURL = freezed,
    Object? fifthImageURL = freezed,
    Object? sixthImageURL = freezed,
    Object? gender = null,
    Object? height = freezed,
    Object? drinkFrequency = freezed,
    Object? cigaretteFrequency = freezed,
    Object? selfIntroduction = freezed,
    Object? address = null,
    Object? tags = freezed,
  }) {
    return _then(_$_GetV1ProfilesResponse(
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
      secondImageURL: freezed == secondImageURL
          ? _value.secondImageURL
          : secondImageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      thirdImageURL: freezed == thirdImageURL
          ? _value.thirdImageURL
          : thirdImageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      fourthImageURL: freezed == fourthImageURL
          ? _value.fourthImageURL
          : fourthImageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      fifthImageURL: freezed == fifthImageURL
          ? _value.fifthImageURL
          : fifthImageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      sixthImageURL: freezed == sixthImageURL
          ? _value.sixthImageURL
          : sixthImageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
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
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetV1ProfilesResponse implements _GetV1ProfilesResponse {
  _$_GetV1ProfilesResponse(
      {@JsonKey(name: "id")
          required this.id,
      @JsonKey(name: "username")
          required this.username,
      @JsonKey(name: "name")
          required this.name,
      @JsonKey(name: "mainImageURL")
          required this.mainImageURL,
      @JsonKey(name: "secondImageURL")
          this.secondImageURL,
      @JsonKey(name: "thirdImageURL")
          this.thirdImageURL,
      @JsonKey(name: "fourthImageURL")
          this.fourthImageURL,
      @JsonKey(name: "fifthImageURL")
          this.fifthImageURL,
      @JsonKey(name: "sixthImageURL")
          this.sixthImageURL,
      @JsonKey(name: "gender")
      @GenderConverter()
          required this.gender,
      @JsonKey(name: "height")
          this.height,
      @JsonKey(name: "drinkFrequency")
      @DrinkFrequencyConverter()
          this.drinkFrequency,
      @JsonKey(name: "cigaretteFrequency")
      @CigaretteFrequencyConverter()
          this.cigaretteFrequency,
      @JsonKey(name: "selfIntroduction")
          this.selfIntroduction,
      @JsonKey(name: "address")
          required this.address,
      @JsonKey(name: "tags")
          final List<Tag>? tags})
      : _tags = tags;

  factory _$_GetV1ProfilesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetV1ProfilesResponseFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "username")
  final String username;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "mainImageURL")
  final String mainImageURL;
  @override
  @JsonKey(name: "secondImageURL")
  final String? secondImageURL;
  @override
  @JsonKey(name: "thirdImageURL")
  final String? thirdImageURL;
  @override
  @JsonKey(name: "fourthImageURL")
  final String? fourthImageURL;
  @override
  @JsonKey(name: "fifthImageURL")
  final String? fifthImageURL;
  @override
  @JsonKey(name: "sixthImageURL")
  final String? sixthImageURL;
  @override
  @JsonKey(name: "gender")
  @GenderConverter()
  final Gender gender;
  @override
  @JsonKey(name: "height")
  final int? height;
  @override
  @JsonKey(name: "drinkFrequency")
  @DrinkFrequencyConverter()
  final DrinkFrequency? drinkFrequency;
  @override
  @JsonKey(name: "cigaretteFrequency")
  @CigaretteFrequencyConverter()
  final CigaretteFrequency? cigaretteFrequency;
  @override
  @JsonKey(name: "selfIntroduction")
  final String? selfIntroduction;
  @override
  @JsonKey(name: "address")
  final Address address;
  final List<Tag>? _tags;
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
    return 'GetV1ProfilesResponse(id: $id, username: $username, name: $name, mainImageURL: $mainImageURL, secondImageURL: $secondImageURL, thirdImageURL: $thirdImageURL, fourthImageURL: $fourthImageURL, fifthImageURL: $fifthImageURL, sixthImageURL: $sixthImageURL, gender: $gender, height: $height, drinkFrequency: $drinkFrequency, cigaretteFrequency: $cigaretteFrequency, selfIntroduction: $selfIntroduction, address: $address, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetV1ProfilesResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mainImageURL, mainImageURL) ||
                other.mainImageURL == mainImageURL) &&
            (identical(other.secondImageURL, secondImageURL) ||
                other.secondImageURL == secondImageURL) &&
            (identical(other.thirdImageURL, thirdImageURL) ||
                other.thirdImageURL == thirdImageURL) &&
            (identical(other.fourthImageURL, fourthImageURL) ||
                other.fourthImageURL == fourthImageURL) &&
            (identical(other.fifthImageURL, fifthImageURL) ||
                other.fifthImageURL == fifthImageURL) &&
            (identical(other.sixthImageURL, sixthImageURL) ||
                other.sixthImageURL == sixthImageURL) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.drinkFrequency, drinkFrequency) ||
                other.drinkFrequency == drinkFrequency) &&
            (identical(other.cigaretteFrequency, cigaretteFrequency) ||
                other.cigaretteFrequency == cigaretteFrequency) &&
            (identical(other.selfIntroduction, selfIntroduction) ||
                other.selfIntroduction == selfIntroduction) &&
            (identical(other.address, address) || other.address == address) &&
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
      secondImageURL,
      thirdImageURL,
      fourthImageURL,
      fifthImageURL,
      sixthImageURL,
      gender,
      height,
      drinkFrequency,
      cigaretteFrequency,
      selfIntroduction,
      address,
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetV1ProfilesResponseCopyWith<_$_GetV1ProfilesResponse> get copyWith =>
      __$$_GetV1ProfilesResponseCopyWithImpl<_$_GetV1ProfilesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetV1ProfilesResponseToJson(
      this,
    );
  }
}

abstract class _GetV1ProfilesResponse implements GetV1ProfilesResponse {
  factory _GetV1ProfilesResponse(
      {@JsonKey(name: "id")
          required final String id,
      @JsonKey(name: "username")
          required final String username,
      @JsonKey(name: "name")
          required final String name,
      @JsonKey(name: "mainImageURL")
          required final String mainImageURL,
      @JsonKey(name: "secondImageURL")
          final String? secondImageURL,
      @JsonKey(name: "thirdImageURL")
          final String? thirdImageURL,
      @JsonKey(name: "fourthImageURL")
          final String? fourthImageURL,
      @JsonKey(name: "fifthImageURL")
          final String? fifthImageURL,
      @JsonKey(name: "sixthImageURL")
          final String? sixthImageURL,
      @JsonKey(name: "gender")
      @GenderConverter()
          required final Gender gender,
      @JsonKey(name: "height")
          final int? height,
      @JsonKey(name: "drinkFrequency")
      @DrinkFrequencyConverter()
          final DrinkFrequency? drinkFrequency,
      @JsonKey(name: "cigaretteFrequency")
      @CigaretteFrequencyConverter()
          final CigaretteFrequency? cigaretteFrequency,
      @JsonKey(name: "selfIntroduction")
          final String? selfIntroduction,
      @JsonKey(name: "address")
          required final Address address,
      @JsonKey(name: "tags")
          final List<Tag>? tags}) = _$_GetV1ProfilesResponse;

  factory _GetV1ProfilesResponse.fromJson(Map<String, dynamic> json) =
      _$_GetV1ProfilesResponse.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "username")
  String get username;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "mainImageURL")
  String get mainImageURL;
  @override
  @JsonKey(name: "secondImageURL")
  String? get secondImageURL;
  @override
  @JsonKey(name: "thirdImageURL")
  String? get thirdImageURL;
  @override
  @JsonKey(name: "fourthImageURL")
  String? get fourthImageURL;
  @override
  @JsonKey(name: "fifthImageURL")
  String? get fifthImageURL;
  @override
  @JsonKey(name: "sixthImageURL")
  String? get sixthImageURL;
  @override
  @JsonKey(name: "gender")
  @GenderConverter()
  Gender get gender;
  @override
  @JsonKey(name: "height")
  int? get height;
  @override
  @JsonKey(name: "drinkFrequency")
  @DrinkFrequencyConverter()
  DrinkFrequency? get drinkFrequency;
  @override
  @JsonKey(name: "cigaretteFrequency")
  @CigaretteFrequencyConverter()
  CigaretteFrequency? get cigaretteFrequency;
  @override
  @JsonKey(name: "selfIntroduction")
  String? get selfIntroduction;
  @override
  @JsonKey(name: "address")
  Address get address;
  @override
  @JsonKey(name: "tags")
  List<Tag>? get tags;
  @override
  @JsonKey(ignore: true)
  _$$_GetV1ProfilesResponseCopyWith<_$_GetV1ProfilesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
