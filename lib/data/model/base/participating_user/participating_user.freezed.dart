// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'participating_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ParticipatingUser _$ParticipatingUserFromJson(Map<String, dynamic> json) {
  return _ParticipatingUser.fromJson(json);
}

/// @nodoc
mixin _$ParticipatingUser {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "gender")
  @GenderConverter()
  Gender get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'mainImageURL')
  String get mainImageURL => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParticipatingUserCopyWith<ParticipatingUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipatingUserCopyWith<$Res> {
  factory $ParticipatingUserCopyWith(
          ParticipatingUser value, $Res Function(ParticipatingUser) then) =
      _$ParticipatingUserCopyWithImpl<$Res, ParticipatingUser>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: "gender") @GenderConverter() Gender gender,
      @JsonKey(name: 'mainImageURL') String mainImageURL});
}

/// @nodoc
class _$ParticipatingUserCopyWithImpl<$Res, $Val extends ParticipatingUser>
    implements $ParticipatingUserCopyWith<$Res> {
  _$ParticipatingUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? gender = null,
    Object? mainImageURL = null,
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
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      mainImageURL: null == mainImageURL
          ? _value.mainImageURL
          : mainImageURL // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ParticipatingUserCopyWith<$Res>
    implements $ParticipatingUserCopyWith<$Res> {
  factory _$$_ParticipatingUserCopyWith(_$_ParticipatingUser value,
          $Res Function(_$_ParticipatingUser) then) =
      __$$_ParticipatingUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: "gender") @GenderConverter() Gender gender,
      @JsonKey(name: 'mainImageURL') String mainImageURL});
}

/// @nodoc
class __$$_ParticipatingUserCopyWithImpl<$Res>
    extends _$ParticipatingUserCopyWithImpl<$Res, _$_ParticipatingUser>
    implements _$$_ParticipatingUserCopyWith<$Res> {
  __$$_ParticipatingUserCopyWithImpl(
      _$_ParticipatingUser _value, $Res Function(_$_ParticipatingUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? gender = null,
    Object? mainImageURL = null,
  }) {
    return _then(_$_ParticipatingUser(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      mainImageURL: null == mainImageURL
          ? _value.mainImageURL
          : mainImageURL // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ParticipatingUser implements _ParticipatingUser {
  const _$_ParticipatingUser(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: "gender") @GenderConverter() required this.gender,
      @JsonKey(name: 'mainImageURL') required this.mainImageURL});

  factory _$_ParticipatingUser.fromJson(Map<String, dynamic> json) =>
      _$$_ParticipatingUserFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: "gender")
  @GenderConverter()
  final Gender gender;
  @override
  @JsonKey(name: 'mainImageURL')
  final String mainImageURL;

  @override
  String toString() {
    return 'ParticipatingUser(id: $id, name: $name, gender: $gender, mainImageURL: $mainImageURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParticipatingUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.mainImageURL, mainImageURL) ||
                other.mainImageURL == mainImageURL));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, gender, mainImageURL);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParticipatingUserCopyWith<_$_ParticipatingUser> get copyWith =>
      __$$_ParticipatingUserCopyWithImpl<_$_ParticipatingUser>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParticipatingUserToJson(
      this,
    );
  }
}

abstract class _ParticipatingUser implements ParticipatingUser {
  const factory _ParticipatingUser(
      {@JsonKey(name: 'id')
          required final String id,
      @JsonKey(name: 'name')
          required final String name,
      @JsonKey(name: "gender")
      @GenderConverter()
          required final Gender gender,
      @JsonKey(name: 'mainImageURL')
          required final String mainImageURL}) = _$_ParticipatingUser;

  factory _ParticipatingUser.fromJson(Map<String, dynamic> json) =
      _$_ParticipatingUser.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: "gender")
  @GenderConverter()
  Gender get gender;
  @override
  @JsonKey(name: 'mainImageURL')
  String get mainImageURL;
  @override
  @JsonKey(ignore: true)
  _$$_ParticipatingUserCopyWith<_$_ParticipatingUser> get copyWith =>
      throw _privateConstructorUsedError;
}
