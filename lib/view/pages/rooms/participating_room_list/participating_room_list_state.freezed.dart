// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'participating_room_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ParticipatingRoomListState {
  List<HostRoomListItemState> get hostRooms =>
      throw _privateConstructorUsedError;
  List<GuestRoomListItemState> get guestRooms =>
      throw _privateConstructorUsedError;

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
      {List<HostRoomListItemState> hostRooms,
      List<GuestRoomListItemState> guestRooms});
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
    Object? hostRooms = null,
    Object? guestRooms = null,
  }) {
    return _then(_value.copyWith(
      hostRooms: null == hostRooms
          ? _value.hostRooms
          : hostRooms // ignore: cast_nullable_to_non_nullable
              as List<HostRoomListItemState>,
      guestRooms: null == guestRooms
          ? _value.guestRooms
          : guestRooms // ignore: cast_nullable_to_non_nullable
              as List<GuestRoomListItemState>,
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
      {List<HostRoomListItemState> hostRooms,
      List<GuestRoomListItemState> guestRooms});
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
    Object? hostRooms = null,
    Object? guestRooms = null,
  }) {
    return _then(_$_ParticipatingRoomListState(
      hostRooms: null == hostRooms
          ? _value._hostRooms
          : hostRooms // ignore: cast_nullable_to_non_nullable
              as List<HostRoomListItemState>,
      guestRooms: null == guestRooms
          ? _value._guestRooms
          : guestRooms // ignore: cast_nullable_to_non_nullable
              as List<GuestRoomListItemState>,
    ));
  }
}

/// @nodoc

class _$_ParticipatingRoomListState implements _ParticipatingRoomListState {
  const _$_ParticipatingRoomListState(
      {required final List<HostRoomListItemState> hostRooms,
      required final List<GuestRoomListItemState> guestRooms})
      : _hostRooms = hostRooms,
        _guestRooms = guestRooms;

  final List<HostRoomListItemState> _hostRooms;
  @override
  List<HostRoomListItemState> get hostRooms {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hostRooms);
  }

  final List<GuestRoomListItemState> _guestRooms;
  @override
  List<GuestRoomListItemState> get guestRooms {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_guestRooms);
  }

  @override
  String toString() {
    return 'ParticipatingRoomListState(hostRooms: $hostRooms, guestRooms: $guestRooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParticipatingRoomListState &&
            const DeepCollectionEquality()
                .equals(other._hostRooms, _hostRooms) &&
            const DeepCollectionEquality()
                .equals(other._guestRooms, _guestRooms));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_hostRooms),
      const DeepCollectionEquality().hash(_guestRooms));

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
          {required final List<HostRoomListItemState> hostRooms,
          required final List<GuestRoomListItemState> guestRooms}) =
      _$_ParticipatingRoomListState;

  @override
  List<HostRoomListItemState> get hostRooms;
  @override
  List<GuestRoomListItemState> get guestRooms;
  @override
  @JsonKey(ignore: true)
  _$$_ParticipatingRoomListStateCopyWith<_$_ParticipatingRoomListState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HostRoomListItemState {
  String get title => throw _privateConstructorUsedError;
  List<String> get memberIcons => throw _privateConstructorUsedError;
  int get actinon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HostRoomListItemStateCopyWith<HostRoomListItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HostRoomListItemStateCopyWith<$Res> {
  factory $HostRoomListItemStateCopyWith(HostRoomListItemState value,
          $Res Function(HostRoomListItemState) then) =
      _$HostRoomListItemStateCopyWithImpl<$Res, HostRoomListItemState>;
  @useResult
  $Res call({String title, List<String> memberIcons, int actinon});
}

/// @nodoc
class _$HostRoomListItemStateCopyWithImpl<$Res,
        $Val extends HostRoomListItemState>
    implements $HostRoomListItemStateCopyWith<$Res> {
  _$HostRoomListItemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? memberIcons = null,
    Object? actinon = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      memberIcons: null == memberIcons
          ? _value.memberIcons
          : memberIcons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      actinon: null == actinon
          ? _value.actinon
          : actinon // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HostRoomListItemStateCopyWith<$Res>
    implements $HostRoomListItemStateCopyWith<$Res> {
  factory _$$_HostRoomListItemStateCopyWith(_$_HostRoomListItemState value,
          $Res Function(_$_HostRoomListItemState) then) =
      __$$_HostRoomListItemStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, List<String> memberIcons, int actinon});
}

/// @nodoc
class __$$_HostRoomListItemStateCopyWithImpl<$Res>
    extends _$HostRoomListItemStateCopyWithImpl<$Res, _$_HostRoomListItemState>
    implements _$$_HostRoomListItemStateCopyWith<$Res> {
  __$$_HostRoomListItemStateCopyWithImpl(_$_HostRoomListItemState _value,
      $Res Function(_$_HostRoomListItemState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? memberIcons = null,
    Object? actinon = null,
  }) {
    return _then(_$_HostRoomListItemState(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      memberIcons: null == memberIcons
          ? _value._memberIcons
          : memberIcons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      actinon: null == actinon
          ? _value.actinon
          : actinon // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_HostRoomListItemState implements _HostRoomListItemState {
  const _$_HostRoomListItemState(
      {this.title = "",
      final List<String> memberIcons = const [],
      this.actinon = 0})
      : _memberIcons = memberIcons;

  @override
  @JsonKey()
  final String title;
  final List<String> _memberIcons;
  @override
  @JsonKey()
  List<String> get memberIcons {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_memberIcons);
  }

  @override
  @JsonKey()
  final int actinon;

  @override
  String toString() {
    return 'HostRoomListItemState(title: $title, memberIcons: $memberIcons, actinon: $actinon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HostRoomListItemState &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._memberIcons, _memberIcons) &&
            (identical(other.actinon, actinon) || other.actinon == actinon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title,
      const DeepCollectionEquality().hash(_memberIcons), actinon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HostRoomListItemStateCopyWith<_$_HostRoomListItemState> get copyWith =>
      __$$_HostRoomListItemStateCopyWithImpl<_$_HostRoomListItemState>(
          this, _$identity);
}

abstract class _HostRoomListItemState implements HostRoomListItemState {
  const factory _HostRoomListItemState(
      {final String title,
      final List<String> memberIcons,
      final int actinon}) = _$_HostRoomListItemState;

  @override
  String get title;
  @override
  List<String> get memberIcons;
  @override
  int get actinon;
  @override
  @JsonKey(ignore: true)
  _$$_HostRoomListItemStateCopyWith<_$_HostRoomListItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GuestRoomListItemState {
  String get title => throw _privateConstructorUsedError;
  String get deadline => throw _privateConstructorUsedError;
  String get hostIcon => throw _privateConstructorUsedError;
  List<String> get memberIcons => throw _privateConstructorUsedError;
  String get place => throw _privateConstructorUsedError;
  bool get state => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GuestRoomListItemStateCopyWith<GuestRoomListItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestRoomListItemStateCopyWith<$Res> {
  factory $GuestRoomListItemStateCopyWith(GuestRoomListItemState value,
          $Res Function(GuestRoomListItemState) then) =
      _$GuestRoomListItemStateCopyWithImpl<$Res, GuestRoomListItemState>;
  @useResult
  $Res call(
      {String title,
      String deadline,
      String hostIcon,
      List<String> memberIcons,
      String place,
      bool state});
}

/// @nodoc
class _$GuestRoomListItemStateCopyWithImpl<$Res,
        $Val extends GuestRoomListItemState>
    implements $GuestRoomListItemStateCopyWith<$Res> {
  _$GuestRoomListItemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? deadline = null,
    Object? hostIcon = null,
    Object? memberIcons = null,
    Object? place = null,
    Object? state = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as String,
      hostIcon: null == hostIcon
          ? _value.hostIcon
          : hostIcon // ignore: cast_nullable_to_non_nullable
              as String,
      memberIcons: null == memberIcons
          ? _value.memberIcons
          : memberIcons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GuestRoomListItemStateCopyWith<$Res>
    implements $GuestRoomListItemStateCopyWith<$Res> {
  factory _$$_GuestRoomListItemStateCopyWith(_$_GuestRoomListItemState value,
          $Res Function(_$_GuestRoomListItemState) then) =
      __$$_GuestRoomListItemStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String deadline,
      String hostIcon,
      List<String> memberIcons,
      String place,
      bool state});
}

/// @nodoc
class __$$_GuestRoomListItemStateCopyWithImpl<$Res>
    extends _$GuestRoomListItemStateCopyWithImpl<$Res,
        _$_GuestRoomListItemState>
    implements _$$_GuestRoomListItemStateCopyWith<$Res> {
  __$$_GuestRoomListItemStateCopyWithImpl(_$_GuestRoomListItemState _value,
      $Res Function(_$_GuestRoomListItemState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? deadline = null,
    Object? hostIcon = null,
    Object? memberIcons = null,
    Object? place = null,
    Object? state = null,
  }) {
    return _then(_$_GuestRoomListItemState(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as String,
      hostIcon: null == hostIcon
          ? _value.hostIcon
          : hostIcon // ignore: cast_nullable_to_non_nullable
              as String,
      memberIcons: null == memberIcons
          ? _value._memberIcons
          : memberIcons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_GuestRoomListItemState implements _GuestRoomListItemState {
  const _$_GuestRoomListItemState(
      {this.title = "",
      this.deadline = "",
      this.hostIcon = "",
      final List<String> memberIcons = const [],
      this.place = "",
      this.state = false})
      : _memberIcons = memberIcons;

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String deadline;
  @override
  @JsonKey()
  final String hostIcon;
  final List<String> _memberIcons;
  @override
  @JsonKey()
  List<String> get memberIcons {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_memberIcons);
  }

  @override
  @JsonKey()
  final String place;
  @override
  @JsonKey()
  final bool state;

  @override
  String toString() {
    return 'GuestRoomListItemState(title: $title, deadline: $deadline, hostIcon: $hostIcon, memberIcons: $memberIcons, place: $place, state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GuestRoomListItemState &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.hostIcon, hostIcon) ||
                other.hostIcon == hostIcon) &&
            const DeepCollectionEquality()
                .equals(other._memberIcons, _memberIcons) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, deadline, hostIcon,
      const DeepCollectionEquality().hash(_memberIcons), place, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GuestRoomListItemStateCopyWith<_$_GuestRoomListItemState> get copyWith =>
      __$$_GuestRoomListItemStateCopyWithImpl<_$_GuestRoomListItemState>(
          this, _$identity);
}

abstract class _GuestRoomListItemState implements GuestRoomListItemState {
  const factory _GuestRoomListItemState(
      {final String title,
      final String deadline,
      final String hostIcon,
      final List<String> memberIcons,
      final String place,
      final bool state}) = _$_GuestRoomListItemState;

  @override
  String get title;
  @override
  String get deadline;
  @override
  String get hostIcon;
  @override
  List<String> get memberIcons;
  @override
  String get place;
  @override
  bool get state;
  @override
  @JsonKey(ignore: true)
  _$$_GuestRoomListItemStateCopyWith<_$_GuestRoomListItemState> get copyWith =>
      throw _privateConstructorUsedError;
}
