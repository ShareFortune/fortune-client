// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'occupation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Occupation _$OccupationFromJson(Map<String, dynamic> json) {
  return _Occupation.fromJson(json);
}

/// @nodoc
mixin _$Occupation {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OccupationCopyWith<Occupation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OccupationCopyWith<$Res> {
  factory $OccupationCopyWith(
          Occupation value, $Res Function(Occupation) then) =
      _$OccupationCopyWithImpl<$Res, Occupation>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id, @JsonKey(name: 'name') String name});
}

/// @nodoc
class _$OccupationCopyWithImpl<$Res, $Val extends Occupation>
    implements $OccupationCopyWith<$Res> {
  _$OccupationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OccupationCopyWith<$Res>
    implements $OccupationCopyWith<$Res> {
  factory _$$_OccupationCopyWith(
          _$_Occupation value, $Res Function(_$_Occupation) then) =
      __$$_OccupationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id, @JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$_OccupationCopyWithImpl<$Res>
    extends _$OccupationCopyWithImpl<$Res, _$_Occupation>
    implements _$$_OccupationCopyWith<$Res> {
  __$$_OccupationCopyWithImpl(
      _$_Occupation _value, $Res Function(_$_Occupation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_Occupation(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Occupation implements _Occupation {
  const _$_Occupation(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name});

  factory _$_Occupation.fromJson(Map<String, dynamic> json) =>
      _$$_OccupationFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'Occupation(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Occupation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OccupationCopyWith<_$_Occupation> get copyWith =>
      __$$_OccupationCopyWithImpl<_$_Occupation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OccupationToJson(
      this,
    );
  }
}

abstract class _Occupation implements Occupation {
  const factory _Occupation(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'name') required final String name}) = _$_Occupation;

  factory _Occupation.fromJson(Map<String, dynamic> json) =
      _$_Occupation.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_OccupationCopyWith<_$_Occupation> get copyWith =>
      throw _privateConstructorUsedError;
}
