// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoomDetailState {
  String get roomId => throw _privateConstructorUsedError;
  AsyncValue<RoomDetailStateInfo> get detail =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomDetailStateCopyWith<RoomDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomDetailStateCopyWith<$Res> {
  factory $RoomDetailStateCopyWith(
          RoomDetailState value, $Res Function(RoomDetailState) then) =
      _$RoomDetailStateCopyWithImpl<$Res, RoomDetailState>;
  @useResult
  $Res call({String roomId, AsyncValue<RoomDetailStateInfo> detail});
}

/// @nodoc
class _$RoomDetailStateCopyWithImpl<$Res, $Val extends RoomDetailState>
    implements $RoomDetailStateCopyWith<$Res> {
  _$RoomDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? detail = null,
  }) {
    return _then(_value.copyWith(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as AsyncValue<RoomDetailStateInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoomDetailStateCopyWith<$Res>
    implements $RoomDetailStateCopyWith<$Res> {
  factory _$$_RoomDetailStateCopyWith(
          _$_RoomDetailState value, $Res Function(_$_RoomDetailState) then) =
      __$$_RoomDetailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String roomId, AsyncValue<RoomDetailStateInfo> detail});
}

/// @nodoc
class __$$_RoomDetailStateCopyWithImpl<$Res>
    extends _$RoomDetailStateCopyWithImpl<$Res, _$_RoomDetailState>
    implements _$$_RoomDetailStateCopyWith<$Res> {
  __$$_RoomDetailStateCopyWithImpl(
      _$_RoomDetailState _value, $Res Function(_$_RoomDetailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? detail = null,
  }) {
    return _then(_$_RoomDetailState(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as AsyncValue<RoomDetailStateInfo>,
    ));
  }
}

/// @nodoc

class _$_RoomDetailState implements _RoomDetailState {
  const _$_RoomDetailState(
      {required this.roomId, this.detail = const AsyncLoading()});

  @override
  final String roomId;
  @override
  @JsonKey()
  final AsyncValue<RoomDetailStateInfo> detail;

  @override
  String toString() {
    return 'RoomDetailState(roomId: $roomId, detail: $detail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomDetailState &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomId, detail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomDetailStateCopyWith<_$_RoomDetailState> get copyWith =>
      __$$_RoomDetailStateCopyWithImpl<_$_RoomDetailState>(this, _$identity);
}

abstract class _RoomDetailState implements RoomDetailState {
  const factory _RoomDetailState(
      {required final String roomId,
      final AsyncValue<RoomDetailStateInfo> detail}) = _$_RoomDetailState;

  @override
  String get roomId;
  @override
  AsyncValue<RoomDetailStateInfo> get detail;
  @override
  @JsonKey(ignore: true)
  _$$_RoomDetailStateCopyWith<_$_RoomDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RoomDetailStateInfo {
  String get title => throw _privateConstructorUsedError;
  ParticipatingUser get host => throw _privateConstructorUsedError;
  String get explanation => throw _privateConstructorUsedError;
  List<ParticipatingUser> get members => throw _privateConstructorUsedError;
  List<Tag> get tags => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;
  int get membersNum => throw _privateConstructorUsedError;
  bool get isHost => throw _privateConstructorUsedError;
  bool get isMember => throw _privateConstructorUsedError;
  RoomStatus get status => throw _privateConstructorUsedError;
  RoomJoinRequestStatus? get joinRequestStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomDetailStateInfoCopyWith<RoomDetailStateInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomDetailStateInfoCopyWith<$Res> {
  factory $RoomDetailStateInfoCopyWith(
          RoomDetailStateInfo value, $Res Function(RoomDetailStateInfo) then) =
      _$RoomDetailStateInfoCopyWithImpl<$Res, RoomDetailStateInfo>;
  @useResult
  $Res call(
      {String title,
      ParticipatingUser host,
      String explanation,
      List<ParticipatingUser> members,
      List<Tag> tags,
      Address address,
      int membersNum,
      bool isHost,
      bool isMember,
      RoomStatus status,
      RoomJoinRequestStatus? joinRequestStatus});

  $ParticipatingUserCopyWith<$Res> get host;
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class _$RoomDetailStateInfoCopyWithImpl<$Res, $Val extends RoomDetailStateInfo>
    implements $RoomDetailStateInfoCopyWith<$Res> {
  _$RoomDetailStateInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? host = null,
    Object? explanation = null,
    Object? members = null,
    Object? tags = null,
    Object? address = null,
    Object? membersNum = null,
    Object? isHost = null,
    Object? isMember = null,
    Object? status = null,
    Object? joinRequestStatus = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as ParticipatingUser,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<ParticipatingUser>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      membersNum: null == membersNum
          ? _value.membersNum
          : membersNum // ignore: cast_nullable_to_non_nullable
              as int,
      isHost: null == isHost
          ? _value.isHost
          : isHost // ignore: cast_nullable_to_non_nullable
              as bool,
      isMember: null == isMember
          ? _value.isMember
          : isMember // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RoomStatus,
      joinRequestStatus: freezed == joinRequestStatus
          ? _value.joinRequestStatus
          : joinRequestStatus // ignore: cast_nullable_to_non_nullable
              as RoomJoinRequestStatus?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ParticipatingUserCopyWith<$Res> get host {
    return $ParticipatingUserCopyWith<$Res>(_value.host, (value) {
      return _then(_value.copyWith(host: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RoomDetailStateInfoCopyWith<$Res>
    implements $RoomDetailStateInfoCopyWith<$Res> {
  factory _$$_RoomDetailStateInfoCopyWith(_$_RoomDetailStateInfo value,
          $Res Function(_$_RoomDetailStateInfo) then) =
      __$$_RoomDetailStateInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      ParticipatingUser host,
      String explanation,
      List<ParticipatingUser> members,
      List<Tag> tags,
      Address address,
      int membersNum,
      bool isHost,
      bool isMember,
      RoomStatus status,
      RoomJoinRequestStatus? joinRequestStatus});

  @override
  $ParticipatingUserCopyWith<$Res> get host;
  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$_RoomDetailStateInfoCopyWithImpl<$Res>
    extends _$RoomDetailStateInfoCopyWithImpl<$Res, _$_RoomDetailStateInfo>
    implements _$$_RoomDetailStateInfoCopyWith<$Res> {
  __$$_RoomDetailStateInfoCopyWithImpl(_$_RoomDetailStateInfo _value,
      $Res Function(_$_RoomDetailStateInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? host = null,
    Object? explanation = null,
    Object? members = null,
    Object? tags = null,
    Object? address = null,
    Object? membersNum = null,
    Object? isHost = null,
    Object? isMember = null,
    Object? status = null,
    Object? joinRequestStatus = freezed,
  }) {
    return _then(_$_RoomDetailStateInfo(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as ParticipatingUser,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<ParticipatingUser>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      membersNum: null == membersNum
          ? _value.membersNum
          : membersNum // ignore: cast_nullable_to_non_nullable
              as int,
      isHost: null == isHost
          ? _value.isHost
          : isHost // ignore: cast_nullable_to_non_nullable
              as bool,
      isMember: null == isMember
          ? _value.isMember
          : isMember // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RoomStatus,
      joinRequestStatus: freezed == joinRequestStatus
          ? _value.joinRequestStatus
          : joinRequestStatus // ignore: cast_nullable_to_non_nullable
              as RoomJoinRequestStatus?,
    ));
  }
}

/// @nodoc

class _$_RoomDetailStateInfo implements _RoomDetailStateInfo {
  const _$_RoomDetailStateInfo(
      {required this.title,
      required this.host,
      required this.explanation,
      required final List<ParticipatingUser> members,
      required final List<Tag> tags,
      required this.address,
      required this.membersNum,
      required this.isHost,
      required this.isMember,
      required this.status,
      required this.joinRequestStatus})
      : _members = members,
        _tags = tags;

  @override
  final String title;
  @override
  final ParticipatingUser host;
  @override
  final String explanation;
  final List<ParticipatingUser> _members;
  @override
  List<ParticipatingUser> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  final List<Tag> _tags;
  @override
  List<Tag> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final Address address;
  @override
  final int membersNum;
  @override
  final bool isHost;
  @override
  final bool isMember;
  @override
  final RoomStatus status;
  @override
  final RoomJoinRequestStatus? joinRequestStatus;

  @override
  String toString() {
    return 'RoomDetailStateInfo(title: $title, host: $host, explanation: $explanation, members: $members, tags: $tags, address: $address, membersNum: $membersNum, isHost: $isHost, isMember: $isMember, status: $status, joinRequestStatus: $joinRequestStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomDetailStateInfo &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.membersNum, membersNum) ||
                other.membersNum == membersNum) &&
            (identical(other.isHost, isHost) || other.isHost == isHost) &&
            (identical(other.isMember, isMember) ||
                other.isMember == isMember) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.joinRequestStatus, joinRequestStatus) ||
                other.joinRequestStatus == joinRequestStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      host,
      explanation,
      const DeepCollectionEquality().hash(_members),
      const DeepCollectionEquality().hash(_tags),
      address,
      membersNum,
      isHost,
      isMember,
      status,
      joinRequestStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomDetailStateInfoCopyWith<_$_RoomDetailStateInfo> get copyWith =>
      __$$_RoomDetailStateInfoCopyWithImpl<_$_RoomDetailStateInfo>(
          this, _$identity);
}

abstract class _RoomDetailStateInfo implements RoomDetailStateInfo {
  const factory _RoomDetailStateInfo(
          {required final String title,
          required final ParticipatingUser host,
          required final String explanation,
          required final List<ParticipatingUser> members,
          required final List<Tag> tags,
          required final Address address,
          required final int membersNum,
          required final bool isHost,
          required final bool isMember,
          required final RoomStatus status,
          required final RoomJoinRequestStatus? joinRequestStatus}) =
      _$_RoomDetailStateInfo;

  @override
  String get title;
  @override
  ParticipatingUser get host;
  @override
  String get explanation;
  @override
  List<ParticipatingUser> get members;
  @override
  List<Tag> get tags;
  @override
  Address get address;
  @override
  int get membersNum;
  @override
  bool get isHost;
  @override
  bool get isMember;
  @override
  RoomStatus get status;
  @override
  RoomJoinRequestStatus? get joinRequestStatus;
  @override
  @JsonKey(ignore: true)
  _$$_RoomDetailStateInfoCopyWith<_$_RoomDetailStateInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
