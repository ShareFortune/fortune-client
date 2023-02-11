// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_room_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditRoomState {
  List<Tag>? get tags => throw _privateConstructorUsedError;
  AddressWithId? get addressWithId => throw _privateConstructorUsedError;
  int? get membersNum => throw _privateConstructorUsedError;
  AgeGroup? get ageGroup => throw _privateConstructorUsedError;
  TextEditingController get titleController =>
      throw _privateConstructorUsedError;
  TextEditingController get explanationController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditRoomStateCopyWith<EditRoomState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditRoomStateCopyWith<$Res> {
  factory $EditRoomStateCopyWith(
          EditRoomState value, $Res Function(EditRoomState) then) =
      _$EditRoomStateCopyWithImpl<$Res, EditRoomState>;
  @useResult
  $Res call(
      {List<Tag>? tags,
      AddressWithId? addressWithId,
      int? membersNum,
      AgeGroup? ageGroup,
      TextEditingController titleController,
      TextEditingController explanationController});

  $AddressWithIdCopyWith<$Res>? get addressWithId;
}

/// @nodoc
class _$EditRoomStateCopyWithImpl<$Res, $Val extends EditRoomState>
    implements $EditRoomStateCopyWith<$Res> {
  _$EditRoomStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = freezed,
    Object? addressWithId = freezed,
    Object? membersNum = freezed,
    Object? ageGroup = freezed,
    Object? titleController = null,
    Object? explanationController = null,
  }) {
    return _then(_value.copyWith(
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      addressWithId: freezed == addressWithId
          ? _value.addressWithId
          : addressWithId // ignore: cast_nullable_to_non_nullable
              as AddressWithId?,
      membersNum: freezed == membersNum
          ? _value.membersNum
          : membersNum // ignore: cast_nullable_to_non_nullable
              as int?,
      ageGroup: freezed == ageGroup
          ? _value.ageGroup
          : ageGroup // ignore: cast_nullable_to_non_nullable
              as AgeGroup?,
      titleController: null == titleController
          ? _value.titleController
          : titleController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      explanationController: null == explanationController
          ? _value.explanationController
          : explanationController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressWithIdCopyWith<$Res>? get addressWithId {
    if (_value.addressWithId == null) {
      return null;
    }

    return $AddressWithIdCopyWith<$Res>(_value.addressWithId!, (value) {
      return _then(_value.copyWith(addressWithId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EditRoomStateCopyWith<$Res>
    implements $EditRoomStateCopyWith<$Res> {
  factory _$$_EditRoomStateCopyWith(
          _$_EditRoomState value, $Res Function(_$_EditRoomState) then) =
      __$$_EditRoomStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Tag>? tags,
      AddressWithId? addressWithId,
      int? membersNum,
      AgeGroup? ageGroup,
      TextEditingController titleController,
      TextEditingController explanationController});

  @override
  $AddressWithIdCopyWith<$Res>? get addressWithId;
}

/// @nodoc
class __$$_EditRoomStateCopyWithImpl<$Res>
    extends _$EditRoomStateCopyWithImpl<$Res, _$_EditRoomState>
    implements _$$_EditRoomStateCopyWith<$Res> {
  __$$_EditRoomStateCopyWithImpl(
      _$_EditRoomState _value, $Res Function(_$_EditRoomState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = freezed,
    Object? addressWithId = freezed,
    Object? membersNum = freezed,
    Object? ageGroup = freezed,
    Object? titleController = null,
    Object? explanationController = null,
  }) {
    return _then(_$_EditRoomState(
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      addressWithId: freezed == addressWithId
          ? _value.addressWithId
          : addressWithId // ignore: cast_nullable_to_non_nullable
              as AddressWithId?,
      membersNum: freezed == membersNum
          ? _value.membersNum
          : membersNum // ignore: cast_nullable_to_non_nullable
              as int?,
      ageGroup: freezed == ageGroup
          ? _value.ageGroup
          : ageGroup // ignore: cast_nullable_to_non_nullable
              as AgeGroup?,
      titleController: null == titleController
          ? _value.titleController
          : titleController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      explanationController: null == explanationController
          ? _value.explanationController
          : explanationController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$_EditRoomState implements _EditRoomState {
  const _$_EditRoomState(
      {final List<Tag>? tags,
      this.addressWithId,
      this.membersNum,
      this.ageGroup,
      required this.titleController,
      required this.explanationController})
      : _tags = tags;

  final List<Tag>? _tags;
  @override
  List<Tag>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final AddressWithId? addressWithId;
  @override
  final int? membersNum;
  @override
  final AgeGroup? ageGroup;
  @override
  final TextEditingController titleController;
  @override
  final TextEditingController explanationController;

  @override
  String toString() {
    return 'EditRoomState(tags: $tags, addressWithId: $addressWithId, membersNum: $membersNum, ageGroup: $ageGroup, titleController: $titleController, explanationController: $explanationController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditRoomState &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.addressWithId, addressWithId) ||
                other.addressWithId == addressWithId) &&
            (identical(other.membersNum, membersNum) ||
                other.membersNum == membersNum) &&
            (identical(other.ageGroup, ageGroup) ||
                other.ageGroup == ageGroup) &&
            (identical(other.titleController, titleController) ||
                other.titleController == titleController) &&
            (identical(other.explanationController, explanationController) ||
                other.explanationController == explanationController));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tags),
      addressWithId,
      membersNum,
      ageGroup,
      titleController,
      explanationController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditRoomStateCopyWith<_$_EditRoomState> get copyWith =>
      __$$_EditRoomStateCopyWithImpl<_$_EditRoomState>(this, _$identity);
}

abstract class _EditRoomState implements EditRoomState {
  const factory _EditRoomState(
          {final List<Tag>? tags,
          final AddressWithId? addressWithId,
          final int? membersNum,
          final AgeGroup? ageGroup,
          required final TextEditingController titleController,
          required final TextEditingController explanationController}) =
      _$_EditRoomState;

  @override
  List<Tag>? get tags;
  @override
  AddressWithId? get addressWithId;
  @override
  int? get membersNum;
  @override
  AgeGroup? get ageGroup;
  @override
  TextEditingController get titleController;
  @override
  TextEditingController get explanationController;
  @override
  @JsonKey(ignore: true)
  _$$_EditRoomStateCopyWith<_$_EditRoomState> get copyWith =>
      throw _privateConstructorUsedError;
}
