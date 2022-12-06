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
  @JsonKey(name: 'isHost')
  bool get isHost => throw _privateConstructorUsedError;
  @JsonKey(name: 'isMember')
  bool get isMember => throw _privateConstructorUsedError;
  @JsonKey(name: 'membersNum')
  int get membersNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'participants')
  List<dynamic> get participants => throw _privateConstructorUsedError;
  @JsonKey(name: 'roomName')
  String get roomName => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'tags')
  List<dynamic> get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'applicationDeadline')
  String get applicationDeadline => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  Address get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'hostUser')
  FortuneUser get hostUser => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'isHost') bool isHost,
      @JsonKey(name: 'isMember') bool isMember,
      @JsonKey(name: 'membersNum') int membersNum,
      @JsonKey(name: 'participants') List<dynamic> participants,
      @JsonKey(name: 'roomName') String roomName,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'tags') List<dynamic> tags,
      @JsonKey(name: 'applicationDeadline') String applicationDeadline,
      @JsonKey(name: 'address') Address address,
      @JsonKey(name: 'hostUser') FortuneUser hostUser});

  $AddressCopyWith<$Res> get address;
  $FortuneUserCopyWith<$Res> get hostUser;
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
    Object? isHost = null,
    Object? isMember = null,
    Object? membersNum = null,
    Object? participants = null,
    Object? roomName = null,
    Object? status = null,
    Object? tags = null,
    Object? applicationDeadline = null,
    Object? address = null,
    Object? hostUser = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isHost: null == isHost
          ? _value.isHost
          : isHost // ignore: cast_nullable_to_non_nullable
              as bool,
      isMember: null == isMember
          ? _value.isMember
          : isMember // ignore: cast_nullable_to_non_nullable
              as bool,
      membersNum: null == membersNum
          ? _value.membersNum
          : membersNum // ignore: cast_nullable_to_non_nullable
              as int,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      roomName: null == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      applicationDeadline: null == applicationDeadline
          ? _value.applicationDeadline
          : applicationDeadline // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      hostUser: null == hostUser
          ? _value.hostUser
          : hostUser // ignore: cast_nullable_to_non_nullable
              as FortuneUser,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FortuneUserCopyWith<$Res> get hostUser {
    return $FortuneUserCopyWith<$Res>(_value.hostUser, (value) {
      return _then(_value.copyWith(hostUser: value) as $Val);
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
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'isHost') bool isHost,
      @JsonKey(name: 'isMember') bool isMember,
      @JsonKey(name: 'membersNum') int membersNum,
      @JsonKey(name: 'participants') List<dynamic> participants,
      @JsonKey(name: 'roomName') String roomName,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'tags') List<dynamic> tags,
      @JsonKey(name: 'applicationDeadline') String applicationDeadline,
      @JsonKey(name: 'address') Address address,
      @JsonKey(name: 'hostUser') FortuneUser hostUser});

  @override
  $AddressCopyWith<$Res> get address;
  @override
  $FortuneUserCopyWith<$Res> get hostUser;
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
    Object? isHost = null,
    Object? isMember = null,
    Object? membersNum = null,
    Object? participants = null,
    Object? roomName = null,
    Object? status = null,
    Object? tags = null,
    Object? applicationDeadline = null,
    Object? address = null,
    Object? hostUser = null,
  }) {
    return _then(_$_RoomDetail(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isHost: null == isHost
          ? _value.isHost
          : isHost // ignore: cast_nullable_to_non_nullable
              as bool,
      isMember: null == isMember
          ? _value.isMember
          : isMember // ignore: cast_nullable_to_non_nullable
              as bool,
      membersNum: null == membersNum
          ? _value.membersNum
          : membersNum // ignore: cast_nullable_to_non_nullable
              as int,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      roomName: null == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      applicationDeadline: null == applicationDeadline
          ? _value.applicationDeadline
          : applicationDeadline // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      hostUser: null == hostUser
          ? _value.hostUser
          : hostUser // ignore: cast_nullable_to_non_nullable
              as FortuneUser,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoomDetail implements _RoomDetail {
  const _$_RoomDetail(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'isHost') required this.isHost,
      @JsonKey(name: 'isMember') required this.isMember,
      @JsonKey(name: 'membersNum') required this.membersNum,
      @JsonKey(name: 'participants') required final List<dynamic> participants,
      @JsonKey(name: 'roomName') required this.roomName,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'tags') required final List<dynamic> tags,
      @JsonKey(name: 'applicationDeadline') required this.applicationDeadline,
      @JsonKey(name: 'address') required this.address,
      @JsonKey(name: 'hostUser') required this.hostUser})
      : _participants = participants,
        _tags = tags;

  factory _$_RoomDetail.fromJson(Map<String, dynamic> json) =>
      _$$_RoomDetailFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'isHost')
  final bool isHost;
  @override
  @JsonKey(name: 'isMember')
  final bool isMember;
  @override
  @JsonKey(name: 'membersNum')
  final int membersNum;
  final List<dynamic> _participants;
  @override
  @JsonKey(name: 'participants')
  List<dynamic> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  @override
  @JsonKey(name: 'roomName')
  final String roomName;
  @override
  @JsonKey(name: 'status')
  final String status;
  final List<dynamic> _tags;
  @override
  @JsonKey(name: 'tags')
  List<dynamic> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  @JsonKey(name: 'applicationDeadline')
  final String applicationDeadline;
  @override
  @JsonKey(name: 'address')
  final Address address;
  @override
  @JsonKey(name: 'hostUser')
  final FortuneUser hostUser;

  @override
  String toString() {
    return 'RoomDetail(id: $id, isHost: $isHost, isMember: $isMember, membersNum: $membersNum, participants: $participants, roomName: $roomName, status: $status, tags: $tags, applicationDeadline: $applicationDeadline, address: $address, hostUser: $hostUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomDetail &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isHost, isHost) || other.isHost == isHost) &&
            (identical(other.isMember, isMember) ||
                other.isMember == isMember) &&
            (identical(other.membersNum, membersNum) ||
                other.membersNum == membersNum) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            (identical(other.roomName, roomName) ||
                other.roomName == roomName) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.applicationDeadline, applicationDeadline) ||
                other.applicationDeadline == applicationDeadline) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.hostUser, hostUser) ||
                other.hostUser == hostUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      isHost,
      isMember,
      membersNum,
      const DeepCollectionEquality().hash(_participants),
      roomName,
      status,
      const DeepCollectionEquality().hash(_tags),
      applicationDeadline,
      address,
      hostUser);

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
      @JsonKey(name: 'isHost')
          required final bool isHost,
      @JsonKey(name: 'isMember')
          required final bool isMember,
      @JsonKey(name: 'membersNum')
          required final int membersNum,
      @JsonKey(name: 'participants')
          required final List<dynamic> participants,
      @JsonKey(name: 'roomName')
          required final String roomName,
      @JsonKey(name: 'status')
          required final String status,
      @JsonKey(name: 'tags')
          required final List<dynamic> tags,
      @JsonKey(name: 'applicationDeadline')
          required final String applicationDeadline,
      @JsonKey(name: 'address')
          required final Address address,
      @JsonKey(name: 'hostUser')
          required final FortuneUser hostUser}) = _$_RoomDetail;

  factory _RoomDetail.fromJson(Map<String, dynamic> json) =
      _$_RoomDetail.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'isHost')
  bool get isHost;
  @override
  @JsonKey(name: 'isMember')
  bool get isMember;
  @override
  @JsonKey(name: 'membersNum')
  int get membersNum;
  @override
  @JsonKey(name: 'participants')
  List<dynamic> get participants;
  @override
  @JsonKey(name: 'roomName')
  String get roomName;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'tags')
  List<dynamic> get tags;
  @override
  @JsonKey(name: 'applicationDeadline')
  String get applicationDeadline;
  @override
  @JsonKey(name: 'address')
  Address get address;
  @override
  @JsonKey(name: 'hostUser')
  FortuneUser get hostUser;
  @override
  @JsonKey(ignore: true)
  _$$_RoomDetailCopyWith<_$_RoomDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
