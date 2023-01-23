// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_profile_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileForm _$ProfileFormFromJson(Map<String, dynamic> json) {
  return _ProfileForm.fromJson(json);
}

/// @nodoc
mixin _$ProfileForm {
  ///
  /// 名前
  ///
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  ///
  /// 性別
  ///
  @JsonKey(name: 'gender')
  String get gender => throw _privateConstructorUsedError;

  ///
  /// アイコン画像
  ///
  @JsonKey(name: 'files')
  Map<String, dynamic> get images => throw _privateConstructorUsedError;

  ///
  /// 居住地
  ///
  @JsonKey(name: 'addressId')
  int get addressId => throw _privateConstructorUsedError;

  ///
  /// 身長
  ///
  @JsonKey(name: 'height')
  int? get height => throw _privateConstructorUsedError;

  ///
  /// お酒をよく飲むか
  ///
  @JsonKey(name: 'drinkFrequency')
  String? get drinkFrequency => throw _privateConstructorUsedError;

  ///
  /// タバコをよく吸うか
  ///
  @JsonKey(name: 'cigaretteFrequency')
  String? get cigaretteFrequency => throw _privateConstructorUsedError;

  ///
  /// 自己紹介文
  ///
  @JsonKey(name: 'selfIntroduction')
  String? get selfIntroduction => throw _privateConstructorUsedError;

  ///
  /// 職業ID
  ///
  @JsonKey(name: 'occupationId')
  int? get occupationId => throw _privateConstructorUsedError;

  ///
  /// タグ
  ///
  @JsonKey(name: 'tagIds')
  List<String>? get tagIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileFormCopyWith<ProfileForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileFormCopyWith<$Res> {
  factory $ProfileFormCopyWith(
          ProfileForm value, $Res Function(ProfileForm) then) =
      _$ProfileFormCopyWithImpl<$Res, ProfileForm>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'gender') String gender,
      @JsonKey(name: 'files') Map<String, dynamic> images,
      @JsonKey(name: 'addressId') int addressId,
      @JsonKey(name: 'height') int? height,
      @JsonKey(name: 'drinkFrequency') String? drinkFrequency,
      @JsonKey(name: 'cigaretteFrequency') String? cigaretteFrequency,
      @JsonKey(name: 'selfIntroduction') String? selfIntroduction,
      @JsonKey(name: 'occupationId') int? occupationId,
      @JsonKey(name: 'tagIds') List<String>? tagIds});
}

/// @nodoc
class _$ProfileFormCopyWithImpl<$Res, $Val extends ProfileForm>
    implements $ProfileFormCopyWith<$Res> {
  _$ProfileFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? gender = null,
    Object? images = null,
    Object? addressId = null,
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
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int,
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
}

/// @nodoc
abstract class _$$_ProfileFormCopyWith<$Res>
    implements $ProfileFormCopyWith<$Res> {
  factory _$$_ProfileFormCopyWith(
          _$_ProfileForm value, $Res Function(_$_ProfileForm) then) =
      __$$_ProfileFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'gender') String gender,
      @JsonKey(name: 'files') Map<String, dynamic> images,
      @JsonKey(name: 'addressId') int addressId,
      @JsonKey(name: 'height') int? height,
      @JsonKey(name: 'drinkFrequency') String? drinkFrequency,
      @JsonKey(name: 'cigaretteFrequency') String? cigaretteFrequency,
      @JsonKey(name: 'selfIntroduction') String? selfIntroduction,
      @JsonKey(name: 'occupationId') int? occupationId,
      @JsonKey(name: 'tagIds') List<String>? tagIds});
}

/// @nodoc
class __$$_ProfileFormCopyWithImpl<$Res>
    extends _$ProfileFormCopyWithImpl<$Res, _$_ProfileForm>
    implements _$$_ProfileFormCopyWith<$Res> {
  __$$_ProfileFormCopyWithImpl(
      _$_ProfileForm _value, $Res Function(_$_ProfileForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? gender = null,
    Object? images = null,
    Object? addressId = null,
    Object? height = freezed,
    Object? drinkFrequency = freezed,
    Object? cigaretteFrequency = freezed,
    Object? selfIntroduction = freezed,
    Object? occupationId = freezed,
    Object? tagIds = freezed,
  }) {
    return _then(_$_ProfileForm(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$_ProfileForm implements _ProfileForm {
  _$_ProfileForm(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'gender') required this.gender,
      @JsonKey(name: 'files') required final Map<String, dynamic> images,
      @JsonKey(name: 'addressId') required this.addressId,
      @JsonKey(name: 'height') this.height,
      @JsonKey(name: 'drinkFrequency') this.drinkFrequency,
      @JsonKey(name: 'cigaretteFrequency') this.cigaretteFrequency,
      @JsonKey(name: 'selfIntroduction') this.selfIntroduction,
      @JsonKey(name: 'occupationId') this.occupationId,
      @JsonKey(name: 'tagIds') final List<String>? tagIds})
      : _images = images,
        _tagIds = tagIds;

  factory _$_ProfileForm.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileFormFromJson(json);

  ///
  /// 名前
  ///
  @override
  @JsonKey(name: 'name')
  final String name;

  ///
  /// 性別
  ///
  @override
  @JsonKey(name: 'gender')
  final String gender;

  ///
  /// アイコン画像
  ///
  final Map<String, dynamic> _images;

  ///
  /// アイコン画像
  ///
  @override
  @JsonKey(name: 'files')
  Map<String, dynamic> get images {
    if (_images is EqualUnmodifiableMapView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_images);
  }

  ///
  /// 居住地
  ///
  @override
  @JsonKey(name: 'addressId')
  final int addressId;

  ///
  /// 身長
  ///
  @override
  @JsonKey(name: 'height')
  final int? height;

  ///
  /// お酒をよく飲むか
  ///
  @override
  @JsonKey(name: 'drinkFrequency')
  final String? drinkFrequency;

  ///
  /// タバコをよく吸うか
  ///
  @override
  @JsonKey(name: 'cigaretteFrequency')
  final String? cigaretteFrequency;

  ///
  /// 自己紹介文
  ///
  @override
  @JsonKey(name: 'selfIntroduction')
  final String? selfIntroduction;

  ///
  /// 職業ID
  ///
  @override
  @JsonKey(name: 'occupationId')
  final int? occupationId;

  ///
  /// タグ
  ///
  final List<String>? _tagIds;

  ///
  /// タグ
  ///
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
    return 'ProfileForm(name: $name, gender: $gender, images: $images, addressId: $addressId, height: $height, drinkFrequency: $drinkFrequency, cigaretteFrequency: $cigaretteFrequency, selfIntroduction: $selfIntroduction, occupationId: $occupationId, tagIds: $tagIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileForm &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId) &&
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
      const DeepCollectionEquality().hash(_images),
      addressId,
      height,
      drinkFrequency,
      cigaretteFrequency,
      selfIntroduction,
      occupationId,
      const DeepCollectionEquality().hash(_tagIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileFormCopyWith<_$_ProfileForm> get copyWith =>
      __$$_ProfileFormCopyWithImpl<_$_ProfileForm>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileFormToJson(
      this,
    );
  }
}

abstract class _ProfileForm implements ProfileForm {
  factory _ProfileForm(
      {@JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'gender') required final String gender,
      @JsonKey(name: 'files') required final Map<String, dynamic> images,
      @JsonKey(name: 'addressId') required final int addressId,
      @JsonKey(name: 'height') final int? height,
      @JsonKey(name: 'drinkFrequency') final String? drinkFrequency,
      @JsonKey(name: 'cigaretteFrequency') final String? cigaretteFrequency,
      @JsonKey(name: 'selfIntroduction') final String? selfIntroduction,
      @JsonKey(name: 'occupationId') final int? occupationId,
      @JsonKey(name: 'tagIds') final List<String>? tagIds}) = _$_ProfileForm;

  factory _ProfileForm.fromJson(Map<String, dynamic> json) =
      _$_ProfileForm.fromJson;

  @override

  ///
  /// 名前
  ///
  @JsonKey(name: 'name')
  String get name;
  @override

  ///
  /// 性別
  ///
  @JsonKey(name: 'gender')
  String get gender;
  @override

  ///
  /// アイコン画像
  ///
  @JsonKey(name: 'files')
  Map<String, dynamic> get images;
  @override

  ///
  /// 居住地
  ///
  @JsonKey(name: 'addressId')
  int get addressId;
  @override

  ///
  /// 身長
  ///
  @JsonKey(name: 'height')
  int? get height;
  @override

  ///
  /// お酒をよく飲むか
  ///
  @JsonKey(name: 'drinkFrequency')
  String? get drinkFrequency;
  @override

  ///
  /// タバコをよく吸うか
  ///
  @JsonKey(name: 'cigaretteFrequency')
  String? get cigaretteFrequency;
  @override

  ///
  /// 自己紹介文
  ///
  @JsonKey(name: 'selfIntroduction')
  String? get selfIntroduction;
  @override

  ///
  /// 職業ID
  ///
  @JsonKey(name: 'occupationId')
  int? get occupationId;
  @override

  ///
  /// タグ
  ///
  @JsonKey(name: 'tagIds')
  List<String>? get tagIds;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileFormCopyWith<_$_ProfileForm> get copyWith =>
      throw _privateConstructorUsedError;
}
