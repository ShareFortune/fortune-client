// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseID _$ResponseIDFromJson(Map<String, dynamic> json) {
  return _ResponseID.fromJson(json);
}

/// @nodoc
mixin _$ResponseID {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseIDCopyWith<ResponseID> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseIDCopyWith<$Res> {
  factory $ResponseIDCopyWith(
          ResponseID value, $Res Function(ResponseID) then) =
      _$ResponseIDCopyWithImpl<$Res, ResponseID>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$ResponseIDCopyWithImpl<$Res, $Val extends ResponseID>
    implements $ResponseIDCopyWith<$Res> {
  _$ResponseIDCopyWithImpl(this._value, this._then);

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
abstract class _$$_ResponseIDCopyWith<$Res>
    implements $ResponseIDCopyWith<$Res> {
  factory _$$_ResponseIDCopyWith(
          _$_ResponseID value, $Res Function(_$_ResponseID) then) =
      __$$_ResponseIDCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_ResponseIDCopyWithImpl<$Res>
    extends _$ResponseIDCopyWithImpl<$Res, _$_ResponseID>
    implements _$$_ResponseIDCopyWith<$Res> {
  __$$_ResponseIDCopyWithImpl(
      _$_ResponseID _value, $Res Function(_$_ResponseID) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_ResponseID(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseID implements _ResponseID {
  const _$_ResponseID({required this.id});

  factory _$_ResponseID.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseIDFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'ResponseID(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseID &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseIDCopyWith<_$_ResponseID> get copyWith =>
      __$$_ResponseIDCopyWithImpl<_$_ResponseID>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseIDToJson(
      this,
    );
  }
}

abstract class _ResponseID implements ResponseID {
  const factory _ResponseID({required final String id}) = _$_ResponseID;

  factory _ResponseID.fromJson(Map<String, dynamic> json) =
      _$_ResponseID.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseIDCopyWith<_$_ResponseID> get copyWith =>
      throw _privateConstructorUsedError;
}
