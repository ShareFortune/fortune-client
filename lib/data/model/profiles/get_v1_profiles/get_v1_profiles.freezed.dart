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
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get mainImageURL => throw _privateConstructorUsedError;
  String? get secondImageURL => throw _privateConstructorUsedError;
  String? get thirdImageURL => throw _privateConstructorUsedError;
  String? get fourthImageURL => throw _privateConstructorUsedError;
  String? get fifthImageURL => throw _privateConstructorUsedError;
  String? get sixthImageURL => throw _privateConstructorUsedError;
  @GenderConverter()
  Gender get gender => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  @DrinkFrequencyConverter()
  DrinkFrequency? get drinkFrequency => throw _privateConstructorUsedError;
  @CigaretteFrequencyConverter()
  CigaretteFrequency? get cigaretteFrequency =>
      throw _privateConstructorUsedError;
  String? get selfIntroduction => throw _privateConstructorUsedError;
  String? get occupation => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;
  List<Tag> get tags => throw _privateConstructorUsedError;

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
      {String id,
      String username,
      String name,
      String mainImageURL,
      String? secondImageURL,
      String? thirdImageURL,
      String? fourthImageURL,
      String? fifthImageURL,
      String? sixthImageURL,
      @GenderConverter() Gender gender,
      int? height,
      @DrinkFrequencyConverter() DrinkFrequency? drinkFrequency,
      @CigaretteFrequencyConverter() CigaretteFrequency? cigaretteFrequency,
      String? selfIntroduction,
      String? occupation,
      Address address,
      List<Tag> tags});

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
    Object? occupation = freezed,
    Object? address = null,
    Object? tags = null,
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
      occupation: freezed == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as String?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
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
      {String id,
      String username,
      String name,
      String mainImageURL,
      String? secondImageURL,
      String? thirdImageURL,
      String? fourthImageURL,
      String? fifthImageURL,
      String? sixthImageURL,
      @GenderConverter() Gender gender,
      int? height,
      @DrinkFrequencyConverter() DrinkFrequency? drinkFrequency,
      @CigaretteFrequencyConverter() CigaretteFrequency? cigaretteFrequency,
      String? selfIntroduction,
      String? occupation,
      Address address,
      List<Tag> tags});

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
    Object? occupation = freezed,
    Object? address = null,
    Object? tags = null,
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
      occupation: freezed == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as String?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetV1ProfilesResponse extends _GetV1ProfilesResponse {
  const _$_GetV1ProfilesResponse(
      {required this.id,
      required this.username,
      required this.name,
      required this.mainImageURL,
      this.secondImageURL,
      this.thirdImageURL,
      this.fourthImageURL,
      this.fifthImageURL,
      this.sixthImageURL,
      @GenderConverter() required this.gender,
      this.height,
      @DrinkFrequencyConverter() this.drinkFrequency,
      @CigaretteFrequencyConverter() this.cigaretteFrequency,
      this.selfIntroduction,
      this.occupation,
      required this.address,
      required final List<Tag> tags})
      : _tags = tags,
        super._();

  factory _$_GetV1ProfilesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetV1ProfilesResponseFromJson(json);

  @override
  final String id;
  @override
  final String username;
  @override
  final String name;
  @override
  final String mainImageURL;
  @override
  final String? secondImageURL;
  @override
  final String? thirdImageURL;
  @override
  final String? fourthImageURL;
  @override
  final String? fifthImageURL;
  @override
  final String? sixthImageURL;
  @override
  @GenderConverter()
  final Gender gender;
  @override
  final int? height;
  @override
  @DrinkFrequencyConverter()
  final DrinkFrequency? drinkFrequency;
  @override
  @CigaretteFrequencyConverter()
  final CigaretteFrequency? cigaretteFrequency;
  @override
  final String? selfIntroduction;
  @override
  final String? occupation;
  @override
  final Address address;
  final List<Tag> _tags;
  @override
  List<Tag> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'GetV1ProfilesResponse(id: $id, username: $username, name: $name, mainImageURL: $mainImageURL, secondImageURL: $secondImageURL, thirdImageURL: $thirdImageURL, fourthImageURL: $fourthImageURL, fifthImageURL: $fifthImageURL, sixthImageURL: $sixthImageURL, gender: $gender, height: $height, drinkFrequency: $drinkFrequency, cigaretteFrequency: $cigaretteFrequency, selfIntroduction: $selfIntroduction, occupation: $occupation, address: $address, tags: $tags)';
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
            (identical(other.occupation, occupation) ||
                other.occupation == occupation) &&
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
      occupation,
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

abstract class _GetV1ProfilesResponse extends GetV1ProfilesResponse {
  const factory _GetV1ProfilesResponse(
      {required final String id,
      required final String username,
      required final String name,
      required final String mainImageURL,
      final String? secondImageURL,
      final String? thirdImageURL,
      final String? fourthImageURL,
      final String? fifthImageURL,
      final String? sixthImageURL,
      @GenderConverter()
          required final Gender gender,
      final int? height,
      @DrinkFrequencyConverter()
          final DrinkFrequency? drinkFrequency,
      @CigaretteFrequencyConverter()
          final CigaretteFrequency? cigaretteFrequency,
      final String? selfIntroduction,
      final String? occupation,
      required final Address address,
      required final List<Tag> tags}) = _$_GetV1ProfilesResponse;
  const _GetV1ProfilesResponse._() : super._();

  factory _GetV1ProfilesResponse.fromJson(Map<String, dynamic> json) =
      _$_GetV1ProfilesResponse.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  String get name;
  @override
  String get mainImageURL;
  @override
  String? get secondImageURL;
  @override
  String? get thirdImageURL;
  @override
  String? get fourthImageURL;
  @override
  String? get fifthImageURL;
  @override
  String? get sixthImageURL;
  @override
  @GenderConverter()
  Gender get gender;
  @override
  int? get height;
  @override
  @DrinkFrequencyConverter()
  DrinkFrequency? get drinkFrequency;
  @override
  @CigaretteFrequencyConverter()
  CigaretteFrequency? get cigaretteFrequency;
  @override
  String? get selfIntroduction;
  @override
  String? get occupation;
  @override
  Address get address;
  @override
  List<Tag> get tags;
  @override
  @JsonKey(ignore: true)
  _$$_GetV1ProfilesResponseCopyWith<_$_GetV1ProfilesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
