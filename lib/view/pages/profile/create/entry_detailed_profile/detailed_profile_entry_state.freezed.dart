// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_profile_entry_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailedProfileEntryState {
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailedProfileEntryStateCopyWith<DetailedProfileEntryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedProfileEntryStateCopyWith<$Res> {
  factory $DetailedProfileEntryStateCopyWith(DetailedProfileEntryState value,
          $Res Function(DetailedProfileEntryState) then) =
      _$DetailedProfileEntryStateCopyWithImpl<$Res, DetailedProfileEntryState>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$DetailedProfileEntryStateCopyWithImpl<$Res,
        $Val extends DetailedProfileEntryState>
    implements $DetailedProfileEntryStateCopyWith<$Res> {
  _$DetailedProfileEntryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DetailedProfileEntryStateCopyWith<$Res>
    implements $DetailedProfileEntryStateCopyWith<$Res> {
  factory _$$_DetailedProfileEntryStateCopyWith(
          _$_DetailedProfileEntryState value,
          $Res Function(_$_DetailedProfileEntryState) then) =
      __$$_DetailedProfileEntryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_DetailedProfileEntryStateCopyWithImpl<$Res>
    extends _$DetailedProfileEntryStateCopyWithImpl<$Res,
        _$_DetailedProfileEntryState>
    implements _$$_DetailedProfileEntryStateCopyWith<$Res> {
  __$$_DetailedProfileEntryStateCopyWithImpl(
      _$_DetailedProfileEntryState _value,
      $Res Function(_$_DetailedProfileEntryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_DetailedProfileEntryState(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DetailedProfileEntryState extends _DetailedProfileEntryState {
  const _$_DetailedProfileEntryState({this.name = ""}) : super._();

  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'DetailedProfileEntryState(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailedProfileEntryState &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailedProfileEntryStateCopyWith<_$_DetailedProfileEntryState>
      get copyWith => __$$_DetailedProfileEntryStateCopyWithImpl<
          _$_DetailedProfileEntryState>(this, _$identity);
}

abstract class _DetailedProfileEntryState extends DetailedProfileEntryState {
  const factory _DetailedProfileEntryState({final String name}) =
      _$_DetailedProfileEntryState;
  const _DetailedProfileEntryState._() : super._();

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_DetailedProfileEntryStateCopyWith<_$_DetailedProfileEntryState>
      get copyWith => throw _privateConstructorUsedError;
}
