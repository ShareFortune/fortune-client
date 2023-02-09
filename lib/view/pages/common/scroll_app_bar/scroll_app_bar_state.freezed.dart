// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scroll_app_bar_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScrollAppBarState {
  ImageProvider<Object> get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScrollAppBarStateCopyWith<ScrollAppBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScrollAppBarStateCopyWith<$Res> {
  factory $ScrollAppBarStateCopyWith(
          ScrollAppBarState value, $Res Function(ScrollAppBarState) then) =
      _$ScrollAppBarStateCopyWithImpl<$Res, ScrollAppBarState>;
  @useResult
  $Res call({ImageProvider<Object> image});
}

/// @nodoc
class _$ScrollAppBarStateCopyWithImpl<$Res, $Val extends ScrollAppBarState>
    implements $ScrollAppBarStateCopyWith<$Res> {
  _$ScrollAppBarStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_ScrollAppBarStateCopyWith<$Res>
    implements $ScrollAppBarStateCopyWith<$Res> {
  factory _$$_ScrollAppBarStateCopyWith(_$_ScrollAppBarState value,
          $Res Function(_$_ScrollAppBarState) then) =
      __$$_ScrollAppBarStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ImageProvider<Object> image});
}

/// @nodoc
class __$$_ScrollAppBarStateCopyWithImpl<$Res>
    extends _$ScrollAppBarStateCopyWithImpl<$Res, _$_ScrollAppBarState>
    implements _$$_ScrollAppBarStateCopyWith<$Res> {
  __$$_ScrollAppBarStateCopyWithImpl(
      _$_ScrollAppBarState _value, $Res Function(_$_ScrollAppBarState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$_ScrollAppBarState(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageProvider<Object>,
    ));
  }
}

/// @nodoc

class _$_ScrollAppBarState implements _ScrollAppBarState {
  const _$_ScrollAppBarState({required this.image});

  @override
  final ImageProvider<Object> image;

  @override
  String toString() {
    return 'ScrollAppBarState(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScrollAppBarState &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScrollAppBarStateCopyWith<_$_ScrollAppBarState> get copyWith =>
      __$$_ScrollAppBarStateCopyWithImpl<_$_ScrollAppBarState>(
          this, _$identity);
}

abstract class _ScrollAppBarState implements ScrollAppBarState {
  const factory _ScrollAppBarState(
      {required final ImageProvider<Object> image}) = _$_ScrollAppBarState;

  @override
  ImageProvider<Object> get image;
  @override
  @JsonKey(ignore: true)
  _$$_ScrollAppBarStateCopyWith<_$_ScrollAppBarState> get copyWith =>
      throw _privateConstructorUsedError;
}
