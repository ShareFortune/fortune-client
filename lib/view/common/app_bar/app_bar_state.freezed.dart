// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_bar_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FortuneAppBarState {
  String get myIcon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FortuneAppBarStateCopyWith<FortuneAppBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FortuneAppBarStateCopyWith<$Res> {
  factory $FortuneAppBarStateCopyWith(
          FortuneAppBarState value, $Res Function(FortuneAppBarState) then) =
      _$FortuneAppBarStateCopyWithImpl<$Res, FortuneAppBarState>;
  @useResult
  $Res call({String myIcon});
}

/// @nodoc
class _$FortuneAppBarStateCopyWithImpl<$Res, $Val extends FortuneAppBarState>
    implements $FortuneAppBarStateCopyWith<$Res> {
  _$FortuneAppBarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myIcon = null,
  }) {
    return _then(_value.copyWith(
      myIcon: null == myIcon
          ? _value.myIcon
          : myIcon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FortuneAppBarStateCopyWith<$Res>
    implements $FortuneAppBarStateCopyWith<$Res> {
  factory _$$_FortuneAppBarStateCopyWith(_$_FortuneAppBarState value,
          $Res Function(_$_FortuneAppBarState) then) =
      __$$_FortuneAppBarStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String myIcon});
}

/// @nodoc
class __$$_FortuneAppBarStateCopyWithImpl<$Res>
    extends _$FortuneAppBarStateCopyWithImpl<$Res, _$_FortuneAppBarState>
    implements _$$_FortuneAppBarStateCopyWith<$Res> {
  __$$_FortuneAppBarStateCopyWithImpl(
      _$_FortuneAppBarState _value, $Res Function(_$_FortuneAppBarState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myIcon = null,
  }) {
    return _then(_$_FortuneAppBarState(
      myIcon: null == myIcon
          ? _value.myIcon
          : myIcon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FortuneAppBarState implements _FortuneAppBarState {
  const _$_FortuneAppBarState({required this.myIcon});

  @override
  final String myIcon;

  @override
  String toString() {
    return 'FortuneAppBarState(myIcon: $myIcon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FortuneAppBarState &&
            (identical(other.myIcon, myIcon) || other.myIcon == myIcon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, myIcon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FortuneAppBarStateCopyWith<_$_FortuneAppBarState> get copyWith =>
      __$$_FortuneAppBarStateCopyWithImpl<_$_FortuneAppBarState>(
          this, _$identity);
}

abstract class _FortuneAppBarState implements FortuneAppBarState {
  const factory _FortuneAppBarState({required final String myIcon}) =
      _$_FortuneAppBarState;

  @override
  String get myIcon;
  @override
  @JsonKey(ignore: true)
  _$$_FortuneAppBarStateCopyWith<_$_FortuneAppBarState> get copyWith =>
      throw _privateConstructorUsedError;
}
