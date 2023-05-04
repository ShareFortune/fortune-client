// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditProfileState {
  /// プロフィール画像を編集したか
  bool get isEditedProfileImage => throw _privateConstructorUsedError;

  /// 基本情報を編集したか
  bool get isEditedBasicInfo => throw _privateConstructorUsedError;

  /// 自己紹介を編集したか
  bool get isEditedIntroduction => throw _privateConstructorUsedError;

  /// タグを編集したか
  bool get isEditedTags => throw _privateConstructorUsedError;

  /// 編集用プロフィール写真
  List<ProfileImage> get images => throw _privateConstructorUsedError;
  ProfileResponse get profile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditProfileStateCopyWith<EditProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileStateCopyWith<$Res> {
  factory $EditProfileStateCopyWith(
          EditProfileState value, $Res Function(EditProfileState) then) =
      _$EditProfileStateCopyWithImpl<$Res, EditProfileState>;
  @useResult
  $Res call(
      {bool isEditedProfileImage,
      bool isEditedBasicInfo,
      bool isEditedIntroduction,
      bool isEditedTags,
      List<ProfileImage> images,
      ProfileResponse profile});

  $ProfileResponseCopyWith<$Res> get profile;
}

/// @nodoc
class _$EditProfileStateCopyWithImpl<$Res, $Val extends EditProfileState>
    implements $EditProfileStateCopyWith<$Res> {
  _$EditProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEditedProfileImage = null,
    Object? isEditedBasicInfo = null,
    Object? isEditedIntroduction = null,
    Object? isEditedTags = null,
    Object? images = null,
    Object? profile = null,
  }) {
    return _then(_value.copyWith(
      isEditedProfileImage: null == isEditedProfileImage
          ? _value.isEditedProfileImage
          : isEditedProfileImage // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditedBasicInfo: null == isEditedBasicInfo
          ? _value.isEditedBasicInfo
          : isEditedBasicInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditedIntroduction: null == isEditedIntroduction
          ? _value.isEditedIntroduction
          : isEditedIntroduction // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditedTags: null == isEditedTags
          ? _value.isEditedTags
          : isEditedTags // ignore: cast_nullable_to_non_nullable
              as bool,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ProfileImage>,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileResponse,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileResponseCopyWith<$Res> get profile {
    return $ProfileResponseCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EditProfileStateCopyWith<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  factory _$$_EditProfileStateCopyWith(
          _$_EditProfileState value, $Res Function(_$_EditProfileState) then) =
      __$$_EditProfileStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isEditedProfileImage,
      bool isEditedBasicInfo,
      bool isEditedIntroduction,
      bool isEditedTags,
      List<ProfileImage> images,
      ProfileResponse profile});

  @override
  $ProfileResponseCopyWith<$Res> get profile;
}

/// @nodoc
class __$$_EditProfileStateCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res, _$_EditProfileState>
    implements _$$_EditProfileStateCopyWith<$Res> {
  __$$_EditProfileStateCopyWithImpl(
      _$_EditProfileState _value, $Res Function(_$_EditProfileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEditedProfileImage = null,
    Object? isEditedBasicInfo = null,
    Object? isEditedIntroduction = null,
    Object? isEditedTags = null,
    Object? images = null,
    Object? profile = null,
  }) {
    return _then(_$_EditProfileState(
      isEditedProfileImage: null == isEditedProfileImage
          ? _value.isEditedProfileImage
          : isEditedProfileImage // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditedBasicInfo: null == isEditedBasicInfo
          ? _value.isEditedBasicInfo
          : isEditedBasicInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditedIntroduction: null == isEditedIntroduction
          ? _value.isEditedIntroduction
          : isEditedIntroduction // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditedTags: null == isEditedTags
          ? _value.isEditedTags
          : isEditedTags // ignore: cast_nullable_to_non_nullable
              as bool,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ProfileImage>,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileResponse,
    ));
  }
}

/// @nodoc

class _$_EditProfileState implements _EditProfileState {
  const _$_EditProfileState(
      {this.isEditedProfileImage = false,
      this.isEditedBasicInfo = false,
      this.isEditedIntroduction = false,
      this.isEditedTags = false,
      required final List<ProfileImage> images,
      required this.profile})
      : _images = images;

  /// プロフィール画像を編集したか
  @override
  @JsonKey()
  final bool isEditedProfileImage;

  /// 基本情報を編集したか
  @override
  @JsonKey()
  final bool isEditedBasicInfo;

  /// 自己紹介を編集したか
  @override
  @JsonKey()
  final bool isEditedIntroduction;

  /// タグを編集したか
  @override
  @JsonKey()
  final bool isEditedTags;

  /// 編集用プロフィール写真
  final List<ProfileImage> _images;

  /// 編集用プロフィール写真
  @override
  List<ProfileImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final ProfileResponse profile;

  @override
  String toString() {
    return 'EditProfileState(isEditedProfileImage: $isEditedProfileImage, isEditedBasicInfo: $isEditedBasicInfo, isEditedIntroduction: $isEditedIntroduction, isEditedTags: $isEditedTags, images: $images, profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditProfileState &&
            (identical(other.isEditedProfileImage, isEditedProfileImage) ||
                other.isEditedProfileImage == isEditedProfileImage) &&
            (identical(other.isEditedBasicInfo, isEditedBasicInfo) ||
                other.isEditedBasicInfo == isEditedBasicInfo) &&
            (identical(other.isEditedIntroduction, isEditedIntroduction) ||
                other.isEditedIntroduction == isEditedIntroduction) &&
            (identical(other.isEditedTags, isEditedTags) ||
                other.isEditedTags == isEditedTags) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isEditedProfileImage,
      isEditedBasicInfo,
      isEditedIntroduction,
      isEditedTags,
      const DeepCollectionEquality().hash(_images),
      profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditProfileStateCopyWith<_$_EditProfileState> get copyWith =>
      __$$_EditProfileStateCopyWithImpl<_$_EditProfileState>(this, _$identity);
}

abstract class _EditProfileState implements EditProfileState {
  const factory _EditProfileState(
      {final bool isEditedProfileImage,
      final bool isEditedBasicInfo,
      final bool isEditedIntroduction,
      final bool isEditedTags,
      required final List<ProfileImage> images,
      required final ProfileResponse profile}) = _$_EditProfileState;

  @override

  /// プロフィール画像を編集したか
  bool get isEditedProfileImage;
  @override

  /// 基本情報を編集したか
  bool get isEditedBasicInfo;
  @override

  /// 自己紹介を編集したか
  bool get isEditedIntroduction;
  @override

  /// タグを編集したか
  bool get isEditedTags;
  @override

  /// 編集用プロフィール写真
  List<ProfileImage> get images;
  @override
  ProfileResponse get profile;
  @override
  @JsonKey(ignore: true)
  _$$_EditProfileStateCopyWith<_$_EditProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileImage {
  ImageProvider<Object> get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileImageCopyWith<ProfileImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileImageCopyWith<$Res> {
  factory $ProfileImageCopyWith(
          ProfileImage value, $Res Function(ProfileImage) then) =
      _$ProfileImageCopyWithImpl<$Res, ProfileImage>;
  @useResult
  $Res call({ImageProvider<Object> image});
}

/// @nodoc
class _$ProfileImageCopyWithImpl<$Res, $Val extends ProfileImage>
    implements $ProfileImageCopyWith<$Res> {
  _$ProfileImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageProvider<Object>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileImageCopyWith<$Res>
    implements $ProfileImageCopyWith<$Res> {
  factory _$$_ProfileImageCopyWith(
          _$_ProfileImage value, $Res Function(_$_ProfileImage) then) =
      __$$_ProfileImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ImageProvider<Object> image});
}

/// @nodoc
class __$$_ProfileImageCopyWithImpl<$Res>
    extends _$ProfileImageCopyWithImpl<$Res, _$_ProfileImage>
    implements _$$_ProfileImageCopyWith<$Res> {
  __$$_ProfileImageCopyWithImpl(
      _$_ProfileImage _value, $Res Function(_$_ProfileImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$_ProfileImage(
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageProvider<Object>,
    ));
  }
}

/// @nodoc

class _$_ProfileImage implements _ProfileImage {
  const _$_ProfileImage(this.image);

  @override
  final ImageProvider<Object> image;

  @override
  String toString() {
    return 'ProfileImage(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileImage &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileImageCopyWith<_$_ProfileImage> get copyWith =>
      __$$_ProfileImageCopyWithImpl<_$_ProfileImage>(this, _$identity);
}

abstract class _ProfileImage implements ProfileImage {
  const factory _ProfileImage(final ImageProvider<Object> image) =
      _$_ProfileImage;

  @override
  ImageProvider<Object> get image;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileImageCopyWith<_$_ProfileImage> get copyWith =>
      throw _privateConstructorUsedError;
}
