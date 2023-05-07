// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_input_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileInputState {
  /// 生年月日
  DateTime? get birthday => throw _privateConstructorUsedError;

  /// 性別
  Gender? get gender => throw _privateConstructorUsedError;

  /// 居住地
  Address? get address => throw _privateConstructorUsedError;

  /// プロフィール画像
  File? get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileInputStateCopyWith<ProfileInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileInputStateCopyWith<$Res> {
  factory $ProfileInputStateCopyWith(
          ProfileInputState value, $Res Function(ProfileInputState) then) =
      _$ProfileInputStateCopyWithImpl<$Res, ProfileInputState>;
  @useResult
  $Res call(
      {DateTime? birthday, Gender? gender, Address? address, File? image});

  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class _$ProfileInputStateCopyWithImpl<$Res, $Val extends ProfileInputState>
    implements $ProfileInputStateCopyWith<$Res> {
  _$ProfileInputStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birthday = freezed,
    Object? gender = freezed,
    Object? address = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProfileInputStateCopyWith<$Res>
    implements $ProfileInputStateCopyWith<$Res> {
  factory _$$_ProfileInputStateCopyWith(_$_ProfileInputState value,
          $Res Function(_$_ProfileInputState) then) =
      __$$_ProfileInputStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? birthday, Gender? gender, Address? address, File? image});

  @override
  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class __$$_ProfileInputStateCopyWithImpl<$Res>
    extends _$ProfileInputStateCopyWithImpl<$Res, _$_ProfileInputState>
    implements _$$_ProfileInputStateCopyWith<$Res> {
  __$$_ProfileInputStateCopyWithImpl(
      _$_ProfileInputState _value, $Res Function(_$_ProfileInputState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birthday = freezed,
    Object? gender = freezed,
    Object? address = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_ProfileInputState(
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$_ProfileInputState extends _ProfileInputState {
  const _$_ProfileInputState(
      {this.birthday, this.gender, this.address, this.image})
      : super._();

  /// 生年月日
  @override
  final DateTime? birthday;

  /// 性別
  @override
  final Gender? gender;

  /// 居住地
  @override
  final Address? address;

  /// プロフィール画像
  @override
  final File? image;

  @override
  String toString() {
    return 'ProfileInputState(birthday: $birthday, gender: $gender, address: $address, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileInputState &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, birthday, gender, address, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileInputStateCopyWith<_$_ProfileInputState> get copyWith =>
      __$$_ProfileInputStateCopyWithImpl<_$_ProfileInputState>(
          this, _$identity);
}

abstract class _ProfileInputState extends ProfileInputState {
  const factory _ProfileInputState(
      {final DateTime? birthday,
      final Gender? gender,
      final Address? address,
      final File? image}) = _$_ProfileInputState;
  const _ProfileInputState._() : super._();

  @override

  /// 生年月日
  DateTime? get birthday;
  @override

  /// 性別
  Gender? get gender;
  @override

  /// 居住地
  Address? get address;
  @override

  /// プロフィール画像
  File? get image;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileInputStateCopyWith<_$_ProfileInputState> get copyWith =>
      throw _privateConstructorUsedError;
}
