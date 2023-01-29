// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_v1_users_id_profiles.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostV1UsersIdProfilesRequest _$PostV1UsersIdProfilesRequestFromJson(
    Map<String, dynamic> json) {
  return _PostV1UsersIdProfilesRequest.fromJson(json);
}

/// @nodoc
mixin _$PostV1UsersIdProfilesRequest {
  @freezed
  @JsonKey(name: 'files')
  Map<String, dynamic> get files => throw _privateConstructorUsedError;

  /// 名前
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  /// 性別
  @JsonKey(name: 'gender')
  String get gender => throw _privateConstructorUsedError;

  /// 身長
  @JsonKey(name: 'height')
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
  @JsonKey(name: 'selfIntroduction')
  String? get selfIntroduction => throw _privateConstructorUsedError;

  /// 職業ID
  @JsonKey(name: 'occupationId')
  int? get occupationId => throw _privateConstructorUsedError;

  /// 居住地
  @JsonKey(name: 'addressId')
  int get addressId => throw _privateConstructorUsedError;

  /// タグ
  @JsonKey(name: 'tagIds')
  List<String>? get tagIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostV1UsersIdProfilesRequestCopyWith<PostV1UsersIdProfilesRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostV1UsersIdProfilesRequestCopyWith<$Res> {
  factory $PostV1UsersIdProfilesRequestCopyWith(
          PostV1UsersIdProfilesRequest value,
          $Res Function(PostV1UsersIdProfilesRequest) then) =
      _$PostV1UsersIdProfilesRequestCopyWithImpl<$Res,
          PostV1UsersIdProfilesRequest>;
  @useResult
  $Res call(
      {@freezed
      @JsonKey(name: 'files')
          Map<String, dynamic> files,
      @JsonKey(name: 'name')
          String name,
      @JsonKey(name: 'gender')
          String gender,
      @JsonKey(name: 'height')
          int? height,
      @JsonKey(name: "drinkFrequency")
      @DrinkFrequencyConverter()
          DrinkFrequency? drinkFrequency,
      @JsonKey(name: "cigaretteFrequency")
      @CigaretteFrequencyConverter()
          CigaretteFrequency? cigaretteFrequency,
      @JsonKey(name: 'selfIntroduction')
          String? selfIntroduction,
      @JsonKey(name: 'occupationId')
          int? occupationId,
      @JsonKey(name: 'addressId')
          int addressId,
      @JsonKey(name: 'tagIds')
          List<String>? tagIds});
}

/// @nodoc
class _$PostV1UsersIdProfilesRequestCopyWithImpl<$Res,
        $Val extends PostV1UsersIdProfilesRequest>
    implements $PostV1UsersIdProfilesRequestCopyWith<$Res> {
  _$PostV1UsersIdProfilesRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$_PostV1UsersIdProfilesRequestCopyWith<$Res>
    implements $PostV1UsersIdProfilesRequestCopyWith<$Res> {
  factory _$$_PostV1UsersIdProfilesRequestCopyWith(
          _$_PostV1UsersIdProfilesRequest value,
          $Res Function(_$_PostV1UsersIdProfilesRequest) then) =
      __$$_PostV1UsersIdProfilesRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@freezed
      @JsonKey(name: 'files')
          Map<String, dynamic> files,
      @JsonKey(name: 'name')
          String name,
      @JsonKey(name: 'gender')
          String gender,
      @JsonKey(name: 'height')
          int? height,
      @JsonKey(name: "drinkFrequency")
      @DrinkFrequencyConverter()
          DrinkFrequency? drinkFrequency,
      @JsonKey(name: "cigaretteFrequency")
      @CigaretteFrequencyConverter()
          CigaretteFrequency? cigaretteFrequency,
      @JsonKey(name: 'selfIntroduction')
          String? selfIntroduction,
      @JsonKey(name: 'occupationId')
          int? occupationId,
      @JsonKey(name: 'addressId')
          int addressId,
      @JsonKey(name: 'tagIds')
          List<String>? tagIds});
}

/// @nodoc
class __$$_PostV1UsersIdProfilesRequestCopyWithImpl<$Res>
    extends _$PostV1UsersIdProfilesRequestCopyWithImpl<$Res,
        _$_PostV1UsersIdProfilesRequest>
    implements _$$_PostV1UsersIdProfilesRequestCopyWith<$Res> {
  __$$_PostV1UsersIdProfilesRequestCopyWithImpl(
      _$_PostV1UsersIdProfilesRequest _value,
      $Res Function(_$_PostV1UsersIdProfilesRequest) _then)
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
    return _then(_$_PostV1UsersIdProfilesRequest(
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
class _$_PostV1UsersIdProfilesRequest implements _PostV1UsersIdProfilesRequest {
  const _$_PostV1UsersIdProfilesRequest(
      {@freezed
      @JsonKey(name: 'files')
          required final Map<String, dynamic> files,
      @JsonKey(name: 'name')
          required this.name,
      @JsonKey(name: 'gender')
          required this.gender,
      @JsonKey(name: 'height')
          this.height,
      @JsonKey(name: "drinkFrequency")
      @DrinkFrequencyConverter()
          this.drinkFrequency,
      @JsonKey(name: "cigaretteFrequency")
      @CigaretteFrequencyConverter()
          this.cigaretteFrequency,
      @JsonKey(name: 'selfIntroduction')
          this.selfIntroduction,
      @JsonKey(name: 'occupationId')
          this.occupationId,
      @JsonKey(name: 'addressId')
          required this.addressId,
      @JsonKey(name: 'tagIds')
          final List<String>? tagIds})
      : _files = files,
        _tagIds = tagIds;

  factory _$_PostV1UsersIdProfilesRequest.fromJson(Map<String, dynamic> json) =>
      _$$_PostV1UsersIdProfilesRequestFromJson(json);

  final Map<String, dynamic> _files;
  @override
  @freezed
  @JsonKey(name: 'files')
  Map<String, dynamic> get files {
    if (_files is EqualUnmodifiableMapView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_files);
  }

  /// 名前
  @override
  @JsonKey(name: 'name')
  final String name;

  /// 性別
  @override
  @JsonKey(name: 'gender')
  final String gender;

  /// 身長
  @override
  @JsonKey(name: 'height')
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
  @JsonKey(name: 'selfIntroduction')
  final String? selfIntroduction;

  /// 職業ID
  @override
  @JsonKey(name: 'occupationId')
  final int? occupationId;

  /// 居住地
  @override
  @JsonKey(name: 'addressId')
  final int addressId;

  /// タグ
  final List<String>? _tagIds;

  /// タグ
  @override
  @JsonKey(name: 'tagIds')
  List<String>? get tagIds {
    final value = _tagIds;
    if (value == null) return null;
    if (_tagIds is EqualUnmodifiableListView) return _tagIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PostV1UsersIdProfilesRequest(files: $files, name: $name, gender: $gender, height: $height, drinkFrequency: $drinkFrequency, cigaretteFrequency: $cigaretteFrequency, selfIntroduction: $selfIntroduction, occupationId: $occupationId, addressId: $addressId, tagIds: $tagIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostV1UsersIdProfilesRequest &&
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
  _$$_PostV1UsersIdProfilesRequestCopyWith<_$_PostV1UsersIdProfilesRequest>
      get copyWith => __$$_PostV1UsersIdProfilesRequestCopyWithImpl<
          _$_PostV1UsersIdProfilesRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostV1UsersIdProfilesRequestToJson(
      this,
    );
  }
}

abstract class _PostV1UsersIdProfilesRequest
    implements PostV1UsersIdProfilesRequest {
  const factory _PostV1UsersIdProfilesRequest(
      {@freezed
      @JsonKey(name: 'files')
          required final Map<String, dynamic> files,
      @JsonKey(name: 'name')
          required final String name,
      @JsonKey(name: 'gender')
          required final String gender,
      @JsonKey(name: 'height')
          final int? height,
      @JsonKey(name: "drinkFrequency")
      @DrinkFrequencyConverter()
          final DrinkFrequency? drinkFrequency,
      @JsonKey(name: "cigaretteFrequency")
      @CigaretteFrequencyConverter()
          final CigaretteFrequency? cigaretteFrequency,
      @JsonKey(name: 'selfIntroduction')
          final String? selfIntroduction,
      @JsonKey(name: 'occupationId')
          final int? occupationId,
      @JsonKey(name: 'addressId')
          required final int addressId,
      @JsonKey(name: 'tagIds')
          final List<String>? tagIds}) = _$_PostV1UsersIdProfilesRequest;

  factory _PostV1UsersIdProfilesRequest.fromJson(Map<String, dynamic> json) =
      _$_PostV1UsersIdProfilesRequest.fromJson;

  @override
  @freezed
  @JsonKey(name: 'files')
  Map<String, dynamic> get files;
  @override

  /// 名前
  @JsonKey(name: 'name')
  String get name;
  @override

  /// 性別
  @JsonKey(name: 'gender')
  String get gender;
  @override

  /// 身長
  @JsonKey(name: 'height')
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
  @JsonKey(name: 'selfIntroduction')
  String? get selfIntroduction;
  @override

  /// 職業ID
  @JsonKey(name: 'occupationId')
  int? get occupationId;
  @override

  /// 居住地
  @JsonKey(name: 'addressId')
  int get addressId;
  @override

  /// タグ
  @JsonKey(name: 'tagIds')
  List<String>? get tagIds;
  @override
  @JsonKey(ignore: true)
  _$$_PostV1UsersIdProfilesRequestCopyWith<_$_PostV1UsersIdProfilesRequest>
      get copyWith => throw _privateConstructorUsedError;
}

PostV1UsersIdProfilesResponse _$PostV1UsersIdProfilesResponseFromJson(
    Map<String, dynamic> json) {
  return _PostV1UsersIdProfilesResponse.fromJson(json);
}

/// @nodoc
mixin _$PostV1UsersIdProfilesResponse {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostV1UsersIdProfilesResponseCopyWith<PostV1UsersIdProfilesResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostV1UsersIdProfilesResponseCopyWith<$Res> {
  factory $PostV1UsersIdProfilesResponseCopyWith(
          PostV1UsersIdProfilesResponse value,
          $Res Function(PostV1UsersIdProfilesResponse) then) =
      _$PostV1UsersIdProfilesResponseCopyWithImpl<$Res,
          PostV1UsersIdProfilesResponse>;
  @useResult
  $Res call({@JsonKey(name: 'id') String id});
}

/// @nodoc
class _$PostV1UsersIdProfilesResponseCopyWithImpl<$Res,
        $Val extends PostV1UsersIdProfilesResponse>
    implements $PostV1UsersIdProfilesResponseCopyWith<$Res> {
  _$PostV1UsersIdProfilesResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_PostV1UsersIdProfilesResponseCopyWith<$Res>
    implements $PostV1UsersIdProfilesResponseCopyWith<$Res> {
  factory _$$_PostV1UsersIdProfilesResponseCopyWith(
          _$_PostV1UsersIdProfilesResponse value,
          $Res Function(_$_PostV1UsersIdProfilesResponse) then) =
      __$$_PostV1UsersIdProfilesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id') String id});
}

/// @nodoc
class __$$_PostV1UsersIdProfilesResponseCopyWithImpl<$Res>
    extends _$PostV1UsersIdProfilesResponseCopyWithImpl<$Res,
        _$_PostV1UsersIdProfilesResponse>
    implements _$$_PostV1UsersIdProfilesResponseCopyWith<$Res> {
  __$$_PostV1UsersIdProfilesResponseCopyWithImpl(
      _$_PostV1UsersIdProfilesResponse _value,
      $Res Function(_$_PostV1UsersIdProfilesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_PostV1UsersIdProfilesResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostV1UsersIdProfilesResponse
    implements _PostV1UsersIdProfilesResponse {
  const _$_PostV1UsersIdProfilesResponse(
      {@JsonKey(name: 'id') required this.id});

  factory _$_PostV1UsersIdProfilesResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_PostV1UsersIdProfilesResponseFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;

  @override
  String toString() {
    return 'PostV1UsersIdProfilesResponse(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostV1UsersIdProfilesResponse &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostV1UsersIdProfilesResponseCopyWith<_$_PostV1UsersIdProfilesResponse>
      get copyWith => __$$_PostV1UsersIdProfilesResponseCopyWithImpl<
          _$_PostV1UsersIdProfilesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostV1UsersIdProfilesResponseToJson(
      this,
    );
  }
}

abstract class _PostV1UsersIdProfilesResponse
    implements PostV1UsersIdProfilesResponse {
  const factory _PostV1UsersIdProfilesResponse(
          {@JsonKey(name: 'id') required final String id}) =
      _$_PostV1UsersIdProfilesResponse;

  factory _PostV1UsersIdProfilesResponse.fromJson(Map<String, dynamic> json) =
      _$_PostV1UsersIdProfilesResponse.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_PostV1UsersIdProfilesResponseCopyWith<_$_PostV1UsersIdProfilesResponse>
      get copyWith => throw _privateConstructorUsedError;
}
