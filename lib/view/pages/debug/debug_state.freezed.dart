// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'debug_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DebugState {
  PackageInfo get debugInfo => throw _privateConstructorUsedError;
  bool get isAutomaticLogin => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DebugStateCopyWith<DebugState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DebugStateCopyWith<$Res> {
  factory $DebugStateCopyWith(
          DebugState value, $Res Function(DebugState) then) =
      _$DebugStateCopyWithImpl<$Res, DebugState>;
  @useResult
  $Res call({PackageInfo debugInfo, bool isAutomaticLogin});
}

/// @nodoc
class _$DebugStateCopyWithImpl<$Res, $Val extends DebugState>
    implements $DebugStateCopyWith<$Res> {
  _$DebugStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? debugInfo = null,
    Object? isAutomaticLogin = null,
  }) {
    return _then(_value.copyWith(
      debugInfo: null == debugInfo
          ? _value.debugInfo
          : debugInfo // ignore: cast_nullable_to_non_nullable
              as PackageInfo,
      isAutomaticLogin: null == isAutomaticLogin
          ? _value.isAutomaticLogin
          : isAutomaticLogin // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DebugStateCopyWith<$Res>
    implements $DebugStateCopyWith<$Res> {
  factory _$$_DebugStateCopyWith(
          _$_DebugState value, $Res Function(_$_DebugState) then) =
      __$$_DebugStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PackageInfo debugInfo, bool isAutomaticLogin});
}

/// @nodoc
class __$$_DebugStateCopyWithImpl<$Res>
    extends _$DebugStateCopyWithImpl<$Res, _$_DebugState>
    implements _$$_DebugStateCopyWith<$Res> {
  __$$_DebugStateCopyWithImpl(
      _$_DebugState _value, $Res Function(_$_DebugState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? debugInfo = null,
    Object? isAutomaticLogin = null,
  }) {
    return _then(_$_DebugState(
      debugInfo: null == debugInfo
          ? _value.debugInfo
          : debugInfo // ignore: cast_nullable_to_non_nullable
              as PackageInfo,
      isAutomaticLogin: null == isAutomaticLogin
          ? _value.isAutomaticLogin
          : isAutomaticLogin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DebugState implements _DebugState {
  const _$_DebugState(
      {required this.debugInfo, required this.isAutomaticLogin});

  @override
  final PackageInfo debugInfo;
  @override
  final bool isAutomaticLogin;

  @override
  String toString() {
    return 'DebugState(debugInfo: $debugInfo, isAutomaticLogin: $isAutomaticLogin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DebugState &&
            (identical(other.debugInfo, debugInfo) ||
                other.debugInfo == debugInfo) &&
            (identical(other.isAutomaticLogin, isAutomaticLogin) ||
                other.isAutomaticLogin == isAutomaticLogin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, debugInfo, isAutomaticLogin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DebugStateCopyWith<_$_DebugState> get copyWith =>
      __$$_DebugStateCopyWithImpl<_$_DebugState>(this, _$identity);
}

abstract class _DebugState implements DebugState {
  const factory _DebugState(
      {required final PackageInfo debugInfo,
      required final bool isAutomaticLogin}) = _$_DebugState;

  @override
  PackageInfo get debugInfo;
  @override
  bool get isAutomaticLogin;
  @override
  @JsonKey(ignore: true)
  _$$_DebugStateCopyWith<_$_DebugState> get copyWith =>
      throw _privateConstructorUsedError;
}
