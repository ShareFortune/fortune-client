// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'join_requests_confirmation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JoinRequestsConfirmationState {
  AsyncValue<List<RoomJoinRequest>> get joinRequests =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JoinRequestsConfirmationStateCopyWith<JoinRequestsConfirmationState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinRequestsConfirmationStateCopyWith<$Res> {
  factory $JoinRequestsConfirmationStateCopyWith(
          JoinRequestsConfirmationState value,
          $Res Function(JoinRequestsConfirmationState) then) =
      _$JoinRequestsConfirmationStateCopyWithImpl<$Res,
          JoinRequestsConfirmationState>;
  @useResult
  $Res call({AsyncValue<List<RoomJoinRequest>> joinRequests});
}

/// @nodoc
class _$JoinRequestsConfirmationStateCopyWithImpl<$Res,
        $Val extends JoinRequestsConfirmationState>
    implements $JoinRequestsConfirmationStateCopyWith<$Res> {
  _$JoinRequestsConfirmationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? joinRequests = null,
  }) {
    return _then(_value.copyWith(
      joinRequests: null == joinRequests
          ? _value.joinRequests
          : joinRequests // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<RoomJoinRequest>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JoinRequestsConfirmationStateCopyWith<$Res>
    implements $JoinRequestsConfirmationStateCopyWith<$Res> {
  factory _$$_JoinRequestsConfirmationStateCopyWith(
          _$_JoinRequestsConfirmationState value,
          $Res Function(_$_JoinRequestsConfirmationState) then) =
      __$$_JoinRequestsConfirmationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<List<RoomJoinRequest>> joinRequests});
}

/// @nodoc
class __$$_JoinRequestsConfirmationStateCopyWithImpl<$Res>
    extends _$JoinRequestsConfirmationStateCopyWithImpl<$Res,
        _$_JoinRequestsConfirmationState>
    implements _$$_JoinRequestsConfirmationStateCopyWith<$Res> {
  __$$_JoinRequestsConfirmationStateCopyWithImpl(
      _$_JoinRequestsConfirmationState _value,
      $Res Function(_$_JoinRequestsConfirmationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? joinRequests = null,
  }) {
    return _then(_$_JoinRequestsConfirmationState(
      joinRequests: null == joinRequests
          ? _value.joinRequests
          : joinRequests // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<RoomJoinRequest>>,
    ));
  }
}

/// @nodoc

class _$_JoinRequestsConfirmationState
    implements _JoinRequestsConfirmationState {
  const _$_JoinRequestsConfirmationState(
      {this.joinRequests = const AsyncLoading()});

  @override
  @JsonKey()
  final AsyncValue<List<RoomJoinRequest>> joinRequests;

  @override
  String toString() {
    return 'JoinRequestsConfirmationState(joinRequests: $joinRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JoinRequestsConfirmationState &&
            (identical(other.joinRequests, joinRequests) ||
                other.joinRequests == joinRequests));
  }

  @override
  int get hashCode => Object.hash(runtimeType, joinRequests);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JoinRequestsConfirmationStateCopyWith<_$_JoinRequestsConfirmationState>
      get copyWith => __$$_JoinRequestsConfirmationStateCopyWithImpl<
          _$_JoinRequestsConfirmationState>(this, _$identity);
}

abstract class _JoinRequestsConfirmationState
    implements JoinRequestsConfirmationState {
  const factory _JoinRequestsConfirmationState(
          {final AsyncValue<List<RoomJoinRequest>> joinRequests}) =
      _$_JoinRequestsConfirmationState;

  @override
  AsyncValue<List<RoomJoinRequest>> get joinRequests;
  @override
  @JsonKey(ignore: true)
  _$$_JoinRequestsConfirmationStateCopyWith<_$_JoinRequestsConfirmationState>
      get copyWith => throw _privateConstructorUsedError;
}
