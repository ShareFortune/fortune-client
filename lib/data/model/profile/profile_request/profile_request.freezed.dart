// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileCreateRequest _$ProfileCreateRequestFromJson(Map<String, dynamic> json) {
  return _ProfileCreateRequest.fromJson(json);
}

/// @nodoc
mixin _$ProfileCreateRequest {
  Map<String, dynamic> get files => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  @DrinkFrequencyConverter()
  DrinkFrequency? get drinkFrequency => throw _privateConstructorUsedError;
  @CigaretteFrequencyConverter()
  CigaretteFrequency? get cigaretteFrequency =>
      throw _privateConstructorUsedError;
  String? get selfIntroduction => throw _privateConstructorUsedError;
  int? get occupationId => throw _privateConstructorUsedError;
  int get addressId => throw _privateConstructorUsedError;
  List<String>? get tagIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileCreateRequestCopyWith<ProfileCreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCreateRequestCopyWith<$Res> {
  factory $ProfileCreateRequestCopyWith(ProfileCreateRequest value,
          $Res Function(ProfileCreateRequest) then) =
      _$ProfileCreateRequestCopyWithImpl<$Res, ProfileCreateRequest>;
  @useResult
  $Res call(
      {Map<String, dynamic> files,
      String name,
      String gender,
      int? height,
      @DrinkFrequencyConverter() DrinkFrequency? drinkFrequency,
      @CigaretteFrequencyConverter() CigaretteFrequency? cigaretteFrequency,
      String? selfIntroduction,
      int? occupationId,
      int addressId,
      List<String>? tagIds});
}

/// @nodoc
class _$ProfileCreateRequestCopyWithImpl<$Res,
        $Val extends ProfileCreateRequest>
    implements $ProfileCreateRequestCopyWith<$Res> {
  _$ProfileCreateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? files = null,
    Object? name = null,
    Object? gender = null,
    Object? height = freezed,
    Object? drinkFrequency = freezed,
    Object? cigaretteFrequency = freezed,
    Object? selfIntroduction = freezed,
    Object? occupationId = freezed,
    Object? addressId = null,
    Object? tagIds = freezed,
  }) {
    return _then(_value.copyWith(
      files: null == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
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
      occupationId: freezed == occupationId
          ? _value.occupationId
          : occupationId // ignore: cast_nullable_to_non_nullable
              as int?,
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int,
      tagIds: freezed == tagIds
          ? _value.tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileCreateRequestCopyWith<$Res>
    implements $ProfileCreateRequestCopyWith<$Res> {
  factory _$$_ProfileCreateRequestCopyWith(_$_ProfileCreateRequest value,
          $Res Function(_$_ProfileCreateRequest) then) =
      __$$_ProfileCreateRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic> files,
      String name,
      String gender,
      int? height,
      @DrinkFrequencyConverter() DrinkFrequency? drinkFrequency,
      @CigaretteFrequencyConverter() CigaretteFrequency? cigaretteFrequency,
      String? selfIntroduction,
      int? occupationId,
      int addressId,
      List<String>? tagIds});
}

/// @nodoc
class __$$_ProfileCreateRequestCopyWithImpl<$Res>
    extends _$ProfileCreateRequestCopyWithImpl<$Res, _$_ProfileCreateRequest>
    implements _$$_ProfileCreateRequestCopyWith<$Res> {
  __$$_ProfileCreateRequestCopyWithImpl(_$_ProfileCreateRequest _value,
      $Res Function(_$_ProfileCreateRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? files = null,
    Object? name = null,
    Object? gender = null,
    Object? height = freezed,
    Object? drinkFrequency = freezed,
    Object? cigaretteFrequency = freezed,
    Object? selfIntroduction = freezed,
    Object? occupationId = freezed,
    Object? addressId = null,
    Object? tagIds = freezed,
  }) {
    return _then(_$_ProfileCreateRequest(
      files: null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
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
      occupationId: freezed == occupationId
          ? _value.occupationId
          : occupationId // ignore: cast_nullable_to_non_nullable
              as int?,
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int,
      tagIds: freezed == tagIds
          ? _value._tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileCreateRequest implements _ProfileCreateRequest {
  const _$_ProfileCreateRequest(
      {required final Map<String, dynamic> files,
      required this.name,
      required this.gender,
      this.height,
      @DrinkFrequencyConverter() this.drinkFrequency,
      @CigaretteFrequencyConverter() this.cigaretteFrequency,
      this.selfIntroduction,
      this.occupationId,
      required this.addressId,
      final List<String>? tagIds})
      : _files = files,
        _tagIds = tagIds;

  factory _$_ProfileCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileCreateRequestFromJson(json);

  final Map<String, dynamic> _files;
  @override
  Map<String, dynamic> get files {
    if (_files is EqualUnmodifiableMapView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_files);
  }

  @override
  final String name;
  @override
  final String gender;
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
  final int? occupationId;
  @override
  final int addressId;
  final List<String>? _tagIds;
  @override
  List<String>? get tagIds {
    final value = _tagIds;
    if (value == null) return null;
    if (_tagIds is EqualUnmodifiableListView) return _tagIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProfileCreateRequest(files: $files, name: $name, gender: $gender, height: $height, drinkFrequency: $drinkFrequency, cigaretteFrequency: $cigaretteFrequency, selfIntroduction: $selfIntroduction, occupationId: $occupationId, addressId: $addressId, tagIds: $tagIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileCreateRequest &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.drinkFrequency, drinkFrequency) ||
                other.drinkFrequency == drinkFrequency) &&
            (identical(other.cigaretteFrequency, cigaretteFrequency) ||
                other.cigaretteFrequency == cigaretteFrequency) &&
            (identical(other.selfIntroduction, selfIntroduction) ||
                other.selfIntroduction == selfIntroduction) &&
            (identical(other.occupationId, occupationId) ||
                other.occupationId == occupationId) &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId) &&
            const DeepCollectionEquality().equals(other._tagIds, _tagIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_files),
      name,
      gender,
      height,
      drinkFrequency,
      cigaretteFrequency,
      selfIntroduction,
      occupationId,
      addressId,
      const DeepCollectionEquality().hash(_tagIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileCreateRequestCopyWith<_$_ProfileCreateRequest> get copyWith =>
      __$$_ProfileCreateRequestCopyWithImpl<_$_ProfileCreateRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileCreateRequestToJson(
      this,
    );
  }
}

abstract class _ProfileCreateRequest implements ProfileCreateRequest {
  const factory _ProfileCreateRequest(
      {required final Map<String, dynamic> files,
      required final String name,
      required final String gender,
      final int? height,
      @DrinkFrequencyConverter()
          final DrinkFrequency? drinkFrequency,
      @CigaretteFrequencyConverter()
          final CigaretteFrequency? cigaretteFrequency,
      final String? selfIntroduction,
      final int? occupationId,
      required final int addressId,
      final List<String>? tagIds}) = _$_ProfileCreateRequest;

  factory _ProfileCreateRequest.fromJson(Map<String, dynamic> json) =
      _$_ProfileCreateRequest.fromJson;

  @override
  Map<String, dynamic> get files;
  @override
  String get name;
  @override
  String get gender;
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
  int? get occupationId;
  @override
  int get addressId;
  @override
  List<String>? get tagIds;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileCreateRequestCopyWith<_$_ProfileCreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileUpdateRequest _$ProfileUpdateRequestFromJson(Map<String, dynamic> json) {
  return _ProfileUpdateRequest.fromJson(json);
}

/// @nodoc
mixin _$ProfileUpdateRequest {
  String get name => throw _privateConstructorUsedError;
  @GenderConverter()
  Gender get gender => throw _privateConstructorUsedError;
  int get addressId => throw _privateConstructorUsedError;
  ProfileFiles get files => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  @DrinkFrequencyConverter()
  DrinkFrequency? get drinkFrequency => throw _privateConstructorUsedError;
  @CigaretteFrequencyConverter()
  CigaretteFrequency? get cigaretteFrequency =>
      throw _privateConstructorUsedError;
  String? get selfIntroduction => throw _privateConstructorUsedError;
  int? get occupationId => throw _privateConstructorUsedError;
  List<String>? get tagIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileUpdateRequestCopyWith<ProfileUpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileUpdateRequestCopyWith<$Res> {
  factory $ProfileUpdateRequestCopyWith(ProfileUpdateRequest value,
          $Res Function(ProfileUpdateRequest) then) =
      _$ProfileUpdateRequestCopyWithImpl<$Res, ProfileUpdateRequest>;
  @useResult
  $Res call(
      {String name,
      @GenderConverter() Gender gender,
      int addressId,
      ProfileFiles files,
      int? height,
      @DrinkFrequencyConverter() DrinkFrequency? drinkFrequency,
      @CigaretteFrequencyConverter() CigaretteFrequency? cigaretteFrequency,
      String? selfIntroduction,
      int? occupationId,
      List<String>? tagIds});

  $ProfileFilesCopyWith<$Res> get files;
}

/// @nodoc
class _$ProfileUpdateRequestCopyWithImpl<$Res,
        $Val extends ProfileUpdateRequest>
    implements $ProfileUpdateRequestCopyWith<$Res> {
  _$ProfileUpdateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? gender = null,
    Object? addressId = null,
    Object? files = null,
    Object? height = freezed,
    Object? drinkFrequency = freezed,
    Object? cigaretteFrequency = freezed,
    Object? selfIntroduction = freezed,
    Object? occupationId = freezed,
    Object? tagIds = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int,
      files: null == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as ProfileFiles,
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
      occupationId: freezed == occupationId
          ? _value.occupationId
          : occupationId // ignore: cast_nullable_to_non_nullable
              as int?,
      tagIds: freezed == tagIds
          ? _value.tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileFilesCopyWith<$Res> get files {
    return $ProfileFilesCopyWith<$Res>(_value.files, (value) {
      return _then(_value.copyWith(files: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProfileUpdateRequestCopyWith<$Res>
    implements $ProfileUpdateRequestCopyWith<$Res> {
  factory _$$_ProfileUpdateRequestCopyWith(_$_ProfileUpdateRequest value,
          $Res Function(_$_ProfileUpdateRequest) then) =
      __$$_ProfileUpdateRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @GenderConverter() Gender gender,
      int addressId,
      ProfileFiles files,
      int? height,
      @DrinkFrequencyConverter() DrinkFrequency? drinkFrequency,
      @CigaretteFrequencyConverter() CigaretteFrequency? cigaretteFrequency,
      String? selfIntroduction,
      int? occupationId,
      List<String>? tagIds});

  @override
  $ProfileFilesCopyWith<$Res> get files;
}

/// @nodoc
class __$$_ProfileUpdateRequestCopyWithImpl<$Res>
    extends _$ProfileUpdateRequestCopyWithImpl<$Res, _$_ProfileUpdateRequest>
    implements _$$_ProfileUpdateRequestCopyWith<$Res> {
  __$$_ProfileUpdateRequestCopyWithImpl(_$_ProfileUpdateRequest _value,
      $Res Function(_$_ProfileUpdateRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? gender = null,
    Object? addressId = null,
    Object? files = null,
    Object? height = freezed,
    Object? drinkFrequency = freezed,
    Object? cigaretteFrequency = freezed,
    Object? selfIntroduction = freezed,
    Object? occupationId = freezed,
    Object? tagIds = freezed,
  }) {
    return _then(_$_ProfileUpdateRequest(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int,
      files: null == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as ProfileFiles,
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
      occupationId: freezed == occupationId
          ? _value.occupationId
          : occupationId // ignore: cast_nullable_to_non_nullable
              as int?,
      tagIds: freezed == tagIds
          ? _value._tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileUpdateRequest implements _ProfileUpdateRequest {
  const _$_ProfileUpdateRequest(
      {required this.name,
      @GenderConverter() required this.gender,
      required this.addressId,
      required this.files,
      required this.height,
      @DrinkFrequencyConverter() required this.drinkFrequency,
      @CigaretteFrequencyConverter() required this.cigaretteFrequency,
      required this.selfIntroduction,
      required this.occupationId,
      required final List<String>? tagIds})
      : _tagIds = tagIds;

  factory _$_ProfileUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileUpdateRequestFromJson(json);

  @override
  final String name;
  @override
  @GenderConverter()
  final Gender gender;
  @override
  final int addressId;
  @override
  final ProfileFiles files;
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
  final int? occupationId;
  final List<String>? _tagIds;
  @override
  List<String>? get tagIds {
    final value = _tagIds;
    if (value == null) return null;
    if (_tagIds is EqualUnmodifiableListView) return _tagIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProfileUpdateRequest(name: $name, gender: $gender, addressId: $addressId, files: $files, height: $height, drinkFrequency: $drinkFrequency, cigaretteFrequency: $cigaretteFrequency, selfIntroduction: $selfIntroduction, occupationId: $occupationId, tagIds: $tagIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileUpdateRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId) &&
            (identical(other.files, files) || other.files == files) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.drinkFrequency, drinkFrequency) ||
                other.drinkFrequency == drinkFrequency) &&
            (identical(other.cigaretteFrequency, cigaretteFrequency) ||
                other.cigaretteFrequency == cigaretteFrequency) &&
            (identical(other.selfIntroduction, selfIntroduction) ||
                other.selfIntroduction == selfIntroduction) &&
            (identical(other.occupationId, occupationId) ||
                other.occupationId == occupationId) &&
            const DeepCollectionEquality().equals(other._tagIds, _tagIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      gender,
      addressId,
      files,
      height,
      drinkFrequency,
      cigaretteFrequency,
      selfIntroduction,
      occupationId,
      const DeepCollectionEquality().hash(_tagIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileUpdateRequestCopyWith<_$_ProfileUpdateRequest> get copyWith =>
      __$$_ProfileUpdateRequestCopyWithImpl<_$_ProfileUpdateRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileUpdateRequestToJson(
      this,
    );
  }
}

abstract class _ProfileUpdateRequest implements ProfileUpdateRequest {
  const factory _ProfileUpdateRequest(
      {required final String name,
      @GenderConverter()
          required final Gender gender,
      required final int addressId,
      required final ProfileFiles files,
      required final int? height,
      @DrinkFrequencyConverter()
          required final DrinkFrequency? drinkFrequency,
      @CigaretteFrequencyConverter()
          required final CigaretteFrequency? cigaretteFrequency,
      required final String? selfIntroduction,
      required final int? occupationId,
      required final List<String>? tagIds}) = _$_ProfileUpdateRequest;

  factory _ProfileUpdateRequest.fromJson(Map<String, dynamic> json) =
      _$_ProfileUpdateRequest.fromJson;

  @override
  String get name;
  @override
  @GenderConverter()
  Gender get gender;
  @override
  int get addressId;
  @override
  ProfileFiles get files;
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
  int? get occupationId;
  @override
  List<String>? get tagIds;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileUpdateRequestCopyWith<_$_ProfileUpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
