// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_room_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateRoomForm _$CreateRoomFormFromJson(Map<String, dynamic> json) {
  return _CreateRoomForm.fromJson(json);
}

/// @nodoc
mixin _$CreateRoomForm {
  /// タイトル
  @JsonKey(name: 'roomName')
  String get roomName => throw _privateConstructorUsedError;

  /// 締切
  @JsonKey(name: 'applicationDeadline')
  String get applicationDeadline => throw _privateConstructorUsedError;

  /// 募集人数
  @JsonKey(name: 'membersNum')
  int get membersNum => throw _privateConstructorUsedError;

  /// 募集年齢層
  @JsonKey(name: 'ageGroup')
  @AgeGroupConverter()
  AgeGroup get ageGroup => throw _privateConstructorUsedError;

  /// 開催場所
  /// TOTO: int => Adress
  /// APIできたら変更
  @JsonKey(name: 'addressId')
  int get addressId => throw _privateConstructorUsedError;

  /// タグ
  @JsonKey(name: 'tagIds')
  List<Tag>? get tagIds => throw _privateConstructorUsedError;

  /// 説明
  @JsonKey(name: 'explanation')
  String get explanation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateRoomFormCopyWith<CreateRoomForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRoomFormCopyWith<$Res> {
  factory $CreateRoomFormCopyWith(
          CreateRoomForm value, $Res Function(CreateRoomForm) then) =
      _$CreateRoomFormCopyWithImpl<$Res, CreateRoomForm>;
  @useResult
  $Res call(
      {@JsonKey(name: 'roomName') String roomName,
      @JsonKey(name: 'applicationDeadline') String applicationDeadline,
      @JsonKey(name: 'membersNum') int membersNum,
      @JsonKey(name: 'ageGroup') @AgeGroupConverter() AgeGroup ageGroup,
      @JsonKey(name: 'addressId') int addressId,
      @JsonKey(name: 'tagIds') List<Tag>? tagIds,
      @JsonKey(name: 'explanation') String explanation});
}

/// @nodoc
class _$CreateRoomFormCopyWithImpl<$Res, $Val extends CreateRoomForm>
    implements $CreateRoomFormCopyWith<$Res> {
  _$CreateRoomFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomName = null,
    Object? applicationDeadline = null,
    Object? membersNum = null,
    Object? ageGroup = null,
    Object? addressId = null,
    Object? tagIds = freezed,
    Object? explanation = null,
  }) {
    return _then(_value.copyWith(
      roomName: null == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      applicationDeadline: null == applicationDeadline
          ? _value.applicationDeadline
          : applicationDeadline // ignore: cast_nullable_to_non_nullable
              as String,
      membersNum: null == membersNum
          ? _value.membersNum
          : membersNum // ignore: cast_nullable_to_non_nullable
              as int,
      ageGroup: null == ageGroup
          ? _value.ageGroup
          : ageGroup // ignore: cast_nullable_to_non_nullable
              as AgeGroup,
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int,
      tagIds: freezed == tagIds
          ? _value.tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateRoomFormCopyWith<$Res>
    implements $CreateRoomFormCopyWith<$Res> {
  factory _$$_CreateRoomFormCopyWith(
          _$_CreateRoomForm value, $Res Function(_$_CreateRoomForm) then) =
      __$$_CreateRoomFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'roomName') String roomName,
      @JsonKey(name: 'applicationDeadline') String applicationDeadline,
      @JsonKey(name: 'membersNum') int membersNum,
      @JsonKey(name: 'ageGroup') @AgeGroupConverter() AgeGroup ageGroup,
      @JsonKey(name: 'addressId') int addressId,
      @JsonKey(name: 'tagIds') List<Tag>? tagIds,
      @JsonKey(name: 'explanation') String explanation});
}

/// @nodoc
class __$$_CreateRoomFormCopyWithImpl<$Res>
    extends _$CreateRoomFormCopyWithImpl<$Res, _$_CreateRoomForm>
    implements _$$_CreateRoomFormCopyWith<$Res> {
  __$$_CreateRoomFormCopyWithImpl(
      _$_CreateRoomForm _value, $Res Function(_$_CreateRoomForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomName = null,
    Object? applicationDeadline = null,
    Object? membersNum = null,
    Object? ageGroup = null,
    Object? addressId = null,
    Object? tagIds = freezed,
    Object? explanation = null,
  }) {
    return _then(_$_CreateRoomForm(
      roomName: null == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      applicationDeadline: null == applicationDeadline
          ? _value.applicationDeadline
          : applicationDeadline // ignore: cast_nullable_to_non_nullable
              as String,
      membersNum: null == membersNum
          ? _value.membersNum
          : membersNum // ignore: cast_nullable_to_non_nullable
              as int,
      ageGroup: null == ageGroup
          ? _value.ageGroup
          : ageGroup // ignore: cast_nullable_to_non_nullable
              as AgeGroup,
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int,
      tagIds: freezed == tagIds
          ? _value._tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateRoomForm implements _CreateRoomForm {
  _$_CreateRoomForm(
      {@JsonKey(name: 'roomName') required this.roomName,
      @JsonKey(name: 'applicationDeadline') required this.applicationDeadline,
      @JsonKey(name: 'membersNum') required this.membersNum,
      @JsonKey(name: 'ageGroup') @AgeGroupConverter() required this.ageGroup,
      @JsonKey(name: 'addressId') required this.addressId,
      @JsonKey(name: 'tagIds') final List<Tag>? tagIds,
      @JsonKey(name: 'explanation') required this.explanation})
      : _tagIds = tagIds;

  factory _$_CreateRoomForm.fromJson(Map<String, dynamic> json) =>
      _$$_CreateRoomFormFromJson(json);

  /// タイトル
  @override
  @JsonKey(name: 'roomName')
  final String roomName;

  /// 締切
  @override
  @JsonKey(name: 'applicationDeadline')
  final String applicationDeadline;

  /// 募集人数
  @override
  @JsonKey(name: 'membersNum')
  final int membersNum;

  /// 募集年齢層
  @override
  @JsonKey(name: 'ageGroup')
  @AgeGroupConverter()
  final AgeGroup ageGroup;

  /// 開催場所
  /// TOTO: int => Adress
  /// APIできたら変更
  @override
  @JsonKey(name: 'addressId')
  final int addressId;

  /// タグ
  final List<Tag>? _tagIds;

  /// タグ
  @override
  @JsonKey(name: 'tagIds')
  List<Tag>? get tagIds {
    final value = _tagIds;
    if (value == null) return null;
    if (_tagIds is EqualUnmodifiableListView) return _tagIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// 説明
  @override
  @JsonKey(name: 'explanation')
  final String explanation;

  @override
  String toString() {
    return 'CreateRoomForm(roomName: $roomName, applicationDeadline: $applicationDeadline, membersNum: $membersNum, ageGroup: $ageGroup, addressId: $addressId, tagIds: $tagIds, explanation: $explanation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateRoomForm &&
            (identical(other.roomName, roomName) ||
                other.roomName == roomName) &&
            (identical(other.applicationDeadline, applicationDeadline) ||
                other.applicationDeadline == applicationDeadline) &&
            (identical(other.membersNum, membersNum) ||
                other.membersNum == membersNum) &&
            (identical(other.ageGroup, ageGroup) ||
                other.ageGroup == ageGroup) &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId) &&
            const DeepCollectionEquality().equals(other._tagIds, _tagIds) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      roomName,
      applicationDeadline,
      membersNum,
      ageGroup,
      addressId,
      const DeepCollectionEquality().hash(_tagIds),
      explanation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateRoomFormCopyWith<_$_CreateRoomForm> get copyWith =>
      __$$_CreateRoomFormCopyWithImpl<_$_CreateRoomForm>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateRoomFormToJson(
      this,
    );
  }
}

abstract class _CreateRoomForm implements CreateRoomForm {
  factory _CreateRoomForm(
      {@JsonKey(name: 'roomName')
          required final String roomName,
      @JsonKey(name: 'applicationDeadline')
          required final String applicationDeadline,
      @JsonKey(name: 'membersNum')
          required final int membersNum,
      @JsonKey(name: 'ageGroup')
      @AgeGroupConverter()
          required final AgeGroup ageGroup,
      @JsonKey(name: 'addressId')
          required final int addressId,
      @JsonKey(name: 'tagIds')
          final List<Tag>? tagIds,
      @JsonKey(name: 'explanation')
          required final String explanation}) = _$_CreateRoomForm;

  factory _CreateRoomForm.fromJson(Map<String, dynamic> json) =
      _$_CreateRoomForm.fromJson;

  @override

  /// タイトル
  @JsonKey(name: 'roomName')
  String get roomName;
  @override

  /// 締切
  @JsonKey(name: 'applicationDeadline')
  String get applicationDeadline;
  @override

  /// 募集人数
  @JsonKey(name: 'membersNum')
  int get membersNum;
  @override

  /// 募集年齢層
  @JsonKey(name: 'ageGroup')
  @AgeGroupConverter()
  AgeGroup get ageGroup;
  @override

  /// 開催場所
  /// TOTO: int => Adress
  /// APIできたら変更
  @JsonKey(name: 'addressId')
  int get addressId;
  @override

  /// タグ
  @JsonKey(name: 'tagIds')
  List<Tag>? get tagIds;
  @override

  /// 説明
  @JsonKey(name: 'explanation')
  String get explanation;
  @override
  @JsonKey(ignore: true)
  _$$_CreateRoomFormCopyWith<_$_CreateRoomForm> get copyWith =>
      throw _privateConstructorUsedError;
}
