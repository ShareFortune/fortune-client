// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patch_v1_rooms_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PatchV1RoomsIdRequest _$PatchV1RoomsIdRequestFromJson(
    Map<String, dynamic> json) {
  return _PatchV1RoomsIdRequest.fromJson(json);
}

/// @nodoc
mixin _$PatchV1RoomsIdRequest {
  ///
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;

  ///
  @JsonKey(name: "gender")
  @GenderConverter()
  Gender get gender => throw _privateConstructorUsedError;

  ///
  @JsonKey(name: "addressId")
  int get addressId => throw _privateConstructorUsedError;

  ///
  @JsonKey(name: "files")
  ProfilesFiles get files => throw _privateConstructorUsedError;

  ///
  @JsonKey(name: "height")
  int? get height => throw _privateConstructorUsedError;

  ///
  @JsonKey(name: "drinkFrequency")
  @DrinkFrequencyConverter()
  DrinkFrequency? get drinkFrequency => throw _privateConstructorUsedError;

  ///
  @JsonKey(name: "cigaretteFrequency")
  @CigaretteFrequencyConverter()
  CigaretteFrequency? get cigaretteFrequency =>
      throw _privateConstructorUsedError;

  ///
  @JsonKey(name: "selfIntroduction")
  String? get selfIntroduction => throw _privateConstructorUsedError;

  ///
  @JsonKey(name: "occupationId")
  int? get occupationId => throw _privateConstructorUsedError;

  ///
  @JsonKey(name: "tagIds")
  List<String>? get tagIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatchV1RoomsIdRequestCopyWith<PatchV1RoomsIdRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatchV1RoomsIdRequestCopyWith<$Res> {
  factory $PatchV1RoomsIdRequestCopyWith(PatchV1RoomsIdRequest value,
          $Res Function(PatchV1RoomsIdRequest) then) =
      _$PatchV1RoomsIdRequestCopyWithImpl<$Res, PatchV1RoomsIdRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "name")
          String name,
      @JsonKey(name: "gender")
      @GenderConverter()
          Gender gender,
      @JsonKey(name: "addressId")
          int addressId,
      @JsonKey(name: "files")
          ProfilesFiles files,
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
      @JsonKey(name: "occupationId")
          int? occupationId,
      @JsonKey(name: "tagIds")
          List<String>? tagIds});

  $ProfilesFilesCopyWith<$Res> get files;
}

/// @nodoc
class _$PatchV1RoomsIdRequestCopyWithImpl<$Res,
        $Val extends PatchV1RoomsIdRequest>
    implements $PatchV1RoomsIdRequestCopyWith<$Res> {
  _$PatchV1RoomsIdRequestCopyWithImpl(this._value, this._then);

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
              as ProfilesFiles,
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
  $ProfilesFilesCopyWith<$Res> get files {
    return $ProfilesFilesCopyWith<$Res>(_value.files, (value) {
      return _then(_value.copyWith(files: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PatchV1RoomsIdRequestCopyWith<$Res>
    implements $PatchV1RoomsIdRequestCopyWith<$Res> {
  factory _$$_PatchV1RoomsIdRequestCopyWith(_$_PatchV1RoomsIdRequest value,
          $Res Function(_$_PatchV1RoomsIdRequest) then) =
      __$$_PatchV1RoomsIdRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name")
          String name,
      @JsonKey(name: "gender")
      @GenderConverter()
          Gender gender,
      @JsonKey(name: "addressId")
          int addressId,
      @JsonKey(name: "files")
          ProfilesFiles files,
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
      @JsonKey(name: "occupationId")
          int? occupationId,
      @JsonKey(name: "tagIds")
          List<String>? tagIds});

  @override
  $ProfilesFilesCopyWith<$Res> get files;
}

/// @nodoc
class __$$_PatchV1RoomsIdRequestCopyWithImpl<$Res>
    extends _$PatchV1RoomsIdRequestCopyWithImpl<$Res, _$_PatchV1RoomsIdRequest>
    implements _$$_PatchV1RoomsIdRequestCopyWith<$Res> {
  __$$_PatchV1RoomsIdRequestCopyWithImpl(_$_PatchV1RoomsIdRequest _value,
      $Res Function(_$_PatchV1RoomsIdRequest) _then)
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
    return _then(_$_PatchV1RoomsIdRequest(
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
              as ProfilesFiles,
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
class _$_PatchV1RoomsIdRequest implements _PatchV1RoomsIdRequest {
  _$_PatchV1RoomsIdRequest(
      {@JsonKey(name: "name")
          required this.name,
      @JsonKey(name: "gender")
      @GenderConverter()
          required this.gender,
      @JsonKey(name: "addressId")
          required this.addressId,
      @JsonKey(name: "files")
          required this.files,
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
      @JsonKey(name: "occupationId")
          this.occupationId,
      @JsonKey(name: "tagIds")
          final List<String>? tagIds})
      : _tagIds = tagIds;

  factory _$_PatchV1RoomsIdRequest.fromJson(Map<String, dynamic> json) =>
      _$$_PatchV1RoomsIdRequestFromJson(json);

  ///
  @override
  @JsonKey(name: "name")
  final String name;

  ///
  @override
  @JsonKey(name: "gender")
  @GenderConverter()
  final Gender gender;

  ///
  @override
  @JsonKey(name: "addressId")
  final int addressId;

  ///
  @override
  @JsonKey(name: "files")
  final ProfilesFiles files;

  ///
  @override
  @JsonKey(name: "height")
  final int? height;

  ///
  @override
  @JsonKey(name: "drinkFrequency")
  @DrinkFrequencyConverter()
  final DrinkFrequency? drinkFrequency;

  ///
  @override
  @JsonKey(name: "cigaretteFrequency")
  @CigaretteFrequencyConverter()
  final CigaretteFrequency? cigaretteFrequency;

  ///
  @override
  @JsonKey(name: "selfIntroduction")
  final String? selfIntroduction;

  ///
  @override
  @JsonKey(name: "occupationId")
  final int? occupationId;

  ///
  final List<String>? _tagIds;

  ///
  @override
  @JsonKey(name: "tagIds")
  List<String>? get tagIds {
    final value = _tagIds;
    if (value == null) return null;
    if (_tagIds is EqualUnmodifiableListView) return _tagIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PatchV1RoomsIdRequest(name: $name, gender: $gender, addressId: $addressId, files: $files, height: $height, drinkFrequency: $drinkFrequency, cigaretteFrequency: $cigaretteFrequency, selfIntroduction: $selfIntroduction, occupationId: $occupationId, tagIds: $tagIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PatchV1RoomsIdRequest &&
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
  _$$_PatchV1RoomsIdRequestCopyWith<_$_PatchV1RoomsIdRequest> get copyWith =>
      __$$_PatchV1RoomsIdRequestCopyWithImpl<_$_PatchV1RoomsIdRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatchV1RoomsIdRequestToJson(
      this,
    );
  }
}

abstract class _PatchV1RoomsIdRequest implements PatchV1RoomsIdRequest {
  factory _PatchV1RoomsIdRequest(
      {@JsonKey(name: "name")
          required final String name,
      @JsonKey(name: "gender")
      @GenderConverter()
          required final Gender gender,
      @JsonKey(name: "addressId")
          required final int addressId,
      @JsonKey(name: "files")
          required final ProfilesFiles files,
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
      @JsonKey(name: "occupationId")
          final int? occupationId,
      @JsonKey(name: "tagIds")
          final List<String>? tagIds}) = _$_PatchV1RoomsIdRequest;

  factory _PatchV1RoomsIdRequest.fromJson(Map<String, dynamic> json) =
      _$_PatchV1RoomsIdRequest.fromJson;

  @override

  ///
  @JsonKey(name: "name")
  String get name;
  @override

  ///
  @JsonKey(name: "gender")
  @GenderConverter()
  Gender get gender;
  @override

  ///
  @JsonKey(name: "addressId")
  int get addressId;
  @override

  ///
  @JsonKey(name: "files")
  ProfilesFiles get files;
  @override

  ///
  @JsonKey(name: "height")
  int? get height;
  @override

  ///
  @JsonKey(name: "drinkFrequency")
  @DrinkFrequencyConverter()
  DrinkFrequency? get drinkFrequency;
  @override

  ///
  @JsonKey(name: "cigaretteFrequency")
  @CigaretteFrequencyConverter()
  CigaretteFrequency? get cigaretteFrequency;
  @override

  ///
  @JsonKey(name: "selfIntroduction")
  String? get selfIntroduction;
  @override

  ///
  @JsonKey(name: "occupationId")
  int? get occupationId;
  @override

  ///
  @JsonKey(name: "tagIds")
  List<String>? get tagIds;
  @override
  @JsonKey(ignore: true)
  _$$_PatchV1RoomsIdRequestCopyWith<_$_PatchV1RoomsIdRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
