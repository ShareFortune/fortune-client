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
  List<RoomListItem> get rooms => throw _privateConstructorUsedError;

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
  $Res call({List<RoomListItem> rooms});
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
              as List<RoomListItem>,
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
  $Res call({List<RoomListItem> rooms});
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
              as List<RoomListItem>,
    ));
  }
}

/// @nodoc

class _$_RoomListState implements _RoomListState {
  const _$_RoomListState({final List<RoomListItem> rooms = const []})
      : _rooms = rooms;

  final List<RoomListItem> _rooms;
  @override
  @JsonKey()
  List<RoomListItem> get rooms {
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
  const factory _RoomListState({final List<RoomListItem> rooms}) =
      _$_RoomListState;

  @override
  List<RoomListItem> get rooms;
  @override
  @JsonKey(ignore: true)
  _$$_RoomListStateCopyWith<_$_RoomListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RoomListItem {
  String get hostName => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get hostUserIcon => throw _privateConstructorUsedError;
  String get roomTitle => throw _privateConstructorUsedError;
  List<String> get maleUserIcons => throw _privateConstructorUsedError;
  List<String> get femaleUserIcons => throw _privateConstructorUsedError;
  String get holdingPlace => throw _privateConstructorUsedError;
  int get maxNumOfParticipants => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomListItemCopyWith<RoomListItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomListItemCopyWith<$Res> {
  factory $RoomListItemCopyWith(
          RoomListItem value, $Res Function(RoomListItem) then) =
      _$RoomListItemCopyWithImpl<$Res, RoomListItem>;
  @useResult
  $Res call(
      {String hostName,
      String createdAt,
      String hostUserIcon,
      String roomTitle,
      List<String> maleUserIcons,
      List<String> femaleUserIcons,
      String holdingPlace,
      int maxNumOfParticipants});
}

/// @nodoc
class _$RoomListItemCopyWithImpl<$Res, $Val extends RoomListItem>
    implements $RoomListItemCopyWith<$Res> {
  _$RoomListItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hostName = null,
    Object? createdAt = null,
    Object? hostUserIcon = null,
    Object? roomTitle = null,
    Object? maleUserIcons = null,
    Object? femaleUserIcons = null,
    Object? holdingPlace = null,
    Object? maxNumOfParticipants = null,
  }) {
    return _then(_value.copyWith(
      hostName: null == hostName
          ? _value.hostName
          : hostName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      hostUserIcon: null == hostUserIcon
          ? _value.hostUserIcon
          : hostUserIcon // ignore: cast_nullable_to_non_nullable
              as String,
      roomTitle: null == roomTitle
          ? _value.roomTitle
          : roomTitle // ignore: cast_nullable_to_non_nullable
              as String,
      maleUserIcons: null == maleUserIcons
          ? _value.maleUserIcons
          : maleUserIcons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      femaleUserIcons: null == femaleUserIcons
          ? _value.femaleUserIcons
          : femaleUserIcons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      holdingPlace: null == holdingPlace
          ? _value.holdingPlace
          : holdingPlace // ignore: cast_nullable_to_non_nullable
              as String,
      maxNumOfParticipants: null == maxNumOfParticipants
          ? _value.maxNumOfParticipants
          : maxNumOfParticipants // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoomListItemCopyWith<$Res>
    implements $RoomListItemCopyWith<$Res> {
  factory _$$_RoomListItemCopyWith(
          _$_RoomListItem value, $Res Function(_$_RoomListItem) then) =
      __$$_RoomListItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String hostName,
      String createdAt,
      String hostUserIcon,
      String roomTitle,
      List<String> maleUserIcons,
      List<String> femaleUserIcons,
      String holdingPlace,
      int maxNumOfParticipants});
}

/// @nodoc
class __$$_RoomListItemCopyWithImpl<$Res>
    extends _$RoomListItemCopyWithImpl<$Res, _$_RoomListItem>
    implements _$$_RoomListItemCopyWith<$Res> {
  __$$_RoomListItemCopyWithImpl(
      _$_RoomListItem _value, $Res Function(_$_RoomListItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hostName = null,
    Object? createdAt = null,
    Object? hostUserIcon = null,
    Object? roomTitle = null,
    Object? maleUserIcons = null,
    Object? femaleUserIcons = null,
    Object? holdingPlace = null,
    Object? maxNumOfParticipants = null,
  }) {
    return _then(_$_RoomListItem(
      hostName: null == hostName
          ? _value.hostName
          : hostName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      hostUserIcon: null == hostUserIcon
          ? _value.hostUserIcon
          : hostUserIcon // ignore: cast_nullable_to_non_nullable
              as String,
      roomTitle: null == roomTitle
          ? _value.roomTitle
          : roomTitle // ignore: cast_nullable_to_non_nullable
              as String,
      maleUserIcons: null == maleUserIcons
          ? _value._maleUserIcons
          : maleUserIcons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      femaleUserIcons: null == femaleUserIcons
          ? _value._femaleUserIcons
          : femaleUserIcons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      holdingPlace: null == holdingPlace
          ? _value.holdingPlace
          : holdingPlace // ignore: cast_nullable_to_non_nullable
              as String,
      maxNumOfParticipants: null == maxNumOfParticipants
          ? _value.maxNumOfParticipants
          : maxNumOfParticipants // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RoomListItem implements _RoomListItem {
  const _$_RoomListItem(
      {this.hostName = "",
      this.createdAt = "",
      this.hostUserIcon = "",
      this.roomTitle = "",
      final List<String> maleUserIcons = const [],
      final List<String> femaleUserIcons = const [],
      this.holdingPlace = "",
      this.maxNumOfParticipants = 4})
      : _maleUserIcons = maleUserIcons,
        _femaleUserIcons = femaleUserIcons;

  @override
  @JsonKey()
  final String hostName;
  @override
  @JsonKey()
  final String createdAt;
  @override
  @JsonKey()
  final String hostUserIcon;
  @override
  @JsonKey()
  final String roomTitle;
  final List<String> _maleUserIcons;
  @override
  @JsonKey()
  List<String> get maleUserIcons {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_maleUserIcons);
  }

  final List<String> _femaleUserIcons;
  @override
  @JsonKey()
  List<String> get femaleUserIcons {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_femaleUserIcons);
  }

  @override
  @JsonKey()
  final String holdingPlace;
  @override
  @JsonKey()
  final int maxNumOfParticipants;

  @override
  String toString() {
    return 'RoomListItem(hostName: $hostName, createdAt: $createdAt, hostUserIcon: $hostUserIcon, roomTitle: $roomTitle, maleUserIcons: $maleUserIcons, femaleUserIcons: $femaleUserIcons, holdingPlace: $holdingPlace, maxNumOfParticipants: $maxNumOfParticipants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomListItem &&
            (identical(other.hostName, hostName) ||
                other.hostName == hostName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.hostUserIcon, hostUserIcon) ||
                other.hostUserIcon == hostUserIcon) &&
            (identical(other.roomTitle, roomTitle) ||
                other.roomTitle == roomTitle) &&
            const DeepCollectionEquality()
                .equals(other._maleUserIcons, _maleUserIcons) &&
            const DeepCollectionEquality()
                .equals(other._femaleUserIcons, _femaleUserIcons) &&
            (identical(other.holdingPlace, holdingPlace) ||
                other.holdingPlace == holdingPlace) &&
            (identical(other.maxNumOfParticipants, maxNumOfParticipants) ||
                other.maxNumOfParticipants == maxNumOfParticipants));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      hostName,
      createdAt,
      hostUserIcon,
      roomTitle,
      const DeepCollectionEquality().hash(_maleUserIcons),
      const DeepCollectionEquality().hash(_femaleUserIcons),
      holdingPlace,
      maxNumOfParticipants);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomListItemCopyWith<_$_RoomListItem> get copyWith =>
      __$$_RoomListItemCopyWithImpl<_$_RoomListItem>(this, _$identity);
}

abstract class _RoomListItem implements RoomListItem {
  const factory _RoomListItem(
      {final String hostName,
      final String createdAt,
      final String hostUserIcon,
      final String roomTitle,
      final List<String> maleUserIcons,
      final List<String> femaleUserIcons,
      final String holdingPlace,
      final int maxNumOfParticipants}) = _$_RoomListItem;

  @override
  String get hostName;
  @override
  String get createdAt;
  @override
  String get hostUserIcon;
  @override
  String get roomTitle;
  @override
  List<String> get maleUserIcons;
  @override
  List<String> get femaleUserIcons;
  @override
  String get holdingPlace;
  @override
  int get maxNumOfParticipants;
  @override
  @JsonKey(ignore: true)
  _$$_RoomListItemCopyWith<_$_RoomListItem> get copyWith =>
      throw _privateConstructorUsedError;
}
