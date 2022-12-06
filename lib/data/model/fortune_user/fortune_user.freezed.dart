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
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  String get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'mainImageURL')
  String get mainImageURL => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'gender') String gender,
      @JsonKey(name: 'mainImageURL') String mainImageURL,
      @JsonKey(name: 'name') String name});
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
    Object? gender = null,
    Object? mainImageURL = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      mainImageURL: null == mainImageURL
          ? _value.mainImageURL
          : mainImageURL // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'gender') String gender,
      @JsonKey(name: 'mainImageURL') String mainImageURL,
      @JsonKey(name: 'name') String name});
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
    Object? gender = null,
    Object? mainImageURL = null,
    Object? name = null,
  }) {
    return _then(_$_FortuneUser(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      mainImageURL: null == mainImageURL
          ? _value.mainImageURL
          : mainImageURL // ignore: cast_nullable_to_non_nullable
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
class _$_FortuneUser implements _FortuneUser {
  const _$_FortuneUser(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'gender') required this.gender,
      @JsonKey(name: 'mainImageURL') required this.mainImageURL,
      @JsonKey(name: 'name') required this.name});

  factory _$_FortuneUser.fromJson(Map<String, dynamic> json) =>
      _$$_FortuneUserFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'gender')
  final String gender;
  @override
  @JsonKey(name: 'mainImageURL')
  final String mainImageURL;
  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'FortuneUser(id: $id, gender: $gender, mainImageURL: $mainImageURL, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FortuneUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.mainImageURL, mainImageURL) ||
                other.mainImageURL == mainImageURL) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, gender, mainImageURL, name);

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

abstract class _FortuneUser implements FortuneUser {
  const factory _FortuneUser(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'gender') required final String gender,
      @JsonKey(name: 'mainImageURL') required final String mainImageURL,
      @JsonKey(name: 'name') required final String name}) = _$_FortuneUser;

  factory _FortuneUser.fromJson(Map<String, dynamic> json) =
      _$_FortuneUser.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'gender')
  String get gender;
  @override
  @JsonKey(name: 'mainImageURL')
  String get mainImageURL;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_FortuneUserCopyWith<_$_FortuneUser> get copyWith =>
      throw _privateConstructorUsedError;
}
