// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_from_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageFromUser _$MessageFromUserFromJson(Map<String, dynamic> json) {
  return _MessageFromUser.fromJson(json);
}

/// @nodoc
mixin _$MessageFromUser {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get mainImageURL => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageFromUserCopyWith<MessageFromUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageFromUserCopyWith<$Res> {
  factory $MessageFromUserCopyWith(
          MessageFromUser value, $Res Function(MessageFromUser) then) =
      _$MessageFromUserCopyWithImpl<$Res, MessageFromUser>;
  @useResult
  $Res call({String id, String name, String mainImageURL});
}

/// @nodoc
class _$MessageFromUserCopyWithImpl<$Res, $Val extends MessageFromUser>
    implements $MessageFromUserCopyWith<$Res> {
  _$MessageFromUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
      mainImageURL: null == mainImageURL
          ? _value.mainImageURL
          : mainImageURL // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageFromUserCopyWith<$Res>
    implements $MessageFromUserCopyWith<$Res> {
  factory _$$_MessageFromUserCopyWith(
          _$_MessageFromUser value, $Res Function(_$_MessageFromUser) then) =
      __$$_MessageFromUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String mainImageURL});
}

/// @nodoc
class __$$_MessageFromUserCopyWithImpl<$Res>
    extends _$MessageFromUserCopyWithImpl<$Res, _$_MessageFromUser>
    implements _$$_MessageFromUserCopyWith<$Res> {
  __$$_MessageFromUserCopyWithImpl(
      _$_MessageFromUser _value, $Res Function(_$_MessageFromUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? mainImageURL = null,
  }) {
    return _then(_$_MessageFromUser(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mainImageURL: null == mainImageURL
          ? _value.mainImageURL
          : mainImageURL // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageFromUser implements _MessageFromUser {
  const _$_MessageFromUser(
      {required this.id, required this.name, required this.mainImageURL});

  factory _$_MessageFromUser.fromJson(Map<String, dynamic> json) =>
      _$$_MessageFromUserFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String mainImageURL;

  @override
  String toString() {
    return 'MessageFromUser(id: $id, name: $name, mainImageURL: $mainImageURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageFromUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mainImageURL, mainImageURL) ||
                other.mainImageURL == mainImageURL));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, mainImageURL);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageFromUserCopyWith<_$_MessageFromUser> get copyWith =>
      __$$_MessageFromUserCopyWithImpl<_$_MessageFromUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageFromUserToJson(
      this,
    );
  }
}

abstract class _MessageFromUser implements MessageFromUser {
  const factory _MessageFromUser(
      {required final String id,
      required final String name,
      required final String mainImageURL}) = _$_MessageFromUser;

  factory _MessageFromUser.fromJson(Map<String, dynamic> json) =
      _$_MessageFromUser.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get mainImageURL;
  @override
  @JsonKey(ignore: true)
  _$$_MessageFromUserCopyWith<_$_MessageFromUser> get copyWith =>
      throw _privateConstructorUsedError;
}
