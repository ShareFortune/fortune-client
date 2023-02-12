// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'participating_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ParticipatingState {
  AsyncValue<List<GetV1RoomsHostResponseRoom>> get host =>
      throw _privateConstructorUsedError;
  AsyncValue<List<GetV1RoomsGuestResponseRoom>> get guest =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParticipatingStateCopyWith<ParticipatingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipatingStateCopyWith<$Res> {
  factory $ParticipatingStateCopyWith(
          ParticipatingState value, $Res Function(ParticipatingState) then) =
      _$ParticipatingStateCopyWithImpl<$Res, ParticipatingState>;
  @useResult
  $Res call(
      {AsyncValue<List<GetV1RoomsHostResponseRoom>> host,
      AsyncValue<List<GetV1RoomsGuestResponseRoom>> guest});
}

/// @nodoc
class _$ParticipatingStateCopyWithImpl<$Res, $Val extends ParticipatingState>
    implements $ParticipatingStateCopyWith<$Res> {
  _$ParticipatingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? host = null,
    Object? guest = null,
  }) {
    return _then(_value.copyWith(
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<GetV1RoomsHostResponseRoom>>,
      guest: null == guest
          ? _value.guest
          : guest // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<GetV1RoomsGuestResponseRoom>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ParticipatingStateCopyWith<$Res>
    implements $ParticipatingStateCopyWith<$Res> {
  factory _$$_ParticipatingStateCopyWith(_$_ParticipatingState value,
          $Res Function(_$_ParticipatingState) then) =
      __$$_ParticipatingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<GetV1RoomsHostResponseRoom>> host,
      AsyncValue<List<GetV1RoomsGuestResponseRoom>> guest});
}

/// @nodoc
class __$$_ParticipatingStateCopyWithImpl<$Res>
    extends _$ParticipatingStateCopyWithImpl<$Res, _$_ParticipatingState>
    implements _$$_ParticipatingStateCopyWith<$Res> {
  __$$_ParticipatingStateCopyWithImpl(
      _$_ParticipatingState _value, $Res Function(_$_ParticipatingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? host = null,
    Object? guest = null,
  }) {
    return _then(_$_ParticipatingState(
      null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<GetV1RoomsHostResponseRoom>>,
      null == guest
          ? _value.guest
          : guest // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<GetV1RoomsGuestResponseRoom>>,
    ));
  }
}

/// @nodoc

class _$_ParticipatingState implements _ParticipatingState {
  const _$_ParticipatingState(this.host, this.guest);

  @override
  final AsyncValue<List<GetV1RoomsHostResponseRoom>> host;
  @override
  final AsyncValue<List<GetV1RoomsGuestResponseRoom>> guest;

  @override
  String toString() {
    return 'ParticipatingState(host: $host, guest: $guest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParticipatingState &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.guest, guest) || other.guest == guest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, host, guest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParticipatingStateCopyWith<_$_ParticipatingState> get copyWith =>
      __$$_ParticipatingStateCopyWithImpl<_$_ParticipatingState>(
          this, _$identity);
}

abstract class _ParticipatingState implements ParticipatingState {
  const factory _ParticipatingState(
          final AsyncValue<List<GetV1RoomsHostResponseRoom>> host,
          final AsyncValue<List<GetV1RoomsGuestResponseRoom>> guest) =
      _$_ParticipatingState;

  @override
  AsyncValue<List<GetV1RoomsHostResponseRoom>> get host;
  @override
  AsyncValue<List<GetV1RoomsGuestResponseRoom>> get guest;
  @override
  @JsonKey(ignore: true)
  _$$_ParticipatingStateCopyWith<_$_ParticipatingState> get copyWith =>
      throw _privateConstructorUsedError;
}
