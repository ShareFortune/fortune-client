// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patch_v1_profiles_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PatchV1ProfilesIdRequest _$PatchV1ProfilesIdRequestFromJson(
    Map<String, dynamic> json) {
  return _PatchV1ProfilesIdRequest.fromJson(json);
}

/// @nodoc
mixin _$PatchV1ProfilesIdRequest {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "gender")
  String get gender => throw _privateConstructorUsedError;
  @JsonKey(name: "addressId")
  int get addressId => throw _privateConstructorUsedError;
  @JsonKey(name: "files")
  ProfilesFiles get files => throw _privateConstructorUsedError;
  @JsonKey(name: "height")
  int? get height => throw _privateConstructorUsedError;
  @JsonKey(name: "drinkFrequency")
  String? get drinkFrequency => throw _privateConstructorUsedError;
  @JsonKey(name: "cigaretteFrequency")
  String? get cigaretteFrequency => throw _privateConstructorUsedError;
  @JsonKey(name: "selfIntroduction")
  String? get selfIntroduction => throw _privateConstructorUsedError;
  @JsonKey(name: "occupationId")
  int? get occupationId => throw _privateConstructorUsedError;
  @JsonKey(name: "tagIds")
  List<String>? get tagIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatchV1ProfilesIdRequestCopyWith<PatchV1ProfilesIdRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatchV1ProfilesIdRequestCopyWith<$Res> {
  factory $PatchV1ProfilesIdRequestCopyWith(PatchV1ProfilesIdRequest value,
          $Res Function(PatchV1ProfilesIdRequest) then) =
      _$PatchV1ProfilesIdRequestCopyWithImpl<$Res, PatchV1ProfilesIdRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "gender") String gender,
      @JsonKey(name: "addressId") int addressId,
      @JsonKey(name: "files") ProfilesFiles files,
      @JsonKey(name: "height") int? height,
      @JsonKey(name: "drinkFrequency") String? drinkFrequency,
      @JsonKey(name: "cigaretteFrequency") String? cigaretteFrequency,
      @JsonKey(name: "selfIntroduction") String? selfIntroduction,
      @JsonKey(name: "occupationId") int? occupationId,
      @JsonKey(name: "tagIds") List<String>? tagIds});

  $ProfilesFilesCopyWith<$Res> get files;
}

/// @nodoc
class _$PatchV1ProfilesIdRequestCopyWithImpl<$Res,
        $Val extends PatchV1ProfilesIdRequest>
    implements $PatchV1ProfilesIdRequestCopyWith<$Res> {
  _$PatchV1ProfilesIdRequestCopyWithImpl(this._value, this._then);

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
              as String,
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
              as String?,
      cigaretteFrequency: freezed == cigaretteFrequency
          ? _value.cigaretteFrequency
          : cigaretteFrequency // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_PatchV1ProfilesIdRequestCopyWith<$Res>
    implements $PatchV1ProfilesIdRequestCopyWith<$Res> {
  factory _$$_PatchV1ProfilesIdRequestCopyWith(
          _$_PatchV1ProfilesIdRequest value,
          $Res Function(_$_PatchV1ProfilesIdRequest) then) =
      __$$_PatchV1ProfilesIdRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "gender") String gender,
      @JsonKey(name: "addressId") int addressId,
      @JsonKey(name: "files") ProfilesFiles files,
      @JsonKey(name: "height") int? height,
      @JsonKey(name: "drinkFrequency") String? drinkFrequency,
      @JsonKey(name: "cigaretteFrequency") String? cigaretteFrequency,
      @JsonKey(name: "selfIntroduction") String? selfIntroduction,
      @JsonKey(name: "occupationId") int? occupationId,
      @JsonKey(name: "tagIds") List<String>? tagIds});

  @override
  $ProfilesFilesCopyWith<$Res> get files;
}

/// @nodoc
class __$$_PatchV1ProfilesIdRequestCopyWithImpl<$Res>
    extends _$PatchV1ProfilesIdRequestCopyWithImpl<$Res,
        _$_PatchV1ProfilesIdRequest>
    implements _$$_PatchV1ProfilesIdRequestCopyWith<$Res> {
  __$$_PatchV1ProfilesIdRequestCopyWithImpl(_$_PatchV1ProfilesIdRequest _value,
      $Res Function(_$_PatchV1ProfilesIdRequest) _then)
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
    return _then(_$_PatchV1ProfilesIdRequest(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
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
              as String?,
      cigaretteFrequency: freezed == cigaretteFrequency
          ? _value.cigaretteFrequency
          : cigaretteFrequency // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_PatchV1ProfilesIdRequest implements _PatchV1ProfilesIdRequest {
  const _$_PatchV1ProfilesIdRequest(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "gender") required this.gender,
      @JsonKey(name: "addressId") required this.addressId,
      @JsonKey(name: "files") required this.files,
      @JsonKey(name: "height") required this.height,
      @JsonKey(name: "drinkFrequency") required this.drinkFrequency,
      @JsonKey(name: "cigaretteFrequency") required this.cigaretteFrequency,
      @JsonKey(name: "selfIntroduction") required this.selfIntroduction,
      @JsonKey(name: "occupationId") required this.occupationId,
      @JsonKey(name: "tagIds") required final List<String>? tagIds})
      : _tagIds = tagIds;

  factory _$_PatchV1ProfilesIdRequest.fromJson(Map<String, dynamic> json) =>
      _$$_PatchV1ProfilesIdRequestFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "gender")
  final String gender;
  @override
  @JsonKey(name: "addressId")
  final int addressId;
  @override
  @JsonKey(name: "files")
  final ProfilesFiles files;
  @override
  @JsonKey(name: "height")
  final int? height;
  @override
  @JsonKey(name: "drinkFrequency")
  final String? drinkFrequency;
  @override
  @JsonKey(name: "cigaretteFrequency")
  final String? cigaretteFrequency;
  @override
  @JsonKey(name: "selfIntroduction")
  final String? selfIntroduction;
  @override
  @JsonKey(name: "occupationId")
  final int? occupationId;
  final List<String>? _tagIds;
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
    return 'PatchV1ProfilesIdRequest(name: $name, gender: $gender, addressId: $addressId, files: $files, height: $height, drinkFrequency: $drinkFrequency, cigaretteFrequency: $cigaretteFrequency, selfIntroduction: $selfIntroduction, occupationId: $occupationId, tagIds: $tagIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PatchV1ProfilesIdRequest &&
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
  _$$_PatchV1ProfilesIdRequestCopyWith<_$_PatchV1ProfilesIdRequest>
      get copyWith => __$$_PatchV1ProfilesIdRequestCopyWithImpl<
          _$_PatchV1ProfilesIdRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatchV1ProfilesIdRequestToJson(
      this,
    );
  }
}

abstract class _PatchV1ProfilesIdRequest implements PatchV1ProfilesIdRequest {
  const factory _PatchV1ProfilesIdRequest(
      {@JsonKey(name: "name")
          required final String name,
      @JsonKey(name: "gender")
          required final String gender,
      @JsonKey(name: "addressId")
          required final int addressId,
      @JsonKey(name: "files")
          required final ProfilesFiles files,
      @JsonKey(name: "height")
          required final int? height,
      @JsonKey(name: "drinkFrequency")
          required final String? drinkFrequency,
      @JsonKey(name: "cigaretteFrequency")
          required final String? cigaretteFrequency,
      @JsonKey(name: "selfIntroduction")
          required final String? selfIntroduction,
      @JsonKey(name: "occupationId")
          required final int? occupationId,
      @JsonKey(name: "tagIds")
          required final List<String>? tagIds}) = _$_PatchV1ProfilesIdRequest;

  factory _PatchV1ProfilesIdRequest.fromJson(Map<String, dynamic> json) =
      _$_PatchV1ProfilesIdRequest.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "gender")
  String get gender;
  @override
  @JsonKey(name: "addressId")
  int get addressId;
  @override
  @JsonKey(name: "files")
  ProfilesFiles get files;
  @override
  @JsonKey(name: "height")
  int? get height;
  @override
  @JsonKey(name: "drinkFrequency")
  String? get drinkFrequency;
  @override
  @JsonKey(name: "cigaretteFrequency")
  String? get cigaretteFrequency;
  @override
  @JsonKey(name: "selfIntroduction")
  String? get selfIntroduction;
  @override
  @JsonKey(name: "occupationId")
  int? get occupationId;
  @override
  @JsonKey(name: "tagIds")
  List<String>? get tagIds;
  @override
  @JsonKey(ignore: true)
  _$$_PatchV1ProfilesIdRequestCopyWith<_$_PatchV1ProfilesIdRequest>
      get copyWith => throw _privateConstructorUsedError;
}

PatchV1ProfilesIdResponse _$PatchV1ProfilesIdResponseFromJson(
    Map<String, dynamic> json) {
  return _PatchV1ProfilesIdResponse.fromJson(json);
}

/// @nodoc
mixin _$PatchV1ProfilesIdResponse {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatchV1ProfilesIdResponseCopyWith<PatchV1ProfilesIdResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatchV1ProfilesIdResponseCopyWith<$Res> {
  factory $PatchV1ProfilesIdResponseCopyWith(PatchV1ProfilesIdResponse value,
          $Res Function(PatchV1ProfilesIdResponse) then) =
      _$PatchV1ProfilesIdResponseCopyWithImpl<$Res, PatchV1ProfilesIdResponse>;
  @useResult
  $Res call({@JsonKey(name: 'id') String id});
}

/// @nodoc
class _$PatchV1ProfilesIdResponseCopyWithImpl<$Res,
        $Val extends PatchV1ProfilesIdResponse>
    implements $PatchV1ProfilesIdResponseCopyWith<$Res> {
  _$PatchV1ProfilesIdResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_PatchV1ProfilesIdResponseCopyWith<$Res>
    implements $PatchV1ProfilesIdResponseCopyWith<$Res> {
  factory _$$_PatchV1ProfilesIdResponseCopyWith(
          _$_PatchV1ProfilesIdResponse value,
          $Res Function(_$_PatchV1ProfilesIdResponse) then) =
      __$$_PatchV1ProfilesIdResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id') String id});
}

/// @nodoc
class __$$_PatchV1ProfilesIdResponseCopyWithImpl<$Res>
    extends _$PatchV1ProfilesIdResponseCopyWithImpl<$Res,
        _$_PatchV1ProfilesIdResponse>
    implements _$$_PatchV1ProfilesIdResponseCopyWith<$Res> {
  __$$_PatchV1ProfilesIdResponseCopyWithImpl(
      _$_PatchV1ProfilesIdResponse _value,
      $Res Function(_$_PatchV1ProfilesIdResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_PatchV1ProfilesIdResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PatchV1ProfilesIdResponse implements _PatchV1ProfilesIdResponse {
  const _$_PatchV1ProfilesIdResponse({@JsonKey(name: 'id') required this.id});

  factory _$_PatchV1ProfilesIdResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PatchV1ProfilesIdResponseFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;

  @override
  String toString() {
    return 'PatchV1ProfilesIdResponse(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PatchV1ProfilesIdResponse &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PatchV1ProfilesIdResponseCopyWith<_$_PatchV1ProfilesIdResponse>
      get copyWith => __$$_PatchV1ProfilesIdResponseCopyWithImpl<
          _$_PatchV1ProfilesIdResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatchV1ProfilesIdResponseToJson(
      this,
    );
  }
}

abstract class _PatchV1ProfilesIdResponse implements PatchV1ProfilesIdResponse {
  const factory _PatchV1ProfilesIdResponse(
          {@JsonKey(name: 'id') required final String id}) =
      _$_PatchV1ProfilesIdResponse;

  factory _PatchV1ProfilesIdResponse.fromJson(Map<String, dynamic> json) =
      _$_PatchV1ProfilesIdResponse.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_PatchV1ProfilesIdResponseCopyWith<_$_PatchV1ProfilesIdResponse>
      get copyWith => throw _privateConstructorUsedError;
}
