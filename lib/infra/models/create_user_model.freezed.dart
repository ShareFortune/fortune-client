// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateUserModel _$CreateUserModelFromJson(Map<String, dynamic> json) {
  return _CreateUserModel.fromJson(json);
}

/// @nodoc
mixin _$CreateUserModel {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateUserModelCopyWith<CreateUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserModelCopyWith<$Res> {
  factory $CreateUserModelCopyWith(
          CreateUserModel value, $Res Function(CreateUserModel) then) =
      _$CreateUserModelCopyWithImpl<$Res, CreateUserModel>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$CreateUserModelCopyWithImpl<$Res, $Val extends CreateUserModel>
    implements $CreateUserModelCopyWith<$Res> {
  _$CreateUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateUserModelCopyWith<$Res>
    implements $CreateUserModelCopyWith<$Res> {
  factory _$$_CreateUserModelCopyWith(
          _$_CreateUserModel value, $Res Function(_$_CreateUserModel) then) =
      __$$_CreateUserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_CreateUserModelCopyWithImpl<$Res>
    extends _$CreateUserModelCopyWithImpl<$Res, _$_CreateUserModel>
    implements _$$_CreateUserModelCopyWith<$Res> {
  __$$_CreateUserModelCopyWithImpl(
      _$_CreateUserModel _value, $Res Function(_$_CreateUserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_CreateUserModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateUserModel implements _CreateUserModel {
  const _$_CreateUserModel({required this.id});

  factory _$_CreateUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_CreateUserModelFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'CreateUserModel(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateUserModel &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateUserModelCopyWith<_$_CreateUserModel> get copyWith =>
      __$$_CreateUserModelCopyWithImpl<_$_CreateUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateUserModelToJson(
      this,
    );
  }
}

abstract class _CreateUserModel implements CreateUserModel {
  const factory _CreateUserModel({required final String id}) =
      _$_CreateUserModel;

  factory _CreateUserModel.fromJson(Map<String, dynamic> json) =
      _$_CreateUserModel.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_CreateUserModelCopyWith<_$_CreateUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}