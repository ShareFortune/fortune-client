// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileIdResponse _$ProfileIdResponseFromJson(Map<String, dynamic> json) {
  return _ProfileIdResponse.fromJson(json);
}

/// @nodoc
mixin _$ProfileIdResponse {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileIdResponseCopyWith<ProfileIdResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileIdResponseCopyWith<$Res> {
  factory $ProfileIdResponseCopyWith(
          ProfileIdResponse value, $Res Function(ProfileIdResponse) then) =
      _$ProfileIdResponseCopyWithImpl<$Res, ProfileIdResponse>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$ProfileIdResponseCopyWithImpl<$Res, $Val extends ProfileIdResponse>
    implements $ProfileIdResponseCopyWith<$Res> {
  _$ProfileIdResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileIdResponseCopyWith<$Res>
    implements $ProfileIdResponseCopyWith<$Res> {
  factory _$$_ProfileIdResponseCopyWith(_$_ProfileIdResponse value,
          $Res Function(_$_ProfileIdResponse) then) =
      __$$_ProfileIdResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_ProfileIdResponseCopyWithImpl<$Res>
    extends _$ProfileIdResponseCopyWithImpl<$Res, _$_ProfileIdResponse>
    implements _$$_ProfileIdResponseCopyWith<$Res> {
  __$$_ProfileIdResponseCopyWithImpl(
      _$_ProfileIdResponse _value, $Res Function(_$_ProfileIdResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_ProfileIdResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileIdResponse implements _ProfileIdResponse {
  const _$_ProfileIdResponse({required this.id});

  factory _$_ProfileIdResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileIdResponseFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'ProfileIdResponse(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileIdResponse &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileIdResponseCopyWith<_$_ProfileIdResponse> get copyWith =>
      __$$_ProfileIdResponseCopyWithImpl<_$_ProfileIdResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileIdResponseToJson(
      this,
    );
  }
}

abstract class _ProfileIdResponse implements ProfileIdResponse {
  const factory _ProfileIdResponse({required final String id}) =
      _$_ProfileIdResponse;

  factory _ProfileIdResponse.fromJson(Map<String, dynamic> json) =
      _$_ProfileIdResponse.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileIdResponseCopyWith<_$_ProfileIdResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileResponse _$ProfileResponseFromJson(Map<String, dynamic> json) {
  return _ProfileResponse.fromJson(json);
}

/// @nodoc
mixin _$ProfileResponse {
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
  $ProfileResponseCopyWith<ProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileResponseCopyWith<$Res> {
  factory $ProfileResponseCopyWith(
          ProfileResponse value, $Res Function(ProfileResponse) then) =
      _$ProfileResponseCopyWithImpl<$Res, ProfileResponse>;
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
class _$ProfileResponseCopyWithImpl<$Res, $Val extends ProfileResponse>
    implements $ProfileResponseCopyWith<$Res> {
  _$ProfileResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_ProfileResponseCopyWith<$Res>
    implements $ProfileResponseCopyWith<$Res> {
  factory _$$_ProfileResponseCopyWith(
          _$_ProfileResponse value, $Res Function(_$_ProfileResponse) then) =
      __$$_ProfileResponseCopyWithImpl<$Res>;
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
class __$$_ProfileResponseCopyWithImpl<$Res>
    extends _$ProfileResponseCopyWithImpl<$Res, _$_ProfileResponse>
    implements _$$_ProfileResponseCopyWith<$Res> {
  __$$_ProfileResponseCopyWithImpl(
      _$_ProfileResponse _value, $Res Function(_$_ProfileResponse) _then)
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
    return _then(_$_ProfileResponse(
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
class _$_ProfileResponse extends _ProfileResponse {
  const _$_ProfileResponse(
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

  factory _$_ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileResponseFromJson(json);

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
    return 'ProfileResponse(id: $id, username: $username, name: $name, mainImageURL: $mainImageURL, secondImageURL: $secondImageURL, thirdImageURL: $thirdImageURL, fourthImageURL: $fourthImageURL, fifthImageURL: $fifthImageURL, sixthImageURL: $sixthImageURL, gender: $gender, height: $height, drinkFrequency: $drinkFrequency, cigaretteFrequency: $cigaretteFrequency, selfIntroduction: $selfIntroduction, occupation: $occupation, address: $address, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileResponse &&
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
  _$$_ProfileResponseCopyWith<_$_ProfileResponse> get copyWith =>
      __$$_ProfileResponseCopyWithImpl<_$_ProfileResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileResponseToJson(
      this,
    );
  }
}

abstract class _ProfileResponse extends ProfileResponse {
  const factory _ProfileResponse(
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
      required final List<Tag> tags}) = _$_ProfileResponse;
  const _ProfileResponse._() : super._();

  factory _ProfileResponse.fromJson(Map<String, dynamic> json) =
      _$_ProfileResponse.fromJson;

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
  _$$_ProfileResponseCopyWith<_$_ProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileFiles _$ProfileFilesFromJson(Map<String, dynamic> json) {
  return _ProfileFiles.fromJson(json);
}

/// @nodoc
mixin _$ProfileFiles {
  String get mainImage => throw _privateConstructorUsedError;
  String? get secondImage => throw _privateConstructorUsedError;
  String? get thirdImage => throw _privateConstructorUsedError;
  String? get fourthImage => throw _privateConstructorUsedError;
  String? get fifthImage => throw _privateConstructorUsedError;
  String? get sixthImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileFilesCopyWith<ProfileFiles> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileFilesCopyWith<$Res> {
  factory $ProfileFilesCopyWith(
          ProfileFiles value, $Res Function(ProfileFiles) then) =
      _$ProfileFilesCopyWithImpl<$Res, ProfileFiles>;
  @useResult
  $Res call(
      {String mainImage,
      String? secondImage,
      String? thirdImage,
      String? fourthImage,
      String? fifthImage,
      String? sixthImage});
}

/// @nodoc
class _$ProfileFilesCopyWithImpl<$Res, $Val extends ProfileFiles>
    implements $ProfileFilesCopyWith<$Res> {
  _$ProfileFilesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainImage = null,
    Object? secondImage = freezed,
    Object? thirdImage = freezed,
    Object? fourthImage = freezed,
    Object? fifthImage = freezed,
    Object? sixthImage = freezed,
  }) {
    return _then(_value.copyWith(
      mainImage: null == mainImage
          ? _value.mainImage
          : mainImage // ignore: cast_nullable_to_non_nullable
              as String,
      secondImage: freezed == secondImage
          ? _value.secondImage
          : secondImage // ignore: cast_nullable_to_non_nullable
              as String?,
      thirdImage: freezed == thirdImage
          ? _value.thirdImage
          : thirdImage // ignore: cast_nullable_to_non_nullable
              as String?,
      fourthImage: freezed == fourthImage
          ? _value.fourthImage
          : fourthImage // ignore: cast_nullable_to_non_nullable
              as String?,
      fifthImage: freezed == fifthImage
          ? _value.fifthImage
          : fifthImage // ignore: cast_nullable_to_non_nullable
              as String?,
      sixthImage: freezed == sixthImage
          ? _value.sixthImage
          : sixthImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileFilesCopyWith<$Res>
    implements $ProfileFilesCopyWith<$Res> {
  factory _$$_ProfileFilesCopyWith(
          _$_ProfileFiles value, $Res Function(_$_ProfileFiles) then) =
      __$$_ProfileFilesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String mainImage,
      String? secondImage,
      String? thirdImage,
      String? fourthImage,
      String? fifthImage,
      String? sixthImage});
}

/// @nodoc
class __$$_ProfileFilesCopyWithImpl<$Res>
    extends _$ProfileFilesCopyWithImpl<$Res, _$_ProfileFiles>
    implements _$$_ProfileFilesCopyWith<$Res> {
  __$$_ProfileFilesCopyWithImpl(
      _$_ProfileFiles _value, $Res Function(_$_ProfileFiles) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainImage = null,
    Object? secondImage = freezed,
    Object? thirdImage = freezed,
    Object? fourthImage = freezed,
    Object? fifthImage = freezed,
    Object? sixthImage = freezed,
  }) {
    return _then(_$_ProfileFiles(
      mainImage: null == mainImage
          ? _value.mainImage
          : mainImage // ignore: cast_nullable_to_non_nullable
              as String,
      secondImage: freezed == secondImage
          ? _value.secondImage
          : secondImage // ignore: cast_nullable_to_non_nullable
              as String?,
      thirdImage: freezed == thirdImage
          ? _value.thirdImage
          : thirdImage // ignore: cast_nullable_to_non_nullable
              as String?,
      fourthImage: freezed == fourthImage
          ? _value.fourthImage
          : fourthImage // ignore: cast_nullable_to_non_nullable
              as String?,
      fifthImage: freezed == fifthImage
          ? _value.fifthImage
          : fifthImage // ignore: cast_nullable_to_non_nullable
              as String?,
      sixthImage: freezed == sixthImage
          ? _value.sixthImage
          : sixthImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileFiles implements _ProfileFiles {
  _$_ProfileFiles(
      {required this.mainImage,
      this.secondImage,
      this.thirdImage,
      this.fourthImage,
      this.fifthImage,
      this.sixthImage});

  factory _$_ProfileFiles.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileFilesFromJson(json);

  @override
  final String mainImage;
  @override
  final String? secondImage;
  @override
  final String? thirdImage;
  @override
  final String? fourthImage;
  @override
  final String? fifthImage;
  @override
  final String? sixthImage;

  @override
  String toString() {
    return 'ProfileFiles(mainImage: $mainImage, secondImage: $secondImage, thirdImage: $thirdImage, fourthImage: $fourthImage, fifthImage: $fifthImage, sixthImage: $sixthImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileFiles &&
            (identical(other.mainImage, mainImage) ||
                other.mainImage == mainImage) &&
            (identical(other.secondImage, secondImage) ||
                other.secondImage == secondImage) &&
            (identical(other.thirdImage, thirdImage) ||
                other.thirdImage == thirdImage) &&
            (identical(other.fourthImage, fourthImage) ||
                other.fourthImage == fourthImage) &&
            (identical(other.fifthImage, fifthImage) ||
                other.fifthImage == fifthImage) &&
            (identical(other.sixthImage, sixthImage) ||
                other.sixthImage == sixthImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mainImage, secondImage,
      thirdImage, fourthImage, fifthImage, sixthImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileFilesCopyWith<_$_ProfileFiles> get copyWith =>
      __$$_ProfileFilesCopyWithImpl<_$_ProfileFiles>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileFilesToJson(
      this,
    );
  }
}

abstract class _ProfileFiles implements ProfileFiles {
  factory _ProfileFiles(
      {required final String mainImage,
      final String? secondImage,
      final String? thirdImage,
      final String? fourthImage,
      final String? fifthImage,
      final String? sixthImage}) = _$_ProfileFiles;

  factory _ProfileFiles.fromJson(Map<String, dynamic> json) =
      _$_ProfileFiles.fromJson;

  @override
  String get mainImage;
  @override
  String? get secondImage;
  @override
  String? get thirdImage;
  @override
  String? get fourthImage;
  @override
  String? get fifthImage;
  @override
  String? get sixthImage;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileFilesCopyWith<_$_ProfileFiles> get copyWith =>
      throw _privateConstructorUsedError;
}
