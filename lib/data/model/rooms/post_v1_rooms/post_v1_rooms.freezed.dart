// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_v1_rooms.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostV1RoomsRequest _$PostV1RoomsRequestFromJson(Map<String, dynamic> json) {
  return _PostV1RoomsRequest.fromJson(json);
}

/// @nodoc
mixin _$PostV1RoomsRequest {
  @JsonKey(name: 'roomName')
  String get roomName => throw _privateConstructorUsedError;
  @JsonKey(name: 'applicationDeadline')
  String get applicationDeadline => throw _privateConstructorUsedError;
  @JsonKey(name: 'membersNum')
  int get membersNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'ageGroup')
  @AgeGroupConverter()
  AgeGroup get ageGroup => throw _privateConstructorUsedError;
  @JsonKey(name: 'addressId')
  int get addressId => throw _privateConstructorUsedError;
  @JsonKey(name: 'explanation')
  String get explanation => throw _privateConstructorUsedError;
  @JsonKey(name: 'tagIds')
  List<Tag>? get tagIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostV1RoomsRequestCopyWith<PostV1RoomsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostV1RoomsRequestCopyWith<$Res> {
  factory $PostV1RoomsRequestCopyWith(
          PostV1RoomsRequest value, $Res Function(PostV1RoomsRequest) then) =
      _$PostV1RoomsRequestCopyWithImpl<$Res, PostV1RoomsRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'roomName') String roomName,
      @JsonKey(name: 'applicationDeadline') String applicationDeadline,
      @JsonKey(name: 'membersNum') int membersNum,
      @JsonKey(name: 'ageGroup') @AgeGroupConverter() AgeGroup ageGroup,
      @JsonKey(name: 'addressId') int addressId,
      @JsonKey(name: 'explanation') String explanation,
      @JsonKey(name: 'tagIds') List<Tag>? tagIds});
}

/// @nodoc
class _$PostV1RoomsRequestCopyWithImpl<$Res, $Val extends PostV1RoomsRequest>
    implements $PostV1RoomsRequestCopyWith<$Res> {
  _$PostV1RoomsRequestCopyWithImpl(this._value, this._then);

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
    Object? explanation = null,
    Object? tagIds = freezed,
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
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      tagIds: freezed == tagIds
          ? _value.tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostV1RoomsRequestCopyWith<$Res>
    implements $PostV1RoomsRequestCopyWith<$Res> {
  factory _$$_PostV1RoomsRequestCopyWith(_$_PostV1RoomsRequest value,
          $Res Function(_$_PostV1RoomsRequest) then) =
      __$$_PostV1RoomsRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'roomName') String roomName,
      @JsonKey(name: 'applicationDeadline') String applicationDeadline,
      @JsonKey(name: 'membersNum') int membersNum,
      @JsonKey(name: 'ageGroup') @AgeGroupConverter() AgeGroup ageGroup,
      @JsonKey(name: 'addressId') int addressId,
      @JsonKey(name: 'explanation') String explanation,
      @JsonKey(name: 'tagIds') List<Tag>? tagIds});
}

/// @nodoc
class __$$_PostV1RoomsRequestCopyWithImpl<$Res>
    extends _$PostV1RoomsRequestCopyWithImpl<$Res, _$_PostV1RoomsRequest>
    implements _$$_PostV1RoomsRequestCopyWith<$Res> {
  __$$_PostV1RoomsRequestCopyWithImpl(
      _$_PostV1RoomsRequest _value, $Res Function(_$_PostV1RoomsRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomName = null,
    Object? applicationDeadline = null,
    Object? membersNum = null,
    Object? ageGroup = null,
    Object? addressId = null,
    Object? explanation = null,
    Object? tagIds = freezed,
  }) {
    return _then(_$_PostV1RoomsRequest(
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
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      tagIds: freezed == tagIds
          ? _value._tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostV1RoomsRequest implements _PostV1RoomsRequest {
  _$_PostV1RoomsRequest(
      {@JsonKey(name: 'roomName') required this.roomName,
      @JsonKey(name: 'applicationDeadline') required this.applicationDeadline,
      @JsonKey(name: 'membersNum') required this.membersNum,
      @JsonKey(name: 'ageGroup') @AgeGroupConverter() required this.ageGroup,
      @JsonKey(name: 'addressId') required this.addressId,
      @JsonKey(name: 'explanation') required this.explanation,
      @JsonKey(name: 'tagIds') final List<Tag>? tagIds})
      : _tagIds = tagIds;

  factory _$_PostV1RoomsRequest.fromJson(Map<String, dynamic> json) =>
      _$$_PostV1RoomsRequestFromJson(json);

  @override
  @JsonKey(name: 'roomName')
  final String roomName;
  @override
  @JsonKey(name: 'applicationDeadline')
  final String applicationDeadline;
  @override
  @JsonKey(name: 'membersNum')
  final int membersNum;
  @override
  @JsonKey(name: 'ageGroup')
  @AgeGroupConverter()
  final AgeGroup ageGroup;
  @override
  @JsonKey(name: 'addressId')
  final int addressId;
  @override
  @JsonKey(name: 'explanation')
  final String explanation;
  final List<Tag>? _tagIds;
  @override
  @JsonKey(name: 'tagIds')
  List<Tag>? get tagIds {
    final value = _tagIds;
    if (value == null) return null;
    if (_tagIds is EqualUnmodifiableListView) return _tagIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PostV1RoomsRequest(roomName: $roomName, applicationDeadline: $applicationDeadline, membersNum: $membersNum, ageGroup: $ageGroup, addressId: $addressId, explanation: $explanation, tagIds: $tagIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostV1RoomsRequest &&
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
            (identical(other.explanation, explanation) ||
                other.explanation == explanation) &&
            const DeepCollectionEquality().equals(other._tagIds, _tagIds));
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
      explanation,
      const DeepCollectionEquality().hash(_tagIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostV1RoomsRequestCopyWith<_$_PostV1RoomsRequest> get copyWith =>
      __$$_PostV1RoomsRequestCopyWithImpl<_$_PostV1RoomsRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostV1RoomsRequestToJson(
      this,
    );
  }
}

abstract class _PostV1RoomsRequest implements PostV1RoomsRequest {
  factory _PostV1RoomsRequest(
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
      @JsonKey(name: 'explanation')
          required final String explanation,
      @JsonKey(name: 'tagIds')
          final List<Tag>? tagIds}) = _$_PostV1RoomsRequest;

  factory _PostV1RoomsRequest.fromJson(Map<String, dynamic> json) =
      _$_PostV1RoomsRequest.fromJson;

  @override
  @JsonKey(name: 'roomName')
  String get roomName;
  @override
  @JsonKey(name: 'applicationDeadline')
  String get applicationDeadline;
  @override
  @JsonKey(name: 'membersNum')
  int get membersNum;
  @override
  @JsonKey(name: 'ageGroup')
  @AgeGroupConverter()
  AgeGroup get ageGroup;
  @override
  @JsonKey(name: 'addressId')
  int get addressId;
  @override
  @JsonKey(name: 'explanation')
  String get explanation;
  @override
  @JsonKey(name: 'tagIds')
  List<Tag>? get tagIds;
  @override
  @JsonKey(ignore: true)
  _$$_PostV1RoomsRequestCopyWith<_$_PostV1RoomsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
