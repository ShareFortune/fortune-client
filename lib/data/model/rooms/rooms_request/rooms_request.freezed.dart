// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rooms_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoomsCreateRequest _$RoomsCreateRequestFromJson(Map<String, dynamic> json) {
  return _RoomsCreateRequest.fromJson(json);
}

/// @nodoc
mixin _$RoomsCreateRequest {
  String get roomName => throw _privateConstructorUsedError;
  String get applicationDeadline => throw _privateConstructorUsedError;
  int get membersNum => throw _privateConstructorUsedError;
  @AgeGroupConverter()
  AgeGroup get ageGroup => throw _privateConstructorUsedError;
  int get addressId => throw _privateConstructorUsedError;
  String get explanation => throw _privateConstructorUsedError;
  List<Tag>? get tagIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomsCreateRequestCopyWith<RoomsCreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomsCreateRequestCopyWith<$Res> {
  factory $RoomsCreateRequestCopyWith(
          RoomsCreateRequest value, $Res Function(RoomsCreateRequest) then) =
      _$RoomsCreateRequestCopyWithImpl<$Res, RoomsCreateRequest>;
  @useResult
  $Res call(
      {String roomName,
      String applicationDeadline,
      int membersNum,
      @AgeGroupConverter() AgeGroup ageGroup,
      int addressId,
      String explanation,
      List<Tag>? tagIds});
}

/// @nodoc
class _$RoomsCreateRequestCopyWithImpl<$Res, $Val extends RoomsCreateRequest>
    implements $RoomsCreateRequestCopyWith<$Res> {
  _$RoomsCreateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomName = null,
    Object? applicationDeadline = null,
    Object? membersNum = null,
    Object? ageGroup = null,
    Object? addressId = null,
    Object? explanation = null,
    Object? tagIds = freezed,
  }) {
    return _then(_value.copyWith(
      roomName: null == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      applicationDeadline: null == applicationDeadline
          ? _value.applicationDeadline
          : applicationDeadline // ignore: cast_nullable_to_non_nullable
              as String,
      membersNum: null == membersNum
          ? _value.membersNum
          : membersNum // ignore: cast_nullable_to_non_nullable
              as int,
      ageGroup: null == ageGroup
          ? _value.ageGroup
          : ageGroup // ignore: cast_nullable_to_non_nullable
              as AgeGroup,
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      tagIds: freezed == tagIds
          ? _value.tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoomsCreateRequestCopyWith<$Res>
    implements $RoomsCreateRequestCopyWith<$Res> {
  factory _$$_RoomsCreateRequestCopyWith(_$_RoomsCreateRequest value,
          $Res Function(_$_RoomsCreateRequest) then) =
      __$$_RoomsCreateRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String roomName,
      String applicationDeadline,
      int membersNum,
      @AgeGroupConverter() AgeGroup ageGroup,
      int addressId,
      String explanation,
      List<Tag>? tagIds});
}

/// @nodoc
class __$$_RoomsCreateRequestCopyWithImpl<$Res>
    extends _$RoomsCreateRequestCopyWithImpl<$Res, _$_RoomsCreateRequest>
    implements _$$_RoomsCreateRequestCopyWith<$Res> {
  __$$_RoomsCreateRequestCopyWithImpl(
      _$_RoomsCreateRequest _value, $Res Function(_$_RoomsCreateRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomName = null,
    Object? applicationDeadline = null,
    Object? membersNum = null,
    Object? ageGroup = null,
    Object? addressId = null,
    Object? explanation = null,
    Object? tagIds = freezed,
  }) {
    return _then(_$_RoomsCreateRequest(
      roomName: null == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      applicationDeadline: null == applicationDeadline
          ? _value.applicationDeadline
          : applicationDeadline // ignore: cast_nullable_to_non_nullable
              as String,
      membersNum: null == membersNum
          ? _value.membersNum
          : membersNum // ignore: cast_nullable_to_non_nullable
              as int,
      ageGroup: null == ageGroup
          ? _value.ageGroup
          : ageGroup // ignore: cast_nullable_to_non_nullable
              as AgeGroup,
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      tagIds: freezed == tagIds
          ? _value._tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoomsCreateRequest implements _RoomsCreateRequest {
  _$_RoomsCreateRequest(
      {required this.roomName,
      required this.applicationDeadline,
      required this.membersNum,
      @AgeGroupConverter() required this.ageGroup,
      required this.addressId,
      required this.explanation,
      final List<Tag>? tagIds})
      : _tagIds = tagIds;

  factory _$_RoomsCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$$_RoomsCreateRequestFromJson(json);

  @override
  final String roomName;
  @override
  final String applicationDeadline;
  @override
  final int membersNum;
  @override
  @AgeGroupConverter()
  final AgeGroup ageGroup;
  @override
  final int addressId;
  @override
  final String explanation;
  final List<Tag>? _tagIds;
  @override
  List<Tag>? get tagIds {
    final value = _tagIds;
    if (value == null) return null;
    if (_tagIds is EqualUnmodifiableListView) return _tagIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RoomsCreateRequest(roomName: $roomName, applicationDeadline: $applicationDeadline, membersNum: $membersNum, ageGroup: $ageGroup, addressId: $addressId, explanation: $explanation, tagIds: $tagIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomsCreateRequest &&
            (identical(other.roomName, roomName) ||
                other.roomName == roomName) &&
            (identical(other.applicationDeadline, applicationDeadline) ||
                other.applicationDeadline == applicationDeadline) &&
            (identical(other.membersNum, membersNum) ||
                other.membersNum == membersNum) &&
            (identical(other.ageGroup, ageGroup) ||
                other.ageGroup == ageGroup) &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation) &&
            const DeepCollectionEquality().equals(other._tagIds, _tagIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      roomName,
      applicationDeadline,
      membersNum,
      ageGroup,
      addressId,
      explanation,
      const DeepCollectionEquality().hash(_tagIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomsCreateRequestCopyWith<_$_RoomsCreateRequest> get copyWith =>
      __$$_RoomsCreateRequestCopyWithImpl<_$_RoomsCreateRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomsCreateRequestToJson(
      this,
    );
  }
}

abstract class _RoomsCreateRequest implements RoomsCreateRequest {
  factory _RoomsCreateRequest(
      {required final String roomName,
      required final String applicationDeadline,
      required final int membersNum,
      @AgeGroupConverter() required final AgeGroup ageGroup,
      required final int addressId,
      required final String explanation,
      final List<Tag>? tagIds}) = _$_RoomsCreateRequest;

  factory _RoomsCreateRequest.fromJson(Map<String, dynamic> json) =
      _$_RoomsCreateRequest.fromJson;

  @override
  String get roomName;
  @override
  String get applicationDeadline;
  @override
  int get membersNum;
  @override
  @AgeGroupConverter()
  AgeGroup get ageGroup;
  @override
  int get addressId;
  @override
  String get explanation;
  @override
  List<Tag>? get tagIds;
  @override
  @JsonKey(ignore: true)
  _$$_RoomsCreateRequestCopyWith<_$_RoomsCreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

RoomsUpdateRequest _$RoomsUpdateRequestFromJson(Map<String, dynamic> json) {
  return _RoomsUpdateRequest.fromJson(json);
}

/// @nodoc
mixin _$RoomsUpdateRequest {
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
  $RoomsUpdateRequestCopyWith<RoomsUpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomsUpdateRequestCopyWith<$Res> {
  factory $RoomsUpdateRequestCopyWith(
          RoomsUpdateRequest value, $Res Function(RoomsUpdateRequest) then) =
      _$RoomsUpdateRequestCopyWithImpl<$Res, RoomsUpdateRequest>;
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
class _$RoomsUpdateRequestCopyWithImpl<$Res, $Val extends RoomsUpdateRequest>
    implements $RoomsUpdateRequestCopyWith<$Res> {
  _$RoomsUpdateRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$_RoomsUpdateRequestCopyWith<$Res>
    implements $RoomsUpdateRequestCopyWith<$Res> {
  factory _$$_RoomsUpdateRequestCopyWith(_$_RoomsUpdateRequest value,
          $Res Function(_$_RoomsUpdateRequest) then) =
      __$$_RoomsUpdateRequestCopyWithImpl<$Res>;
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
class __$$_RoomsUpdateRequestCopyWithImpl<$Res>
    extends _$RoomsUpdateRequestCopyWithImpl<$Res, _$_RoomsUpdateRequest>
    implements _$$_RoomsUpdateRequestCopyWith<$Res> {
  __$$_RoomsUpdateRequestCopyWithImpl(
      _$_RoomsUpdateRequest _value, $Res Function(_$_RoomsUpdateRequest) _then)
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
    return _then(_$_RoomsUpdateRequest(
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
class _$_RoomsUpdateRequest implements _RoomsUpdateRequest {
  _$_RoomsUpdateRequest(
      {required this.name,
      @GenderConverter() required this.gender,
      required this.addressId,
      required this.files,
      this.height,
      @DrinkFrequencyConverter() this.drinkFrequency,
      @CigaretteFrequencyConverter() this.cigaretteFrequency,
      this.selfIntroduction,
      this.occupationId,
      final List<String>? tagIds})
      : _tagIds = tagIds;

  factory _$_RoomsUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$$_RoomsUpdateRequestFromJson(json);

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
    return 'RoomsUpdateRequest(name: $name, gender: $gender, addressId: $addressId, files: $files, height: $height, drinkFrequency: $drinkFrequency, cigaretteFrequency: $cigaretteFrequency, selfIntroduction: $selfIntroduction, occupationId: $occupationId, tagIds: $tagIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomsUpdateRequest &&
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
  _$$_RoomsUpdateRequestCopyWith<_$_RoomsUpdateRequest> get copyWith =>
      __$$_RoomsUpdateRequestCopyWithImpl<_$_RoomsUpdateRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomsUpdateRequestToJson(
      this,
    );
  }
}

abstract class _RoomsUpdateRequest implements RoomsUpdateRequest {
  factory _RoomsUpdateRequest(
      {required final String name,
      @GenderConverter()
          required final Gender gender,
      required final int addressId,
      required final ProfileFiles files,
      final int? height,
      @DrinkFrequencyConverter()
          final DrinkFrequency? drinkFrequency,
      @CigaretteFrequencyConverter()
          final CigaretteFrequency? cigaretteFrequency,
      final String? selfIntroduction,
      final int? occupationId,
      final List<String>? tagIds}) = _$_RoomsUpdateRequest;

  factory _RoomsUpdateRequest.fromJson(Map<String, dynamic> json) =
      _$_RoomsUpdateRequest.fromJson;

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
  _$$_RoomsUpdateRequestCopyWith<_$_RoomsUpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
