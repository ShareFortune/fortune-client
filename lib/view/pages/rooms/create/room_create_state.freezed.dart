// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_create_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoomCreateState {
  String get title => throw _privateConstructorUsedError;
  int get membersNum => throw _privateConstructorUsedError;
  String get ageGroup => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get explanation => throw _privateConstructorUsedError;
  String get tags => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomCreateStateCopyWith<RoomCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomCreateStateCopyWith<$Res> {
  factory $RoomCreateStateCopyWith(
          RoomCreateState value, $Res Function(RoomCreateState) then) =
      _$RoomCreateStateCopyWithImpl<$Res, RoomCreateState>;
  @useResult
  $Res call(
      {String title,
      int membersNum,
      String ageGroup,
      String address,
      String explanation,
      String tags});
}

/// @nodoc
class _$RoomCreateStateCopyWithImpl<$Res, $Val extends RoomCreateState>
    implements $RoomCreateStateCopyWith<$Res> {
  _$RoomCreateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? membersNum = null,
    Object? ageGroup = null,
    Object? address = null,
    Object? explanation = null,
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      membersNum: null == membersNum
          ? _value.membersNum
          : membersNum // ignore: cast_nullable_to_non_nullable
              as int,
      ageGroup: null == ageGroup
          ? _value.ageGroup
          : ageGroup // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoomCreateStateCopyWith<$Res>
    implements $RoomCreateStateCopyWith<$Res> {
  factory _$$_RoomCreateStateCopyWith(
          _$_RoomCreateState value, $Res Function(_$_RoomCreateState) then) =
      __$$_RoomCreateStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      int membersNum,
      String ageGroup,
      String address,
      String explanation,
      String tags});
}

/// @nodoc
class __$$_RoomCreateStateCopyWithImpl<$Res>
    extends _$RoomCreateStateCopyWithImpl<$Res, _$_RoomCreateState>
    implements _$$_RoomCreateStateCopyWith<$Res> {
  __$$_RoomCreateStateCopyWithImpl(
      _$_RoomCreateState _value, $Res Function(_$_RoomCreateState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? membersNum = null,
    Object? ageGroup = null,
    Object? address = null,
    Object? explanation = null,
    Object? tags = null,
  }) {
    return _then(_$_RoomCreateState(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      membersNum: null == membersNum
          ? _value.membersNum
          : membersNum // ignore: cast_nullable_to_non_nullable
              as int,
      ageGroup: null == ageGroup
          ? _value.ageGroup
          : ageGroup // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RoomCreateState implements _RoomCreateState {
  const _$_RoomCreateState(
      {this.title = "",
      this.membersNum = 4,
      this.ageGroup = "",
      this.address = "",
      this.explanation = "",
      this.tags = ""});

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final int membersNum;
  @override
  @JsonKey()
  final String ageGroup;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final String explanation;
  @override
  @JsonKey()
  final String tags;

  @override
  String toString() {
    return 'RoomCreateState(title: $title, membersNum: $membersNum, ageGroup: $ageGroup, address: $address, explanation: $explanation, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomCreateState &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.membersNum, membersNum) ||
                other.membersNum == membersNum) &&
            (identical(other.ageGroup, ageGroup) ||
                other.ageGroup == ageGroup) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation) &&
            (identical(other.tags, tags) || other.tags == tags));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, membersNum, ageGroup, address, explanation, tags);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomCreateStateCopyWith<_$_RoomCreateState> get copyWith =>
      __$$_RoomCreateStateCopyWithImpl<_$_RoomCreateState>(this, _$identity);
}

abstract class _RoomCreateState implements RoomCreateState {
  const factory _RoomCreateState(
      {final String title,
      final int membersNum,
      final String ageGroup,
      final String address,
      final String explanation,
      final String tags}) = _$_RoomCreateState;

  @override
  String get title;
  @override
  int get membersNum;
  @override
  String get ageGroup;
  @override
  String get address;
  @override
  String get explanation;
  @override
  String get tags;
  @override
  @JsonKey(ignore: true)
  _$$_RoomCreateStateCopyWith<_$_RoomCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}
