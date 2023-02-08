// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_profile_images_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditProfileImagesState {
  List<EditProfileImagesStateItem> get images =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditProfileImagesStateCopyWith<EditProfileImagesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileImagesStateCopyWith<$Res> {
  factory $EditProfileImagesStateCopyWith(EditProfileImagesState value,
          $Res Function(EditProfileImagesState) then) =
      _$EditProfileImagesStateCopyWithImpl<$Res, EditProfileImagesState>;
  @useResult
  $Res call({List<EditProfileImagesStateItem> images});
}

/// @nodoc
class _$EditProfileImagesStateCopyWithImpl<$Res,
        $Val extends EditProfileImagesState>
    implements $EditProfileImagesStateCopyWith<$Res> {
  _$EditProfileImagesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<EditProfileImagesStateItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EditProfileImagesStateCopyWith<$Res>
    implements $EditProfileImagesStateCopyWith<$Res> {
  factory _$$_EditProfileImagesStateCopyWith(_$_EditProfileImagesState value,
          $Res Function(_$_EditProfileImagesState) then) =
      __$$_EditProfileImagesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EditProfileImagesStateItem> images});
}

/// @nodoc
class __$$_EditProfileImagesStateCopyWithImpl<$Res>
    extends _$EditProfileImagesStateCopyWithImpl<$Res,
        _$_EditProfileImagesState>
    implements _$$_EditProfileImagesStateCopyWith<$Res> {
  __$$_EditProfileImagesStateCopyWithImpl(_$_EditProfileImagesState _value,
      $Res Function(_$_EditProfileImagesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
  }) {
    return _then(_$_EditProfileImagesState(
      null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<EditProfileImagesStateItem>,
    ));
  }
}

/// @nodoc

class _$_EditProfileImagesState extends _EditProfileImagesState {
  const _$_EditProfileImagesState(final List<EditProfileImagesStateItem> images)
      : _images = images,
        super._();

  final List<EditProfileImagesStateItem> _images;
  @override
  List<EditProfileImagesStateItem> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'EditProfileImagesState(images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditProfileImagesState &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditProfileImagesStateCopyWith<_$_EditProfileImagesState> get copyWith =>
      __$$_EditProfileImagesStateCopyWithImpl<_$_EditProfileImagesState>(
          this, _$identity);
}

abstract class _EditProfileImagesState extends EditProfileImagesState {
  const factory _EditProfileImagesState(
          final List<EditProfileImagesStateItem> images) =
      _$_EditProfileImagesState;
  const _EditProfileImagesState._() : super._();

  @override
  List<EditProfileImagesStateItem> get images;
  @override
  @JsonKey(ignore: true)
  _$$_EditProfileImagesStateCopyWith<_$_EditProfileImagesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EditProfileImagesStateItem {
  ProfileImagesType get type => throw _privateConstructorUsedError;

  /// 削除したか
  bool get isDeleted => throw _privateConstructorUsedError;

  /// 更新前
  String? get imageUrl => throw _privateConstructorUsedError;

  /// 更新後
  File? get updateFile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditProfileImagesStateItemCopyWith<EditProfileImagesStateItem>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileImagesStateItemCopyWith<$Res> {
  factory $EditProfileImagesStateItemCopyWith(EditProfileImagesStateItem value,
          $Res Function(EditProfileImagesStateItem) then) =
      _$EditProfileImagesStateItemCopyWithImpl<$Res,
          EditProfileImagesStateItem>;
  @useResult
  $Res call(
      {ProfileImagesType type,
      bool isDeleted,
      String? imageUrl,
      File? updateFile});
}

/// @nodoc
class _$EditProfileImagesStateItemCopyWithImpl<$Res,
        $Val extends EditProfileImagesStateItem>
    implements $EditProfileImagesStateItemCopyWith<$Res> {
  _$EditProfileImagesStateItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? isDeleted = null,
    Object? imageUrl = freezed,
    Object? updateFile = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProfileImagesType,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      updateFile: freezed == updateFile
          ? _value.updateFile
          : updateFile // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EditProfileImagesStateItemCopyWith<$Res>
    implements $EditProfileImagesStateItemCopyWith<$Res> {
  factory _$$_EditProfileImagesStateItemCopyWith(
          _$_EditProfileImagesStateItem value,
          $Res Function(_$_EditProfileImagesStateItem) then) =
      __$$_EditProfileImagesStateItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProfileImagesType type,
      bool isDeleted,
      String? imageUrl,
      File? updateFile});
}

/// @nodoc
class __$$_EditProfileImagesStateItemCopyWithImpl<$Res>
    extends _$EditProfileImagesStateItemCopyWithImpl<$Res,
        _$_EditProfileImagesStateItem>
    implements _$$_EditProfileImagesStateItemCopyWith<$Res> {
  __$$_EditProfileImagesStateItemCopyWithImpl(
      _$_EditProfileImagesStateItem _value,
      $Res Function(_$_EditProfileImagesStateItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? isDeleted = null,
    Object? imageUrl = freezed,
    Object? updateFile = freezed,
  }) {
    return _then(_$_EditProfileImagesStateItem(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProfileImagesType,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      updateFile: freezed == updateFile
          ? _value.updateFile
          : updateFile // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$_EditProfileImagesStateItem extends _EditProfileImagesStateItem {
  const _$_EditProfileImagesStateItem(
      {required this.type,
      this.isDeleted = false,
      this.imageUrl,
      this.updateFile})
      : super._();

  @override
  final ProfileImagesType type;

  /// 削除したか
  @override
  @JsonKey()
  final bool isDeleted;

  /// 更新前
  @override
  final String? imageUrl;

  /// 更新後
  @override
  final File? updateFile;

  @override
  String toString() {
    return 'EditProfileImagesStateItem(type: $type, isDeleted: $isDeleted, imageUrl: $imageUrl, updateFile: $updateFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditProfileImagesStateItem &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.updateFile, updateFile) ||
                other.updateFile == updateFile));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, type, isDeleted, imageUrl, updateFile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditProfileImagesStateItemCopyWith<_$_EditProfileImagesStateItem>
      get copyWith => __$$_EditProfileImagesStateItemCopyWithImpl<
          _$_EditProfileImagesStateItem>(this, _$identity);
}

abstract class _EditProfileImagesStateItem extends EditProfileImagesStateItem {
  const factory _EditProfileImagesStateItem(
      {required final ProfileImagesType type,
      final bool isDeleted,
      final String? imageUrl,
      final File? updateFile}) = _$_EditProfileImagesStateItem;
  const _EditProfileImagesStateItem._() : super._();

  @override
  ProfileImagesType get type;
  @override

  /// 削除したか
  bool get isDeleted;
  @override

  /// 更新前
  String? get imageUrl;
  @override

  /// 更新後
  File? get updateFile;
  @override
  @JsonKey(ignore: true)
  _$$_EditProfileImagesStateItemCopyWith<_$_EditProfileImagesStateItem>
      get copyWith => throw _privateConstructorUsedError;
}
