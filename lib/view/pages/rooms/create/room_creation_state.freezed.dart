// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_creation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoomCreationState {
  String? get title => throw _privateConstructorUsedError;
  List<Tag>? get tags => throw _privateConstructorUsedError;
  Address? get address => throw _privateConstructorUsedError;
  int? get membersNum => throw _privateConstructorUsedError;
  AgeGroup? get ageGroup => throw _privateConstructorUsedError;
  String? get explanation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomCreationStateCopyWith<RoomCreationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomCreationStateCopyWith<$Res> {
  factory $RoomCreationStateCopyWith(
          RoomCreationState value, $Res Function(RoomCreationState) then) =
      _$RoomCreationStateCopyWithImpl<$Res, RoomCreationState>;
  @useResult
  $Res call(
      {String? title,
      List<Tag>? tags,
      Address? address,
      int? membersNum,
      AgeGroup? ageGroup,
      String? explanation});

  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class _$RoomCreationStateCopyWithImpl<$Res, $Val extends RoomCreationState>
    implements $RoomCreationStateCopyWith<$Res> {
  _$RoomCreationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? tags = freezed,
    Object? address = freezed,
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
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
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
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RoomCreationStateCopyWith<$Res>
    implements $RoomCreationStateCopyWith<$Res> {
  factory _$$_RoomCreationStateCopyWith(_$_RoomCreationState value,
          $Res Function(_$_RoomCreationState) then) =
      __$$_RoomCreationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      List<Tag>? tags,
      Address? address,
      int? membersNum,
      AgeGroup? ageGroup,
      String? explanation});

  @override
  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class __$$_RoomCreationStateCopyWithImpl<$Res>
    extends _$RoomCreationStateCopyWithImpl<$Res, _$_RoomCreationState>
    implements _$$_RoomCreationStateCopyWith<$Res> {
  __$$_RoomCreationStateCopyWithImpl(
      _$_RoomCreationState _value, $Res Function(_$_RoomCreationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? tags = freezed,
    Object? address = freezed,
    Object? membersNum = freezed,
    Object? ageGroup = freezed,
    Object? explanation = freezed,
  }) {
    return _then(_$_RoomCreationState(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
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

class _$_RoomCreationState implements _RoomCreationState {
  const _$_RoomCreationState(
      {this.title,
      final List<Tag>? tags,
      this.address,
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
  final Address? address;
  @override
  final int? membersNum;
  @override
  final AgeGroup? ageGroup;
  @override
  final String? explanation;

  @override
  String toString() {
    return 'RoomCreationState(title: $title, tags: $tags, address: $address, membersNum: $membersNum, ageGroup: $ageGroup, explanation: $explanation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomCreationState &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.address, address) || other.address == address) &&
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
      address,
      membersNum,
      ageGroup,
      explanation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomCreationStateCopyWith<_$_RoomCreationState> get copyWith =>
      __$$_RoomCreationStateCopyWithImpl<_$_RoomCreationState>(
          this, _$identity);
}

abstract class _RoomCreationState implements RoomCreationState {
  const factory _RoomCreationState(
      {final String? title,
      final List<Tag>? tags,
      final Address? address,
      final int? membersNum,
      final AgeGroup? ageGroup,
      final String? explanation}) = _$_RoomCreationState;

  @override
  String? get title;
  @override
  List<Tag>? get tags;
  @override
  Address? get address;
  @override
  int? get membersNum;
  @override
  AgeGroup? get ageGroup;
  @override
  String? get explanation;
  @override
  @JsonKey(ignore: true)
  _$$_RoomCreationStateCopyWith<_$_RoomCreationState> get copyWith =>
      throw _privateConstructorUsedError;
}
