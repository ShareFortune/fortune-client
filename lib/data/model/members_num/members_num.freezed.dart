// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'members_num.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MembersNum _$MembersNumFromJson(Map<String, dynamic> json) {
  return _MembersNum.fromJson(json);
}

/// @nodoc
mixin _$MembersNum {
  @JsonKey(name: "maxMenNum")
  int get maxMenNum => throw _privateConstructorUsedError;
  @JsonKey(name: "menNum")
  int get menNum => throw _privateConstructorUsedError;
  @JsonKey(name: "maxWomenNum")
  int get maxWomenNum => throw _privateConstructorUsedError;
  @JsonKey(name: "womenNum")
  int get womenNum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MembersNumCopyWith<MembersNum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MembersNumCopyWith<$Res> {
  factory $MembersNumCopyWith(
          MembersNum value, $Res Function(MembersNum) then) =
      _$MembersNumCopyWithImpl<$Res, MembersNum>;
  @useResult
  $Res call(
      {@JsonKey(name: "maxMenNum") int maxMenNum,
      @JsonKey(name: "menNum") int menNum,
      @JsonKey(name: "maxWomenNum") int maxWomenNum,
      @JsonKey(name: "womenNum") int womenNum});
}

/// @nodoc
class _$MembersNumCopyWithImpl<$Res, $Val extends MembersNum>
    implements $MembersNumCopyWith<$Res> {
  _$MembersNumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxMenNum = null,
    Object? menNum = null,
    Object? maxWomenNum = null,
    Object? womenNum = null,
  }) {
    return _then(_value.copyWith(
      maxMenNum: null == maxMenNum
          ? _value.maxMenNum
          : maxMenNum // ignore: cast_nullable_to_non_nullable
              as int,
      menNum: null == menNum
          ? _value.menNum
          : menNum // ignore: cast_nullable_to_non_nullable
              as int,
      maxWomenNum: null == maxWomenNum
          ? _value.maxWomenNum
          : maxWomenNum // ignore: cast_nullable_to_non_nullable
              as int,
      womenNum: null == womenNum
          ? _value.womenNum
          : womenNum // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MembersNumCopyWith<$Res>
    implements $MembersNumCopyWith<$Res> {
  factory _$$_MembersNumCopyWith(
          _$_MembersNum value, $Res Function(_$_MembersNum) then) =
      __$$_MembersNumCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "maxMenNum") int maxMenNum,
      @JsonKey(name: "menNum") int menNum,
      @JsonKey(name: "maxWomenNum") int maxWomenNum,
      @JsonKey(name: "womenNum") int womenNum});
}

/// @nodoc
class __$$_MembersNumCopyWithImpl<$Res>
    extends _$MembersNumCopyWithImpl<$Res, _$_MembersNum>
    implements _$$_MembersNumCopyWith<$Res> {
  __$$_MembersNumCopyWithImpl(
      _$_MembersNum _value, $Res Function(_$_MembersNum) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxMenNum = null,
    Object? menNum = null,
    Object? maxWomenNum = null,
    Object? womenNum = null,
  }) {
    return _then(_$_MembersNum(
      maxMenNum: null == maxMenNum
          ? _value.maxMenNum
          : maxMenNum // ignore: cast_nullable_to_non_nullable
              as int,
      menNum: null == menNum
          ? _value.menNum
          : menNum // ignore: cast_nullable_to_non_nullable
              as int,
      maxWomenNum: null == maxWomenNum
          ? _value.maxWomenNum
          : maxWomenNum // ignore: cast_nullable_to_non_nullable
              as int,
      womenNum: null == womenNum
          ? _value.womenNum
          : womenNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MembersNum implements _MembersNum {
  _$_MembersNum(
      {@JsonKey(name: "maxMenNum") required this.maxMenNum,
      @JsonKey(name: "menNum") required this.menNum,
      @JsonKey(name: "maxWomenNum") required this.maxWomenNum,
      @JsonKey(name: "womenNum") required this.womenNum});

  factory _$_MembersNum.fromJson(Map<String, dynamic> json) =>
      _$$_MembersNumFromJson(json);

  @override
  @JsonKey(name: "maxMenNum")
  final int maxMenNum;
  @override
  @JsonKey(name: "menNum")
  final int menNum;
  @override
  @JsonKey(name: "maxWomenNum")
  final int maxWomenNum;
  @override
  @JsonKey(name: "womenNum")
  final int womenNum;

  @override
  String toString() {
    return 'MembersNum(maxMenNum: $maxMenNum, menNum: $menNum, maxWomenNum: $maxWomenNum, womenNum: $womenNum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MembersNum &&
            (identical(other.maxMenNum, maxMenNum) ||
                other.maxMenNum == maxMenNum) &&
            (identical(other.menNum, menNum) || other.menNum == menNum) &&
            (identical(other.maxWomenNum, maxWomenNum) ||
                other.maxWomenNum == maxWomenNum) &&
            (identical(other.womenNum, womenNum) ||
                other.womenNum == womenNum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, maxMenNum, menNum, maxWomenNum, womenNum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MembersNumCopyWith<_$_MembersNum> get copyWith =>
      __$$_MembersNumCopyWithImpl<_$_MembersNum>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MembersNumToJson(
      this,
    );
  }
}

abstract class _MembersNum implements MembersNum {
  factory _MembersNum(
      {@JsonKey(name: "maxMenNum") required final int maxMenNum,
      @JsonKey(name: "menNum") required final int menNum,
      @JsonKey(name: "maxWomenNum") required final int maxWomenNum,
      @JsonKey(name: "womenNum") required final int womenNum}) = _$_MembersNum;

  factory _MembersNum.fromJson(Map<String, dynamic> json) =
      _$_MembersNum.fromJson;

  @override
  @JsonKey(name: "maxMenNum")
  int get maxMenNum;
  @override
  @JsonKey(name: "menNum")
  int get menNum;
  @override
  @JsonKey(name: "maxWomenNum")
  int get maxWomenNum;
  @override
  @JsonKey(name: "womenNum")
  int get womenNum;
  @override
  @JsonKey(ignore: true)
  _$$_MembersNumCopyWith<_$_MembersNum> get copyWith =>
      throw _privateConstructorUsedError;
}
