// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entry_description_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EntryDescriptionState {
  String? get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EntryDescriptionStateCopyWith<EntryDescriptionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntryDescriptionStateCopyWith<$Res> {
  factory $EntryDescriptionStateCopyWith(EntryDescriptionState value,
          $Res Function(EntryDescriptionState) then) =
      _$EntryDescriptionStateCopyWithImpl<$Res, EntryDescriptionState>;
  @useResult
  $Res call({String? description});
}

/// @nodoc
class _$EntryDescriptionStateCopyWithImpl<$Res,
        $Val extends EntryDescriptionState>
    implements $EntryDescriptionStateCopyWith<$Res> {
  _$EntryDescriptionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EntryDescriptionStateCopyWith<$Res>
    implements $EntryDescriptionStateCopyWith<$Res> {
  factory _$$_EntryDescriptionStateCopyWith(_$_EntryDescriptionState value,
          $Res Function(_$_EntryDescriptionState) then) =
      __$$_EntryDescriptionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? description});
}

/// @nodoc
class __$$_EntryDescriptionStateCopyWithImpl<$Res>
    extends _$EntryDescriptionStateCopyWithImpl<$Res, _$_EntryDescriptionState>
    implements _$$_EntryDescriptionStateCopyWith<$Res> {
  __$$_EntryDescriptionStateCopyWithImpl(_$_EntryDescriptionState _value,
      $Res Function(_$_EntryDescriptionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_$_EntryDescriptionState(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_EntryDescriptionState implements _EntryDescriptionState {
  const _$_EntryDescriptionState({this.description});

  @override
  final String? description;

  @override
  String toString() {
    return 'EntryDescriptionState(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntryDescriptionState &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EntryDescriptionStateCopyWith<_$_EntryDescriptionState> get copyWith =>
      __$$_EntryDescriptionStateCopyWithImpl<_$_EntryDescriptionState>(
          this, _$identity);
}

abstract class _EntryDescriptionState implements EntryDescriptionState {
  const factory _EntryDescriptionState({final String? description}) =
      _$_EntryDescriptionState;

  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_EntryDescriptionStateCopyWith<_$_EntryDescriptionState> get copyWith =>
      throw _privateConstructorUsedError;
}
