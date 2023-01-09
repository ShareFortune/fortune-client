// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_user_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateUserForm _$CreateUserFormFromJson(Map<String, dynamic> json) {
  return _CreateUserForm.fromJson(json);
}

/// @nodoc
mixin _$CreateUserForm {
  @JsonKey(name: "firebaseId")
  String get firebaseId => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: "birthday")
  String get birthday => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateUserFormCopyWith<CreateUserForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserFormCopyWith<$Res> {
  factory $CreateUserFormCopyWith(
          CreateUserForm value, $Res Function(CreateUserForm) then) =
      _$CreateUserFormCopyWithImpl<$Res, CreateUserForm>;
  @useResult
  $Res call(
      {@JsonKey(name: "firebaseId") String firebaseId,
      @JsonKey(name: "username") String username,
      @JsonKey(name: "birthday") String birthday});
}

/// @nodoc
class _$CreateUserFormCopyWithImpl<$Res, $Val extends CreateUserForm>
    implements $CreateUserFormCopyWith<$Res> {
  _$CreateUserFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firebaseId = null,
    Object? username = null,
    Object? birthday = null,
  }) {
    return _then(_value.copyWith(
      firebaseId: null == firebaseId
          ? _value.firebaseId
          : firebaseId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateUserFormCopyWith<$Res>
    implements $CreateUserFormCopyWith<$Res> {
  factory _$$_CreateUserFormCopyWith(
          _$_CreateUserForm value, $Res Function(_$_CreateUserForm) then) =
      __$$_CreateUserFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "firebaseId") String firebaseId,
      @JsonKey(name: "username") String username,
      @JsonKey(name: "birthday") String birthday});
}

/// @nodoc
class __$$_CreateUserFormCopyWithImpl<$Res>
    extends _$CreateUserFormCopyWithImpl<$Res, _$_CreateUserForm>
    implements _$$_CreateUserFormCopyWith<$Res> {
  __$$_CreateUserFormCopyWithImpl(
      _$_CreateUserForm _value, $Res Function(_$_CreateUserForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firebaseId = null,
    Object? username = null,
    Object? birthday = null,
  }) {
    return _then(_$_CreateUserForm(
      firebaseId: null == firebaseId
          ? _value.firebaseId
          : firebaseId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateUserForm implements _CreateUserForm {
  const _$_CreateUserForm(
      {@JsonKey(name: "firebaseId") required this.firebaseId,
      @JsonKey(name: "username") required this.username,
      @JsonKey(name: "birthday") required this.birthday});

  factory _$_CreateUserForm.fromJson(Map<String, dynamic> json) =>
      _$$_CreateUserFormFromJson(json);

  @override
  @JsonKey(name: "firebaseId")
  final String firebaseId;
  @override
  @JsonKey(name: "username")
  final String username;
  @override
  @JsonKey(name: "birthday")
  final String birthday;

  @override
  String toString() {
    return 'CreateUserForm(firebaseId: $firebaseId, username: $username, birthday: $birthday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateUserForm &&
            (identical(other.firebaseId, firebaseId) ||
                other.firebaseId == firebaseId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firebaseId, username, birthday);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateUserFormCopyWith<_$_CreateUserForm> get copyWith =>
      __$$_CreateUserFormCopyWithImpl<_$_CreateUserForm>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateUserFormToJson(
      this,
    );
  }
}

abstract class _CreateUserForm implements CreateUserForm {
  const factory _CreateUserForm(
          {@JsonKey(name: "firebaseId") required final String firebaseId,
          @JsonKey(name: "username") required final String username,
          @JsonKey(name: "birthday") required final String birthday}) =
      _$_CreateUserForm;

  factory _CreateUserForm.fromJson(Map<String, dynamic> json) =
      _$_CreateUserForm.fromJson;

  @override
  @JsonKey(name: "firebaseId")
  String get firebaseId;
  @override
  @JsonKey(name: "username")
  String get username;
  @override
  @JsonKey(name: "birthday")
  String get birthday;
  @override
  @JsonKey(ignore: true)
  _$$_CreateUserFormCopyWith<_$_CreateUserForm> get copyWith =>
      throw _privateConstructorUsedError;
}
