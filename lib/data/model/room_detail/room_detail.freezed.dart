// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoomDetail _$RoomDetailFromJson(Map<String, dynamic> json) {
  return _RoomDetail.fromJson(json);
}

/// @nodoc
mixin _$RoomDetail {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'roomName')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'applicationDeadline')
  String get applicationDeadline => throw _privateConstructorUsedError;
  @JsonKey(name: 'hostUser')
  ParticipatingUser get hostUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'participants')
  List<ParticipatingUser>? get participants =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  Address get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'tags')
  List<Tag>? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  @RoomStatusConverter()
  RoomStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: "joinRequestStatus")
  @RoomJoinRequestStatusConverter()
  RoomJoinRequestStatus? get joinRequestStatus =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'membersNum')
  int get membersNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'isHost')
  bool get isHost => throw _privateConstructorUsedError;
  @JsonKey(name: 'isMember')
  bool get isMember => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomDetailCopyWith<RoomDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomDetailCopyWith<$Res> {
  factory $RoomDetailCopyWith(
          RoomDetail value, $Res Function(RoomDetail) then) =
      _$RoomDetailCopyWithImpl<$Res, RoomDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id')
          String id,
      @JsonKey(name: 'roomName')
          String title,
      @JsonKey(name: 'applicationDeadline')
          String applicationDeadline,
      @JsonKey(name: 'hostUser')
          ParticipatingUser hostUser,
      @JsonKey(name: 'participants')
          List<ParticipatingUser>? participants,
      @JsonKey(name: 'address')
          Address address,
      @JsonKey(name: 'tags')
          List<Tag>? tags,
      @JsonKey(name: "status")
      @RoomStatusConverter()
          RoomStatus status,
      @JsonKey(name: "joinRequestStatus")
      @RoomJoinRequestStatusConverter()
          RoomJoinRequestStatus? joinRequestStatus,
      @JsonKey(name: 'membersNum')
          int membersNum,
      @JsonKey(name: 'isHost')
          bool isHost,
      @JsonKey(name: 'isMember')
          bool isMember});

  $ParticipatingUserCopyWith<$Res> get hostUser;
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class _$RoomDetailCopyWithImpl<$Res, $Val extends RoomDetail>
    implements $RoomDetailCopyWith<$Res> {
  _$RoomDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? applicationDeadline = null,
    Object? hostUser = null,
    Object? participants = freezed,
    Object? address = null,
    Object? tags = freezed,
    Object? status = null,
    Object? joinRequestStatus = freezed,
    Object? membersNum = null,
    Object? isHost = null,
    Object? isMember = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      applicationDeadline: null == applicationDeadline
          ? _value.applicationDeadline
          : applicationDeadline // ignore: cast_nullable_to_non_nullable
              as String,
      hostUser: null == hostUser
          ? _value.hostUser
          : hostUser // ignore: cast_nullable_to_non_nullable
              as ParticipatingUser,
      participants: freezed == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<ParticipatingUser>?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RoomStatus,
      joinRequestStatus: freezed == joinRequestStatus
          ? _value.joinRequestStatus
          : joinRequestStatus // ignore: cast_nullable_to_non_nullable
              as RoomJoinRequestStatus?,
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
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ParticipatingUserCopyWith<$Res> get hostUser {
    return $ParticipatingUserCopyWith<$Res>(_value.hostUser, (value) {
      return _then(_value.copyWith(hostUser: value) as $Val);
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
abstract class _$$_RoomDetailCopyWith<$Res>
    implements $RoomDetailCopyWith<$Res> {
  factory _$$_RoomDetailCopyWith(
          _$_RoomDetail value, $Res Function(_$_RoomDetail) then) =
      __$$_RoomDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id')
          String id,
      @JsonKey(name: 'roomName')
          String title,
      @JsonKey(name: 'applicationDeadline')
          String applicationDeadline,
      @JsonKey(name: 'hostUser')
          ParticipatingUser hostUser,
      @JsonKey(name: 'participants')
          List<ParticipatingUser>? participants,
      @JsonKey(name: 'address')
          Address address,
      @JsonKey(name: 'tags')
          List<Tag>? tags,
      @JsonKey(name: "status")
      @RoomStatusConverter()
          RoomStatus status,
      @JsonKey(name: "joinRequestStatus")
      @RoomJoinRequestStatusConverter()
          RoomJoinRequestStatus? joinRequestStatus,
      @JsonKey(name: 'membersNum')
          int membersNum,
      @JsonKey(name: 'isHost')
          bool isHost,
      @JsonKey(name: 'isMember')
          bool isMember});

  @override
  $ParticipatingUserCopyWith<$Res> get hostUser;
  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$_RoomDetailCopyWithImpl<$Res>
    extends _$RoomDetailCopyWithImpl<$Res, _$_RoomDetail>
    implements _$$_RoomDetailCopyWith<$Res> {
  __$$_RoomDetailCopyWithImpl(
      _$_RoomDetail _value, $Res Function(_$_RoomDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? applicationDeadline = null,
    Object? hostUser = null,
    Object? participants = freezed,
    Object? address = null,
    Object? tags = freezed,
    Object? status = null,
    Object? joinRequestStatus = freezed,
    Object? membersNum = null,
    Object? isHost = null,
    Object? isMember = null,
  }) {
    return _then(_$_RoomDetail(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      applicationDeadline: null == applicationDeadline
          ? _value.applicationDeadline
          : applicationDeadline // ignore: cast_nullable_to_non_nullable
              as String,
      hostUser: null == hostUser
          ? _value.hostUser
          : hostUser // ignore: cast_nullable_to_non_nullable
              as ParticipatingUser,
      participants: freezed == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<ParticipatingUser>?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RoomStatus,
      joinRequestStatus: freezed == joinRequestStatus
          ? _value.joinRequestStatus
          : joinRequestStatus // ignore: cast_nullable_to_non_nullable
              as RoomJoinRequestStatus?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoomDetail implements _RoomDetail {
  const _$_RoomDetail(
      {@JsonKey(name: 'id')
          required this.id,
      @JsonKey(name: 'roomName')
          required this.title,
      @JsonKey(name: 'applicationDeadline')
          required this.applicationDeadline,
      @JsonKey(name: 'hostUser')
          required this.hostUser,
      @JsonKey(name: 'participants')
          final List<ParticipatingUser>? participants,
      @JsonKey(name: 'address')
          required this.address,
      @JsonKey(name: 'tags')
          final List<Tag>? tags,
      @JsonKey(name: "status")
      @RoomStatusConverter()
          required this.status,
      @JsonKey(name: "joinRequestStatus")
      @RoomJoinRequestStatusConverter()
          this.joinRequestStatus,
      @JsonKey(name: 'membersNum')
          required this.membersNum,
      @JsonKey(name: 'isHost')
          required this.isHost,
      @JsonKey(name: 'isMember')
          required this.isMember})
      : _participants = participants,
        _tags = tags;

  factory _$_RoomDetail.fromJson(Map<String, dynamic> json) =>
      _$$_RoomDetailFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'roomName')
  final String title;
  @override
  @JsonKey(name: 'applicationDeadline')
  final String applicationDeadline;
  @override
  @JsonKey(name: 'hostUser')
  final ParticipatingUser hostUser;
  final List<ParticipatingUser>? _participants;
  @override
  @JsonKey(name: 'participants')
  List<ParticipatingUser>? get participants {
    final value = _participants;
    if (value == null) return null;
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'address')
  final Address address;
  final List<Tag>? _tags;
  @override
  @JsonKey(name: 'tags')
  List<Tag>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "status")
  @RoomStatusConverter()
  final RoomStatus status;
  @override
  @JsonKey(name: "joinRequestStatus")
  @RoomJoinRequestStatusConverter()
  final RoomJoinRequestStatus? joinRequestStatus;
  @override
  @JsonKey(name: 'membersNum')
  final int membersNum;
  @override
  @JsonKey(name: 'isHost')
  final bool isHost;
  @override
  @JsonKey(name: 'isMember')
  final bool isMember;

  @override
  String toString() {
    return 'RoomDetail(id: $id, title: $title, applicationDeadline: $applicationDeadline, hostUser: $hostUser, participants: $participants, address: $address, tags: $tags, status: $status, joinRequestStatus: $joinRequestStatus, membersNum: $membersNum, isHost: $isHost, isMember: $isMember)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomDetail &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.applicationDeadline, applicationDeadline) ||
                other.applicationDeadline == applicationDeadline) &&
            (identical(other.hostUser, hostUser) ||
                other.hostUser == hostUser) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.joinRequestStatus, joinRequestStatus) ||
                other.joinRequestStatus == joinRequestStatus) &&
            (identical(other.membersNum, membersNum) ||
                other.membersNum == membersNum) &&
            (identical(other.isHost, isHost) || other.isHost == isHost) &&
            (identical(other.isMember, isMember) ||
                other.isMember == isMember));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      applicationDeadline,
      hostUser,
      const DeepCollectionEquality().hash(_participants),
      address,
      const DeepCollectionEquality().hash(_tags),
      status,
      joinRequestStatus,
      membersNum,
      isHost,
      isMember);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomDetailCopyWith<_$_RoomDetail> get copyWith =>
      __$$_RoomDetailCopyWithImpl<_$_RoomDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomDetailToJson(
      this,
    );
  }
}

abstract class _RoomDetail implements RoomDetail {
  const factory _RoomDetail(
      {@JsonKey(name: 'id')
          required final String id,
      @JsonKey(name: 'roomName')
          required final String title,
      @JsonKey(name: 'applicationDeadline')
          required final String applicationDeadline,
      @JsonKey(name: 'hostUser')
          required final ParticipatingUser hostUser,
      @JsonKey(name: 'participants')
          final List<ParticipatingUser>? participants,
      @JsonKey(name: 'address')
          required final Address address,
      @JsonKey(name: 'tags')
          final List<Tag>? tags,
      @JsonKey(name: "status")
      @RoomStatusConverter()
          required final RoomStatus status,
      @JsonKey(name: "joinRequestStatus")
      @RoomJoinRequestStatusConverter()
          final RoomJoinRequestStatus? joinRequestStatus,
      @JsonKey(name: 'membersNum')
          required final int membersNum,
      @JsonKey(name: 'isHost')
          required final bool isHost,
      @JsonKey(name: 'isMember')
          required final bool isMember}) = _$_RoomDetail;

  factory _RoomDetail.fromJson(Map<String, dynamic> json) =
      _$_RoomDetail.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'roomName')
  String get title;
  @override
  @JsonKey(name: 'applicationDeadline')
  String get applicationDeadline;
  @override
  @JsonKey(name: 'hostUser')
  ParticipatingUser get hostUser;
  @override
  @JsonKey(name: 'participants')
  List<ParticipatingUser>? get participants;
  @override
  @JsonKey(name: 'address')
  Address get address;
  @override
  @JsonKey(name: 'tags')
  List<Tag>? get tags;
  @override
  @JsonKey(name: "status")
  @RoomStatusConverter()
  RoomStatus get status;
  @override
  @JsonKey(name: "joinRequestStatus")
  @RoomJoinRequestStatusConverter()
  RoomJoinRequestStatus? get joinRequestStatus;
  @override
  @JsonKey(name: 'membersNum')
  int get membersNum;
  @override
  @JsonKey(name: 'isHost')
  bool get isHost;
  @override
  @JsonKey(name: 'isMember')
  bool get isMember;
  @override
  @JsonKey(ignore: true)
  _$$_RoomDetailCopyWith<_$_RoomDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
