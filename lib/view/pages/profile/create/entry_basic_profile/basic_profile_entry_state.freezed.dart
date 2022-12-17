// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_profile_entry_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BasicProfileEntryState {
  String get name => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get adress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BasicProfileEntryStateCopyWith<BasicProfileEntryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicProfileEntryStateCopyWith<$Res> {
  factory $BasicProfileEntryStateCopyWith(BasicProfileEntryState value,
          $Res Function(BasicProfileEntryState) then) =
      _$BasicProfileEntryStateCopyWithImpl<$Res, BasicProfileEntryState>;
  @useResult
  $Res call({String name, String gender, String adress});
}

/// @nodoc
class _$BasicProfileEntryStateCopyWithImpl<$Res,
        $Val extends BasicProfileEntryState>
    implements $BasicProfileEntryStateCopyWith<$Res> {
  _$BasicProfileEntryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? gender = null,
    Object? adress = null,
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
      adress: null == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BasicProfileEntryStateCopyWith<$Res>
    implements $BasicProfileEntryStateCopyWith<$Res> {
  factory _$$_BasicProfileEntryStateCopyWith(_$_BasicProfileEntryState value,
          $Res Function(_$_BasicProfileEntryState) then) =
      __$$_BasicProfileEntryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String gender, String adress});
}

/// @nodoc
class __$$_BasicProfileEntryStateCopyWithImpl<$Res>
    extends _$BasicProfileEntryStateCopyWithImpl<$Res,
        _$_BasicProfileEntryState>
    implements _$$_BasicProfileEntryStateCopyWith<$Res> {
  __$$_BasicProfileEntryStateCopyWithImpl(_$_BasicProfileEntryState _value,
      $Res Function(_$_BasicProfileEntryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? gender = null,
    Object? adress = null,
  }) {
    return _then(_$_BasicProfileEntryState(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      adress: null == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BasicProfileEntryState implements _BasicProfileEntryState {
  const _$_BasicProfileEntryState(
      {this.name = "", this.gender = "未選択", this.adress = "東京都"});

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String gender;
  @override
  @JsonKey()
  final String adress;

  @override
  String toString() {
    return 'BasicProfileEntryState(name: $name, gender: $gender, adress: $adress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BasicProfileEntryState &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.adress, adress) || other.adress == adress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, gender, adress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BasicProfileEntryStateCopyWith<_$_BasicProfileEntryState> get copyWith =>
      __$$_BasicProfileEntryStateCopyWithImpl<_$_BasicProfileEntryState>(
          this, _$identity);
}

abstract class _BasicProfileEntryState implements BasicProfileEntryState {
  const factory _BasicProfileEntryState(
      {final String name,
      final String gender,
      final String adress}) = _$_BasicProfileEntryState;

  @override
  String get name;
  @override
  String get gender;
  @override
  String get adress;
  @override
  @JsonKey(ignore: true)
  _$$_BasicProfileEntryStateCopyWith<_$_BasicProfileEntryState> get copyWith =>
      throw _privateConstructorUsedError;
}
