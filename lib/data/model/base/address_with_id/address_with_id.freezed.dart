// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_with_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddressWithId _$AddressWithIdFromJson(Map<String, dynamic> json) {
  return _AddressWithId.fromJson(json);
}

/// @nodoc
mixin _$AddressWithId {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  Address get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressWithIdCopyWith<AddressWithId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressWithIdCopyWith<$Res> {
  factory $AddressWithIdCopyWith(
          AddressWithId value, $Res Function(AddressWithId) then) =
      _$AddressWithIdCopyWithImpl<$Res, AddressWithId>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id, @JsonKey(name: 'address') Address data});

  $AddressCopyWith<$Res> get data;
}

/// @nodoc
class _$AddressWithIdCopyWithImpl<$Res, $Val extends AddressWithId>
    implements $AddressWithIdCopyWith<$Res> {
  _$AddressWithIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Address,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get data {
    return $AddressCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AddressWithIdCopyWith<$Res>
    implements $AddressWithIdCopyWith<$Res> {
  factory _$$_AddressWithIdCopyWith(
          _$_AddressWithId value, $Res Function(_$_AddressWithId) then) =
      __$$_AddressWithIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id, @JsonKey(name: 'address') Address data});

  @override
  $AddressCopyWith<$Res> get data;
}

/// @nodoc
class __$$_AddressWithIdCopyWithImpl<$Res>
    extends _$AddressWithIdCopyWithImpl<$Res, _$_AddressWithId>
    implements _$$_AddressWithIdCopyWith<$Res> {
  __$$_AddressWithIdCopyWithImpl(
      _$_AddressWithId _value, $Res Function(_$_AddressWithId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? data = null,
  }) {
    return _then(_$_AddressWithId(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddressWithId implements _AddressWithId {
  const _$_AddressWithId(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'address') required this.data});

  factory _$_AddressWithId.fromJson(Map<String, dynamic> json) =>
      _$$_AddressWithIdFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'address')
  final Address data;

  @override
  String toString() {
    return 'AddressWithId(id: $id, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressWithId &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressWithIdCopyWith<_$_AddressWithId> get copyWith =>
      __$$_AddressWithIdCopyWithImpl<_$_AddressWithId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressWithIdToJson(
      this,
    );
  }
}

abstract class _AddressWithId implements AddressWithId {
  const factory _AddressWithId(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'address') required final Address data}) =
      _$_AddressWithId;

  factory _AddressWithId.fromJson(Map<String, dynamic> json) =
      _$_AddressWithId.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'address')
  Address get data;
  @override
  @JsonKey(ignore: true)
  _$$_AddressWithIdCopyWith<_$_AddressWithId> get copyWith =>
      throw _privateConstructorUsedError;
}
