// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyPageState {
  File? get icon => throw _privateConstructorUsedError;
  AsyncValue<GetV1ProfilesResponse> get profile =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyPageStateCopyWith<MyPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyPageStateCopyWith<$Res> {
  factory $MyPageStateCopyWith(
          MyPageState value, $Res Function(MyPageState) then) =
      _$MyPageStateCopyWithImpl<$Res, MyPageState>;
  @useResult
  $Res call({File? icon, AsyncValue<GetV1ProfilesResponse> profile});
}

/// @nodoc
class _$MyPageStateCopyWithImpl<$Res, $Val extends MyPageState>
    implements $MyPageStateCopyWith<$Res> {
  _$MyPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = freezed,
    Object? profile = null,
  }) {
    return _then(_value.copyWith(
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as File?,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as AsyncValue<GetV1ProfilesResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MyPageStateCopyWith<$Res>
    implements $MyPageStateCopyWith<$Res> {
  factory _$$_MyPageStateCopyWith(
          _$_MyPageState value, $Res Function(_$_MyPageState) then) =
      __$$_MyPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({File? icon, AsyncValue<GetV1ProfilesResponse> profile});
}

/// @nodoc
class __$$_MyPageStateCopyWithImpl<$Res>
    extends _$MyPageStateCopyWithImpl<$Res, _$_MyPageState>
    implements _$$_MyPageStateCopyWith<$Res> {
  __$$_MyPageStateCopyWithImpl(
      _$_MyPageState _value, $Res Function(_$_MyPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = freezed,
    Object? profile = null,
  }) {
    return _then(_$_MyPageState(
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as File?,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as AsyncValue<GetV1ProfilesResponse>,
    ));
  }
}

/// @nodoc

class _$_MyPageState implements _MyPageState {
  const _$_MyPageState({this.icon, required this.profile});

  @override
  final File? icon;
  @override
  final AsyncValue<GetV1ProfilesResponse> profile;

  @override
  String toString() {
    return 'MyPageState(icon: $icon, profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyPageState &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, icon, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyPageStateCopyWith<_$_MyPageState> get copyWith =>
      __$$_MyPageStateCopyWithImpl<_$_MyPageState>(this, _$identity);
}

abstract class _MyPageState implements MyPageState {
  const factory _MyPageState(
          {final File? icon,
          required final AsyncValue<GetV1ProfilesResponse> profile}) =
      _$_MyPageState;

  @override
  File? get icon;
  @override
  AsyncValue<GetV1ProfilesResponse> get profile;
  @override
  @JsonKey(ignore: true)
  _$$_MyPageStateCopyWith<_$_MyPageState> get copyWith =>
      throw _privateConstructorUsedError;
}