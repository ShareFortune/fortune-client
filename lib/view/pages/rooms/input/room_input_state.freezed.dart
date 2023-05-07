// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_input_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoomInputState {
  /// 部屋ID
  String? get id => throw _privateConstructorUsedError;

  /// 部屋名
  String? get title => throw _privateConstructorUsedError;

  /// 部屋の説明
  String? get explanation => throw _privateConstructorUsedError;

  /// 年齢層
  AgeGroup? get ageGroup => throw _privateConstructorUsedError;

  /// 人数
  int? get membersNum => throw _privateConstructorUsedError;

  /// タグ
  List<Tag>? get tags => throw _privateConstructorUsedError;

  /// 場所
  Address? get address => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomInputStateCopyWith<RoomInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomInputStateCopyWith<$Res> {
  factory $RoomInputStateCopyWith(
          RoomInputState value, $Res Function(RoomInputState) then) =
      _$RoomInputStateCopyWithImpl<$Res, RoomInputState>;
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? explanation,
      AgeGroup? ageGroup,
      int? membersNum,
      List<Tag>? tags,
      Address? address});

  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class _$RoomInputStateCopyWithImpl<$Res, $Val extends RoomInputState>
    implements $RoomInputStateCopyWith<$Res> {
  _$RoomInputStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? explanation = freezed,
    Object? ageGroup = freezed,
    Object? membersNum = freezed,
    Object? tags = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      explanation: freezed == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String?,
      ageGroup: freezed == ageGroup
          ? _value.ageGroup
          : ageGroup // ignore: cast_nullable_to_non_nullable
              as AgeGroup?,
      membersNum: freezed == membersNum
          ? _value.membersNum
          : membersNum // ignore: cast_nullable_to_non_nullable
              as int?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
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
abstract class _$$_RoomInputStateCopyWith<$Res>
    implements $RoomInputStateCopyWith<$Res> {
  factory _$$_RoomInputStateCopyWith(
          _$_RoomInputState value, $Res Function(_$_RoomInputState) then) =
      __$$_RoomInputStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? explanation,
      AgeGroup? ageGroup,
      int? membersNum,
      List<Tag>? tags,
      Address? address});

  @override
  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class __$$_RoomInputStateCopyWithImpl<$Res>
    extends _$RoomInputStateCopyWithImpl<$Res, _$_RoomInputState>
    implements _$$_RoomInputStateCopyWith<$Res> {
  __$$_RoomInputStateCopyWithImpl(
      _$_RoomInputState _value, $Res Function(_$_RoomInputState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? explanation = freezed,
    Object? ageGroup = freezed,
    Object? membersNum = freezed,
    Object? tags = freezed,
    Object? address = freezed,
  }) {
    return _then(_$_RoomInputState(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      explanation: freezed == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String?,
      ageGroup: freezed == ageGroup
          ? _value.ageGroup
          : ageGroup // ignore: cast_nullable_to_non_nullable
              as AgeGroup?,
      membersNum: freezed == membersNum
          ? _value.membersNum
          : membersNum // ignore: cast_nullable_to_non_nullable
              as int?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
    ));
  }
}

/// @nodoc

class _$_RoomInputState implements _RoomInputState {
  const _$_RoomInputState(
      {required this.id,
      required this.title,
      required this.explanation,
      required this.ageGroup,
      required this.membersNum,
      required final List<Tag>? tags,
      required this.address})
      : _tags = tags;

  /// 部屋ID
  @override
  final String? id;

  /// 部屋名
  @override
  final String? title;

  /// 部屋の説明
  @override
  final String? explanation;

  /// 年齢層
  @override
  final AgeGroup? ageGroup;

  /// 人数
  @override
  final int? membersNum;

  /// タグ
  final List<Tag>? _tags;

  /// タグ
  @override
  List<Tag>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// 場所
  @override
  final Address? address;

  @override
  String toString() {
    return 'RoomInputState(id: $id, title: $title, explanation: $explanation, ageGroup: $ageGroup, membersNum: $membersNum, tags: $tags, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomInputState &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation) &&
            (identical(other.ageGroup, ageGroup) ||
                other.ageGroup == ageGroup) &&
            (identical(other.membersNum, membersNum) ||
                other.membersNum == membersNum) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, explanation, ageGroup,
      membersNum, const DeepCollectionEquality().hash(_tags), address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomInputStateCopyWith<_$_RoomInputState> get copyWith =>
      __$$_RoomInputStateCopyWithImpl<_$_RoomInputState>(this, _$identity);
}

abstract class _RoomInputState implements RoomInputState {
  const factory _RoomInputState(
      {required final String? id,
      required final String? title,
      required final String? explanation,
      required final AgeGroup? ageGroup,
      required final int? membersNum,
      required final List<Tag>? tags,
      required final Address? address}) = _$_RoomInputState;

  @override

  /// 部屋ID
  String? get id;
  @override

  /// 部屋名
  String? get title;
  @override

  /// 部屋の説明
  String? get explanation;
  @override

  /// 年齢層
  AgeGroup? get ageGroup;
  @override

  /// 人数
  int? get membersNum;
  @override

  /// タグ
  List<Tag>? get tags;
  @override

  /// 場所
  Address? get address;
  @override
  @JsonKey(ignore: true)
  _$$_RoomInputStateCopyWith<_$_RoomInputState> get copyWith =>
      throw _privateConstructorUsedError;
}
