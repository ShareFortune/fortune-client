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
  String? get title => throw _privateConstructorUsedError;
  List<Tag>? get tags => throw _privateConstructorUsedError;
  AddressWithId? get addressWithId => throw _privateConstructorUsedError;
  int? get membersNum => throw _privateConstructorUsedError;
  AgeGroup? get ageGroup => throw _privateConstructorUsedError;
  String? get explanation => throw _privateConstructorUsedError;

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
      {String? title,
      List<Tag>? tags,
      AddressWithId? addressWithId,
      int? membersNum,
      AgeGroup? ageGroup,
      String? explanation});

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
    Object? title = freezed,
    Object? tags = freezed,
    Object? addressWithId = freezed,
    Object? membersNum = freezed,
    Object? ageGroup = freezed,
    Object? explanation = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
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
      explanation: freezed == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {String? title,
      List<Tag>? tags,
      AddressWithId? addressWithId,
      int? membersNum,
      AgeGroup? ageGroup,
      String? explanation});

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
    Object? title = freezed,
    Object? tags = freezed,
    Object? addressWithId = freezed,
    Object? membersNum = freezed,
    Object? ageGroup = freezed,
    Object? explanation = freezed,
  }) {
    return _then(_$_EditRoomState(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
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
      explanation: freezed == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_EditRoomState implements _EditRoomState {
  const _$_EditRoomState(
      {this.title,
      final List<Tag>? tags,
      this.addressWithId,
      this.membersNum,
      this.ageGroup,
      this.explanation})
      : _tags = tags;

  @override
  final String? title;
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
  final String? explanation;

  @override
  String toString() {
    return 'EditRoomState(title: $title, tags: $tags, addressWithId: $addressWithId, membersNum: $membersNum, ageGroup: $ageGroup, explanation: $explanation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditRoomState &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.addressWithId, addressWithId) ||
                other.addressWithId == addressWithId) &&
            (identical(other.membersNum, membersNum) ||
                other.membersNum == membersNum) &&
            (identical(other.ageGroup, ageGroup) ||
                other.ageGroup == ageGroup) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      const DeepCollectionEquality().hash(_tags),
      addressWithId,
      membersNum,
      ageGroup,
      explanation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditRoomStateCopyWith<_$_EditRoomState> get copyWith =>
      __$$_EditRoomStateCopyWithImpl<_$_EditRoomState>(this, _$identity);
}

abstract class _EditRoomState implements EditRoomState {
  const factory _EditRoomState(
      {final String? title,
      final List<Tag>? tags,
      final AddressWithId? addressWithId,
      final int? membersNum,
      final AgeGroup? ageGroup,
      final String? explanation}) = _$_EditRoomState;

  @override
  String? get title;
  @override
  List<Tag>? get tags;
  @override
  AddressWithId? get addressWithId;
  @override
  int? get membersNum;
  @override
  AgeGroup? get ageGroup;
  @override
  String? get explanation;
  @override
  @JsonKey(ignore: true)
  _$$_EditRoomStateCopyWith<_$_EditRoomState> get copyWith =>
      throw _privateConstructorUsedError;
}
