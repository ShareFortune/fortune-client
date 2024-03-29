// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fortune_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FortuneUser _$FortuneUserFromJson(Map<String, dynamic> json) {
  return _FortuneUser.fromJson(json);
}

/// @nodoc
mixin _$FortuneUser {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @GenderConverter()
  Gender get gender => throw _privateConstructorUsedError;
  String get mainImageURL => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FortuneUserCopyWith<FortuneUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FortuneUserCopyWith<$Res> {
  factory $FortuneUserCopyWith(
          FortuneUser value, $Res Function(FortuneUser) then) =
      _$FortuneUserCopyWithImpl<$Res, FortuneUser>;
  @useResult
  $Res call(
      {String id,
      String name,
      @GenderConverter() Gender gender,
      String mainImageURL});
}

/// @nodoc
class _$FortuneUserCopyWithImpl<$Res, $Val extends FortuneUser>
    implements $FortuneUserCopyWith<$Res> {
  _$FortuneUserCopyWithImpl(this._value, this._then);

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
abstract class _$$_FortuneUserCopyWith<$Res>
    implements $FortuneUserCopyWith<$Res> {
  factory _$$_FortuneUserCopyWith(
          _$_FortuneUser value, $Res Function(_$_FortuneUser) then) =
      __$$_FortuneUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @GenderConverter() Gender gender,
      String mainImageURL});
}

/// @nodoc
class __$$_FortuneUserCopyWithImpl<$Res>
    extends _$FortuneUserCopyWithImpl<$Res, _$_FortuneUser>
    implements _$$_FortuneUserCopyWith<$Res> {
  __$$_FortuneUserCopyWithImpl(
      _$_FortuneUser _value, $Res Function(_$_FortuneUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? gender = null,
    Object? mainImageURL = null,
  }) {
    return _then(_$_FortuneUser(
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
class _$_FortuneUser extends _FortuneUser {
  const _$_FortuneUser(
      {required this.id,
      required this.name,
      @GenderConverter() required this.gender,
      required this.mainImageURL})
      : super._();

  factory _$_FortuneUser.fromJson(Map<String, dynamic> json) =>
      _$$_FortuneUserFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @GenderConverter()
  final Gender gender;
  @override
  final String mainImageURL;

  @override
  String toString() {
    return 'FortuneUser(id: $id, name: $name, gender: $gender, mainImageURL: $mainImageURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FortuneUser &&
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
  _$$_FortuneUserCopyWith<_$_FortuneUser> get copyWith =>
      __$$_FortuneUserCopyWithImpl<_$_FortuneUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FortuneUserToJson(
      this,
    );
  }
}

abstract class _FortuneUser extends FortuneUser {
  const factory _FortuneUser(
      {required final String id,
      required final String name,
      @GenderConverter() required final Gender gender,
      required final String mainImageURL}) = _$_FortuneUser;
  const _FortuneUser._() : super._();

  factory _FortuneUser.fromJson(Map<String, dynamic> json) =
      _$_FortuneUser.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @GenderConverter()
  Gender get gender;
  @override
  String get mainImageURL;
  @override
  @JsonKey(ignore: true)
  _$$_FortuneUserCopyWith<_$_FortuneUser> get copyWith =>
      throw _privateConstructorUsedError;
}
