// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountState {
  String get icon => throw _privateConstructorUsedError;
  int get recruitmentNum => throw _privateConstructorUsedError;
  int get totalRecruitmentNum => throw _privateConstructorUsedError;
  int get participationNum => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountStateCopyWith<AccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res, AccountState>;
  @useResult
  $Res call(
      {String icon,
      int recruitmentNum,
      int totalRecruitmentNum,
      int participationNum,
      int likes});
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res, $Val extends AccountState>
    implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? recruitmentNum = null,
    Object? totalRecruitmentNum = null,
    Object? participationNum = null,
    Object? likes = null,
  }) {
    return _then(_value.copyWith(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      recruitmentNum: null == recruitmentNum
          ? _value.recruitmentNum
          : recruitmentNum // ignore: cast_nullable_to_non_nullable
              as int,
      totalRecruitmentNum: null == totalRecruitmentNum
          ? _value.totalRecruitmentNum
          : totalRecruitmentNum // ignore: cast_nullable_to_non_nullable
              as int,
      participationNum: null == participationNum
          ? _value.participationNum
          : participationNum // ignore: cast_nullable_to_non_nullable
              as int,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountStateCopyWith<$Res>
    implements $AccountStateCopyWith<$Res> {
  factory _$$_AccountStateCopyWith(
          _$_AccountState value, $Res Function(_$_AccountState) then) =
      __$$_AccountStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String icon,
      int recruitmentNum,
      int totalRecruitmentNum,
      int participationNum,
      int likes});
}

/// @nodoc
class __$$_AccountStateCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$_AccountState>
    implements _$$_AccountStateCopyWith<$Res> {
  __$$_AccountStateCopyWithImpl(
      _$_AccountState _value, $Res Function(_$_AccountState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? recruitmentNum = null,
    Object? totalRecruitmentNum = null,
    Object? participationNum = null,
    Object? likes = null,
  }) {
    return _then(_$_AccountState(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      recruitmentNum: null == recruitmentNum
          ? _value.recruitmentNum
          : recruitmentNum // ignore: cast_nullable_to_non_nullable
              as int,
      totalRecruitmentNum: null == totalRecruitmentNum
          ? _value.totalRecruitmentNum
          : totalRecruitmentNum // ignore: cast_nullable_to_non_nullable
              as int,
      participationNum: null == participationNum
          ? _value.participationNum
          : participationNum // ignore: cast_nullable_to_non_nullable
              as int,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AccountState implements _AccountState {
  const _$_AccountState(
      {this.icon = "",
      this.recruitmentNum = 5,
      this.totalRecruitmentNum = 15,
      this.participationNum = 15,
      this.likes = 15});

  @override
  @JsonKey()
  final String icon;
  @override
  @JsonKey()
  final int recruitmentNum;
  @override
  @JsonKey()
  final int totalRecruitmentNum;
  @override
  @JsonKey()
  final int participationNum;
  @override
  @JsonKey()
  final int likes;

  @override
  String toString() {
    return 'AccountState(icon: $icon, recruitmentNum: $recruitmentNum, totalRecruitmentNum: $totalRecruitmentNum, participationNum: $participationNum, likes: $likes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountState &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.recruitmentNum, recruitmentNum) ||
                other.recruitmentNum == recruitmentNum) &&
            (identical(other.totalRecruitmentNum, totalRecruitmentNum) ||
                other.totalRecruitmentNum == totalRecruitmentNum) &&
            (identical(other.participationNum, participationNum) ||
                other.participationNum == participationNum) &&
            (identical(other.likes, likes) || other.likes == likes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, icon, recruitmentNum,
      totalRecruitmentNum, participationNum, likes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountStateCopyWith<_$_AccountState> get copyWith =>
      __$$_AccountStateCopyWithImpl<_$_AccountState>(this, _$identity);
}

abstract class _AccountState implements AccountState {
  const factory _AccountState(
      {final String icon,
      final int recruitmentNum,
      final int totalRecruitmentNum,
      final int participationNum,
      final int likes}) = _$_AccountState;

  @override
  String get icon;
  @override
  int get recruitmentNum;
  @override
  int get totalRecruitmentNum;
  @override
  int get participationNum;
  @override
  int get likes;
  @override
  @JsonKey(ignore: true)
  _$$_AccountStateCopyWith<_$_AccountState> get copyWith =>
      throw _privateConstructorUsedError;
}
