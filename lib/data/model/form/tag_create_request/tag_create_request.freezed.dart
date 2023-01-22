// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tag_create_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TagCreateRequest _$TagCreateRequestFromJson(Map<String, dynamic> json) {
  return _CreateUserForm.fromJson(json);
}

/// @nodoc
mixin _$TagCreateRequest {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "explanation")
  String get explanation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TagCreateRequestCopyWith<TagCreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagCreateRequestCopyWith<$Res> {
  factory $TagCreateRequestCopyWith(
          TagCreateRequest value, $Res Function(TagCreateRequest) then) =
      _$TagCreateRequestCopyWithImpl<$Res, TagCreateRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "explanation") String explanation});
}

/// @nodoc
class _$TagCreateRequestCopyWithImpl<$Res, $Val extends TagCreateRequest>
    implements $TagCreateRequestCopyWith<$Res> {
  _$TagCreateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? explanation = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateUserFormCopyWith<$Res>
    implements $TagCreateRequestCopyWith<$Res> {
  factory _$$_CreateUserFormCopyWith(
          _$_CreateUserForm value, $Res Function(_$_CreateUserForm) then) =
      __$$_CreateUserFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "explanation") String explanation});
}

/// @nodoc
class __$$_CreateUserFormCopyWithImpl<$Res>
    extends _$TagCreateRequestCopyWithImpl<$Res, _$_CreateUserForm>
    implements _$$_CreateUserFormCopyWith<$Res> {
  __$$_CreateUserFormCopyWithImpl(
      _$_CreateUserForm _value, $Res Function(_$_CreateUserForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? explanation = null,
  }) {
    return _then(_$_CreateUserForm(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateUserForm implements _CreateUserForm {
  const _$_CreateUserForm(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "explanation") required this.explanation});

  factory _$_CreateUserForm.fromJson(Map<String, dynamic> json) =>
      _$$_CreateUserFormFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "explanation")
  final String explanation;

  @override
  String toString() {
    return 'TagCreateRequest(name: $name, explanation: $explanation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateUserForm &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, explanation);

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

abstract class _CreateUserForm implements TagCreateRequest {
  const factory _CreateUserForm(
          {@JsonKey(name: "name") required final String name,
          @JsonKey(name: "explanation") required final String explanation}) =
      _$_CreateUserForm;

  factory _CreateUserForm.fromJson(Map<String, dynamic> json) =
      _$_CreateUserForm.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "explanation")
  String get explanation;
  @override
  @JsonKey(ignore: true)
  _$$_CreateUserFormCopyWith<_$_CreateUserForm> get copyWith =>
      throw _privateConstructorUsedError;
}
