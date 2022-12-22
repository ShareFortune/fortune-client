// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_app_bar_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BasicAppBarState {
  ImageProvider<Object> get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BasicAppBarStateCopyWith<BasicAppBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicAppBarStateCopyWith<$Res> {
  factory $BasicAppBarStateCopyWith(
          BasicAppBarState value, $Res Function(BasicAppBarState) then) =
      _$BasicAppBarStateCopyWithImpl<$Res, BasicAppBarState>;
  @useResult
  $Res call({ImageProvider<Object> image});
}

/// @nodoc
class _$BasicAppBarStateCopyWithImpl<$Res, $Val extends BasicAppBarState>
    implements $BasicAppBarStateCopyWith<$Res> {
  _$BasicAppBarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageProvider<Object>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BasicAppBarStateCopyWith<$Res>
    implements $BasicAppBarStateCopyWith<$Res> {
  factory _$$_BasicAppBarStateCopyWith(
          _$_BasicAppBarState value, $Res Function(_$_BasicAppBarState) then) =
      __$$_BasicAppBarStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ImageProvider<Object> image});
}

/// @nodoc
class __$$_BasicAppBarStateCopyWithImpl<$Res>
    extends _$BasicAppBarStateCopyWithImpl<$Res, _$_BasicAppBarState>
    implements _$$_BasicAppBarStateCopyWith<$Res> {
  __$$_BasicAppBarStateCopyWithImpl(
      _$_BasicAppBarState _value, $Res Function(_$_BasicAppBarState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$_BasicAppBarState(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageProvider<Object>,
    ));
  }
}

/// @nodoc

class _$_BasicAppBarState implements _BasicAppBarState {
  const _$_BasicAppBarState({required this.image});

  @override
  final ImageProvider<Object> image;

  @override
  String toString() {
    return 'BasicAppBarState(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BasicAppBarState &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BasicAppBarStateCopyWith<_$_BasicAppBarState> get copyWith =>
      __$$_BasicAppBarStateCopyWithImpl<_$_BasicAppBarState>(this, _$identity);
}

abstract class _BasicAppBarState implements BasicAppBarState {
  const factory _BasicAppBarState(
      {required final ImageProvider<Object> image}) = _$_BasicAppBarState;

  @override
  ImageProvider<Object> get image;
  @override
  @JsonKey(ignore: true)
  _$$_BasicAppBarStateCopyWith<_$_BasicAppBarState> get copyWith =>
      throw _privateConstructorUsedError;
}
