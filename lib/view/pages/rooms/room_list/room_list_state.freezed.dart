// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'room_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoomListState {
  List<RoomListItemState> get rooms => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomListStateCopyWith<RoomListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomListStateCopyWith<$Res> {
  factory $RoomListStateCopyWith(
          RoomListState value, $Res Function(RoomListState) then) =
      _$RoomListStateCopyWithImpl<$Res, RoomListState>;
  @useResult
  $Res call({List<RoomListItemState> rooms});
}

/// @nodoc
class _$RoomListStateCopyWithImpl<$Res, $Val extends RoomListState>
    implements $RoomListStateCopyWith<$Res> {
  _$RoomListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
  }) {
    return _then(_value.copyWith(
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomListItemState>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoomListStateCopyWith<$Res>
    implements $RoomListStateCopyWith<$Res> {
  factory _$$_RoomListStateCopyWith(
          _$_RoomListState value, $Res Function(_$_RoomListState) then) =
      __$$_RoomListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RoomListItemState> rooms});
}

/// @nodoc
class __$$_RoomListStateCopyWithImpl<$Res>
    extends _$RoomListStateCopyWithImpl<$Res, _$_RoomListState>
    implements _$$_RoomListStateCopyWith<$Res> {
  __$$_RoomListStateCopyWithImpl(
      _$_RoomListState _value, $Res Function(_$_RoomListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
  }) {
    return _then(_$_RoomListState(
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomListItemState>,
    ));
  }
}

/// @nodoc

class _$_RoomListState implements _RoomListState {
  const _$_RoomListState({final List<RoomListItemState> rooms = const []})
      : _rooms = rooms;

  final List<RoomListItemState> _rooms;
  @override
  @JsonKey()
  List<RoomListItemState> get rooms {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  String toString() {
    return 'RoomListState(rooms: $rooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomListState &&
            const DeepCollectionEquality().equals(other._rooms, _rooms));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rooms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomListStateCopyWith<_$_RoomListState> get copyWith =>
      __$$_RoomListStateCopyWithImpl<_$_RoomListState>(this, _$identity);
}

abstract class _RoomListState implements RoomListState {
  const factory _RoomListState({final List<RoomListItemState> rooms}) =
      _$_RoomListState;

  @override
  List<RoomListItemState> get rooms;
  @override
  @JsonKey(ignore: true)
  _$$_RoomListStateCopyWith<_$_RoomListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RoomListItemState {
  String get title => throw _privateConstructorUsedError;
  String get deadline => throw _privateConstructorUsedError;
  String get hostIcon => throw _privateConstructorUsedError;
  List<String> get memberIcons => throw _privateConstructorUsedError;
  String get place => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomListItemStateCopyWith<RoomListItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomListItemStateCopyWith<$Res> {
  factory $RoomListItemStateCopyWith(
          RoomListItemState value, $Res Function(RoomListItemState) then) =
      _$RoomListItemStateCopyWithImpl<$Res, RoomListItemState>;
  @useResult
  $Res call(
      {String title,
      String deadline,
      String hostIcon,
      List<String> memberIcons,
      String place});
}

/// @nodoc
class _$RoomListItemStateCopyWithImpl<$Res, $Val extends RoomListItemState>
    implements $RoomListItemStateCopyWith<$Res> {
  _$RoomListItemStateCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoomListItemStateCopyWith<$Res>
    implements $RoomListItemStateCopyWith<$Res> {
  factory _$$_RoomListItemStateCopyWith(_$_RoomListItemState value,
          $Res Function(_$_RoomListItemState) then) =
      __$$_RoomListItemStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String deadline,
      String hostIcon,
      List<String> memberIcons,
      String place});
}

/// @nodoc
class __$$_RoomListItemStateCopyWithImpl<$Res>
    extends _$RoomListItemStateCopyWithImpl<$Res, _$_RoomListItemState>
    implements _$$_RoomListItemStateCopyWith<$Res> {
  __$$_RoomListItemStateCopyWithImpl(
      _$_RoomListItemState _value, $Res Function(_$_RoomListItemState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? deadline = null,
    Object? hostIcon = null,
    Object? memberIcons = null,
    Object? place = null,
  }) {
    return _then(_$_RoomListItemState(
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
    ));
  }
}

/// @nodoc

class _$_RoomListItemState implements _RoomListItemState {
  const _$_RoomListItemState(
      {this.title = "",
      this.deadline = "",
      this.hostIcon = "",
      final List<String> memberIcons = const [],
      this.place = ""})
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
  String toString() {
    return 'RoomListItemState(title: $title, deadline: $deadline, hostIcon: $hostIcon, memberIcons: $memberIcons, place: $place)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomListItemState &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.hostIcon, hostIcon) ||
                other.hostIcon == hostIcon) &&
            const DeepCollectionEquality()
                .equals(other._memberIcons, _memberIcons) &&
            (identical(other.place, place) || other.place == place));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, deadline, hostIcon,
      const DeepCollectionEquality().hash(_memberIcons), place);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomListItemStateCopyWith<_$_RoomListItemState> get copyWith =>
      __$$_RoomListItemStateCopyWithImpl<_$_RoomListItemState>(
          this, _$identity);
}

abstract class _RoomListItemState implements RoomListItemState {
  const factory _RoomListItemState(
      {final String title,
      final String deadline,
      final String hostIcon,
      final List<String> memberIcons,
      final String place}) = _$_RoomListItemState;

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
  @JsonKey(ignore: true)
  _$$_RoomListItemStateCopyWith<_$_RoomListItemState> get copyWith =>
      throw _privateConstructorUsedError;
}
