// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'participating_room_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ParticipatingRoomListState {
  AsyncValue<List<HostState>> get host => throw _privateConstructorUsedError;
  AsyncValue<List<GuestState>> get guest => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParticipatingRoomListStateCopyWith<ParticipatingRoomListState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipatingRoomListStateCopyWith<$Res> {
  factory $ParticipatingRoomListStateCopyWith(ParticipatingRoomListState value,
          $Res Function(ParticipatingRoomListState) then) =
      _$ParticipatingRoomListStateCopyWithImpl<$Res,
          ParticipatingRoomListState>;
  @useResult
  $Res call(
      {AsyncValue<List<HostState>> host, AsyncValue<List<GuestState>> guest});
}

/// @nodoc
class _$ParticipatingRoomListStateCopyWithImpl<$Res,
        $Val extends ParticipatingRoomListState>
    implements $ParticipatingRoomListStateCopyWith<$Res> {
  _$ParticipatingRoomListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? host = null,
    Object? guest = null,
  }) {
    return _then(_value.copyWith(
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<HostState>>,
      guest: null == guest
          ? _value.guest
          : guest // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<GuestState>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ParticipatingRoomListStateCopyWith<$Res>
    implements $ParticipatingRoomListStateCopyWith<$Res> {
  factory _$$_ParticipatingRoomListStateCopyWith(
          _$_ParticipatingRoomListState value,
          $Res Function(_$_ParticipatingRoomListState) then) =
      __$$_ParticipatingRoomListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<HostState>> host, AsyncValue<List<GuestState>> guest});
}

/// @nodoc
class __$$_ParticipatingRoomListStateCopyWithImpl<$Res>
    extends _$ParticipatingRoomListStateCopyWithImpl<$Res,
        _$_ParticipatingRoomListState>
    implements _$$_ParticipatingRoomListStateCopyWith<$Res> {
  __$$_ParticipatingRoomListStateCopyWithImpl(
      _$_ParticipatingRoomListState _value,
      $Res Function(_$_ParticipatingRoomListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? host = null,
    Object? guest = null,
  }) {
    return _then(_$_ParticipatingRoomListState(
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<HostState>>,
      guest: null == guest
          ? _value.guest
          : guest // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<GuestState>>,
    ));
  }
}

/// @nodoc

class _$_ParticipatingRoomListState implements _ParticipatingRoomListState {
  const _$_ParticipatingRoomListState(
      {this.host = const AsyncLoading(), this.guest = const AsyncLoading()});

  @override
  @JsonKey()
  final AsyncValue<List<HostState>> host;
  @override
  @JsonKey()
  final AsyncValue<List<GuestState>> guest;

  @override
  String toString() {
    return 'ParticipatingRoomListState(host: $host, guest: $guest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParticipatingRoomListState &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.guest, guest) || other.guest == guest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, host, guest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParticipatingRoomListStateCopyWith<_$_ParticipatingRoomListState>
      get copyWith => __$$_ParticipatingRoomListStateCopyWithImpl<
          _$_ParticipatingRoomListState>(this, _$identity);
}

abstract class _ParticipatingRoomListState
    implements ParticipatingRoomListState {
  const factory _ParticipatingRoomListState(
          {final AsyncValue<List<HostState>> host,
          final AsyncValue<List<GuestState>> guest}) =
      _$_ParticipatingRoomListState;

  @override
  AsyncValue<List<HostState>> get host;
  @override
  AsyncValue<List<GuestState>> get guest;
  @override
  @JsonKey(ignore: true)
  _$$_ParticipatingRoomListStateCopyWith<_$_ParticipatingRoomListState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ParticipatingRoomListStateItem {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  List<String> get memberIcons => throw _privateConstructorUsedError;
  MembersNum get membersNum => throw _privateConstructorUsedError;
  RoomStatus get roomStatus => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String title,
            String address,
            List<String> memberIcons,
            MembersNum membersNum,
            int participationRequestsNum,
            RoomStatus roomStatus)
        host,
    required TResult Function(
            String id,
            String title,
            String address,
            List<String> memberIcons,
            MembersNum membersNum,
            RoomStatus roomStatus,
            RoomJoinRequestStatus requestStatus)
        guest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String title,
            String address,
            List<String> memberIcons,
            MembersNum membersNum,
            int participationRequestsNum,
            RoomStatus roomStatus)?
        host,
    TResult? Function(
            String id,
            String title,
            String address,
            List<String> memberIcons,
            MembersNum membersNum,
            RoomStatus roomStatus,
            RoomJoinRequestStatus requestStatus)?
        guest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String title,
            String address,
            List<String> memberIcons,
            MembersNum membersNum,
            int participationRequestsNum,
            RoomStatus roomStatus)?
        host,
    TResult Function(
            String id,
            String title,
            String address,
            List<String> memberIcons,
            MembersNum membersNum,
            RoomStatus roomStatus,
            RoomJoinRequestStatus requestStatus)?
        guest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HostState value) host,
    required TResult Function(GuestState value) guest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HostState value)? host,
    TResult? Function(GuestState value)? guest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HostState value)? host,
    TResult Function(GuestState value)? guest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParticipatingRoomListStateItemCopyWith<ParticipatingRoomListStateItem>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipatingRoomListStateItemCopyWith<$Res> {
  factory $ParticipatingRoomListStateItemCopyWith(
          ParticipatingRoomListStateItem value,
          $Res Function(ParticipatingRoomListStateItem) then) =
      _$ParticipatingRoomListStateItemCopyWithImpl<$Res,
          ParticipatingRoomListStateItem>;
  @useResult
  $Res call(
      {String id,
      String title,
      String address,
      List<String> memberIcons,
      MembersNum membersNum,
      RoomStatus roomStatus});

  $MembersNumCopyWith<$Res> get membersNum;
}

/// @nodoc
class _$ParticipatingRoomListStateItemCopyWithImpl<$Res,
        $Val extends ParticipatingRoomListStateItem>
    implements $ParticipatingRoomListStateItemCopyWith<$Res> {
  _$ParticipatingRoomListStateItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? address = null,
    Object? memberIcons = null,
    Object? membersNum = null,
    Object? roomStatus = null,
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
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      memberIcons: null == memberIcons
          ? _value.memberIcons
          : memberIcons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      membersNum: null == membersNum
          ? _value.membersNum
          : membersNum // ignore: cast_nullable_to_non_nullable
              as MembersNum,
      roomStatus: null == roomStatus
          ? _value.roomStatus
          : roomStatus // ignore: cast_nullable_to_non_nullable
              as RoomStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MembersNumCopyWith<$Res> get membersNum {
    return $MembersNumCopyWith<$Res>(_value.membersNum, (value) {
      return _then(_value.copyWith(membersNum: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HostStateCopyWith<$Res>
    implements $ParticipatingRoomListStateItemCopyWith<$Res> {
  factory _$$HostStateCopyWith(
          _$HostState value, $Res Function(_$HostState) then) =
      __$$HostStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String address,
      List<String> memberIcons,
      MembersNum membersNum,
      int participationRequestsNum,
      RoomStatus roomStatus});

  @override
  $MembersNumCopyWith<$Res> get membersNum;
}

/// @nodoc
class __$$HostStateCopyWithImpl<$Res>
    extends _$ParticipatingRoomListStateItemCopyWithImpl<$Res, _$HostState>
    implements _$$HostStateCopyWith<$Res> {
  __$$HostStateCopyWithImpl(
      _$HostState _value, $Res Function(_$HostState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? address = null,
    Object? memberIcons = null,
    Object? membersNum = null,
    Object? participationRequestsNum = null,
    Object? roomStatus = null,
  }) {
    return _then(_$HostState(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      memberIcons: null == memberIcons
          ? _value._memberIcons
          : memberIcons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      membersNum: null == membersNum
          ? _value.membersNum
          : membersNum // ignore: cast_nullable_to_non_nullable
              as MembersNum,
      participationRequestsNum: null == participationRequestsNum
          ? _value.participationRequestsNum
          : participationRequestsNum // ignore: cast_nullable_to_non_nullable
              as int,
      roomStatus: null == roomStatus
          ? _value.roomStatus
          : roomStatus // ignore: cast_nullable_to_non_nullable
              as RoomStatus,
    ));
  }
}

/// @nodoc

class _$HostState implements HostState {
  _$HostState(
      {required this.id,
      required this.title,
      required this.address,
      required final List<String> memberIcons,
      required this.membersNum,
      required this.participationRequestsNum,
      required this.roomStatus})
      : _memberIcons = memberIcons;

  @override
  final String id;
  @override
  final String title;
  @override
  final String address;
  final List<String> _memberIcons;
  @override
  List<String> get memberIcons {
    if (_memberIcons is EqualUnmodifiableListView) return _memberIcons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_memberIcons);
  }

  @override
  final MembersNum membersNum;
  @override
  final int participationRequestsNum;
  @override
  final RoomStatus roomStatus;

  @override
  String toString() {
    return 'ParticipatingRoomListStateItem.host(id: $id, title: $title, address: $address, memberIcons: $memberIcons, membersNum: $membersNum, participationRequestsNum: $participationRequestsNum, roomStatus: $roomStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HostState &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality()
                .equals(other._memberIcons, _memberIcons) &&
            (identical(other.membersNum, membersNum) ||
                other.membersNum == membersNum) &&
            (identical(
                    other.participationRequestsNum, participationRequestsNum) ||
                other.participationRequestsNum == participationRequestsNum) &&
            (identical(other.roomStatus, roomStatus) ||
                other.roomStatus == roomStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      address,
      const DeepCollectionEquality().hash(_memberIcons),
      membersNum,
      participationRequestsNum,
      roomStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HostStateCopyWith<_$HostState> get copyWith =>
      __$$HostStateCopyWithImpl<_$HostState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String title,
            String address,
            List<String> memberIcons,
            MembersNum membersNum,
            int participationRequestsNum,
            RoomStatus roomStatus)
        host,
    required TResult Function(
            String id,
            String title,
            String address,
            List<String> memberIcons,
            MembersNum membersNum,
            RoomStatus roomStatus,
            RoomJoinRequestStatus requestStatus)
        guest,
  }) {
    return host(id, title, address, memberIcons, membersNum,
        participationRequestsNum, roomStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String title,
            String address,
            List<String> memberIcons,
            MembersNum membersNum,
            int participationRequestsNum,
            RoomStatus roomStatus)?
        host,
    TResult? Function(
            String id,
            String title,
            String address,
            List<String> memberIcons,
            MembersNum membersNum,
            RoomStatus roomStatus,
            RoomJoinRequestStatus requestStatus)?
        guest,
  }) {
    return host?.call(id, title, address, memberIcons, membersNum,
        participationRequestsNum, roomStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String title,
            String address,
            List<String> memberIcons,
            MembersNum membersNum,
            int participationRequestsNum,
            RoomStatus roomStatus)?
        host,
    TResult Function(
            String id,
            String title,
            String address,
            List<String> memberIcons,
            MembersNum membersNum,
            RoomStatus roomStatus,
            RoomJoinRequestStatus requestStatus)?
        guest,
    required TResult orElse(),
  }) {
    if (host != null) {
      return host(id, title, address, memberIcons, membersNum,
          participationRequestsNum, roomStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HostState value) host,
    required TResult Function(GuestState value) guest,
  }) {
    return host(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HostState value)? host,
    TResult? Function(GuestState value)? guest,
  }) {
    return host?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HostState value)? host,
    TResult Function(GuestState value)? guest,
    required TResult orElse(),
  }) {
    if (host != null) {
      return host(this);
    }
    return orElse();
  }
}

abstract class HostState implements ParticipatingRoomListStateItem {
  factory HostState(
      {required final String id,
      required final String title,
      required final String address,
      required final List<String> memberIcons,
      required final MembersNum membersNum,
      required final int participationRequestsNum,
      required final RoomStatus roomStatus}) = _$HostState;

  @override
  String get id;
  @override
  String get title;
  @override
  String get address;
  @override
  List<String> get memberIcons;
  @override
  MembersNum get membersNum;
  int get participationRequestsNum;
  @override
  RoomStatus get roomStatus;
  @override
  @JsonKey(ignore: true)
  _$$HostStateCopyWith<_$HostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GuestStateCopyWith<$Res>
    implements $ParticipatingRoomListStateItemCopyWith<$Res> {
  factory _$$GuestStateCopyWith(
          _$GuestState value, $Res Function(_$GuestState) then) =
      __$$GuestStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String address,
      List<String> memberIcons,
      MembersNum membersNum,
      RoomStatus roomStatus,
      RoomJoinRequestStatus requestStatus});

  @override
  $MembersNumCopyWith<$Res> get membersNum;
}

/// @nodoc
class __$$GuestStateCopyWithImpl<$Res>
    extends _$ParticipatingRoomListStateItemCopyWithImpl<$Res, _$GuestState>
    implements _$$GuestStateCopyWith<$Res> {
  __$$GuestStateCopyWithImpl(
      _$GuestState _value, $Res Function(_$GuestState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? address = null,
    Object? memberIcons = null,
    Object? membersNum = null,
    Object? roomStatus = null,
    Object? requestStatus = null,
  }) {
    return _then(_$GuestState(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      memberIcons: null == memberIcons
          ? _value._memberIcons
          : memberIcons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      membersNum: null == membersNum
          ? _value.membersNum
          : membersNum // ignore: cast_nullable_to_non_nullable
              as MembersNum,
      roomStatus: null == roomStatus
          ? _value.roomStatus
          : roomStatus // ignore: cast_nullable_to_non_nullable
              as RoomStatus,
      requestStatus: null == requestStatus
          ? _value.requestStatus
          : requestStatus // ignore: cast_nullable_to_non_nullable
              as RoomJoinRequestStatus,
    ));
  }
}

/// @nodoc

class _$GuestState implements GuestState {
  _$GuestState(
      {required this.id,
      required this.title,
      required this.address,
      required final List<String> memberIcons,
      required this.membersNum,
      required this.roomStatus,
      required this.requestStatus})
      : _memberIcons = memberIcons;

  @override
  final String id;
  @override
  final String title;
  @override
  final String address;
  final List<String> _memberIcons;
  @override
  List<String> get memberIcons {
    if (_memberIcons is EqualUnmodifiableListView) return _memberIcons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_memberIcons);
  }

  @override
  final MembersNum membersNum;
  @override
  final RoomStatus roomStatus;
  @override
  final RoomJoinRequestStatus requestStatus;

  @override
  String toString() {
    return 'ParticipatingRoomListStateItem.guest(id: $id, title: $title, address: $address, memberIcons: $memberIcons, membersNum: $membersNum, roomStatus: $roomStatus, requestStatus: $requestStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuestState &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality()
                .equals(other._memberIcons, _memberIcons) &&
            (identical(other.membersNum, membersNum) ||
                other.membersNum == membersNum) &&
            (identical(other.roomStatus, roomStatus) ||
                other.roomStatus == roomStatus) &&
            (identical(other.requestStatus, requestStatus) ||
                other.requestStatus == requestStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      address,
      const DeepCollectionEquality().hash(_memberIcons),
      membersNum,
      roomStatus,
      requestStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GuestStateCopyWith<_$GuestState> get copyWith =>
      __$$GuestStateCopyWithImpl<_$GuestState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String title,
            String address,
            List<String> memberIcons,
            MembersNum membersNum,
            int participationRequestsNum,
            RoomStatus roomStatus)
        host,
    required TResult Function(
            String id,
            String title,
            String address,
            List<String> memberIcons,
            MembersNum membersNum,
            RoomStatus roomStatus,
            RoomJoinRequestStatus requestStatus)
        guest,
  }) {
    return guest(
        id, title, address, memberIcons, membersNum, roomStatus, requestStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String title,
            String address,
            List<String> memberIcons,
            MembersNum membersNum,
            int participationRequestsNum,
            RoomStatus roomStatus)?
        host,
    TResult? Function(
            String id,
            String title,
            String address,
            List<String> memberIcons,
            MembersNum membersNum,
            RoomStatus roomStatus,
            RoomJoinRequestStatus requestStatus)?
        guest,
  }) {
    return guest?.call(
        id, title, address, memberIcons, membersNum, roomStatus, requestStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String title,
            String address,
            List<String> memberIcons,
            MembersNum membersNum,
            int participationRequestsNum,
            RoomStatus roomStatus)?
        host,
    TResult Function(
            String id,
            String title,
            String address,
            List<String> memberIcons,
            MembersNum membersNum,
            RoomStatus roomStatus,
            RoomJoinRequestStatus requestStatus)?
        guest,
    required TResult orElse(),
  }) {
    if (guest != null) {
      return guest(id, title, address, memberIcons, membersNum, roomStatus,
          requestStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HostState value) host,
    required TResult Function(GuestState value) guest,
  }) {
    return guest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HostState value)? host,
    TResult? Function(GuestState value)? guest,
  }) {
    return guest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HostState value)? host,
    TResult Function(GuestState value)? guest,
    required TResult orElse(),
  }) {
    if (guest != null) {
      return guest(this);
    }
    return orElse();
  }
}

abstract class GuestState implements ParticipatingRoomListStateItem {
  factory GuestState(
      {required final String id,
      required final String title,
      required final String address,
      required final List<String> memberIcons,
      required final MembersNum membersNum,
      required final RoomStatus roomStatus,
      required final RoomJoinRequestStatus requestStatus}) = _$GuestState;

  @override
  String get id;
  @override
  String get title;
  @override
  String get address;
  @override
  List<String> get memberIcons;
  @override
  MembersNum get membersNum;
  @override
  RoomStatus get roomStatus;
  RoomJoinRequestStatus get requestStatus;
  @override
  @JsonKey(ignore: true)
  _$$GuestStateCopyWith<_$GuestState> get copyWith =>
      throw _privateConstructorUsedError;
}
