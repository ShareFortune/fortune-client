// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'room_join_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoomJoinListState {
  List<RoomHostListItemState> get hostRooms =>
      throw _privateConstructorUsedError;
  List<RoomGuestListItemState> get guestRooms =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomJoinListStateCopyWith<RoomJoinListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomJoinListStateCopyWith<$Res> {
  factory $RoomJoinListStateCopyWith(
          RoomJoinListState value, $Res Function(RoomJoinListState) then) =
      _$RoomJoinListStateCopyWithImpl<$Res, RoomJoinListState>;
  @useResult
  $Res call(
      {List<RoomHostListItemState> hostRooms,
      List<RoomGuestListItemState> guestRooms});
}

/// @nodoc
class _$RoomJoinListStateCopyWithImpl<$Res, $Val extends RoomJoinListState>
    implements $RoomJoinListStateCopyWith<$Res> {
  _$RoomJoinListStateCopyWithImpl(this._value, this._then);

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
              as List<RoomHostListItemState>,
      guestRooms: null == guestRooms
          ? _value.guestRooms
          : guestRooms // ignore: cast_nullable_to_non_nullable
              as List<RoomGuestListItemState>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoomJoinListStateCopyWith<$Res>
    implements $RoomJoinListStateCopyWith<$Res> {
  factory _$$_RoomJoinListStateCopyWith(_$_RoomJoinListState value,
          $Res Function(_$_RoomJoinListState) then) =
      __$$_RoomJoinListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<RoomHostListItemState> hostRooms,
      List<RoomGuestListItemState> guestRooms});
}

/// @nodoc
class __$$_RoomJoinListStateCopyWithImpl<$Res>
    extends _$RoomJoinListStateCopyWithImpl<$Res, _$_RoomJoinListState>
    implements _$$_RoomJoinListStateCopyWith<$Res> {
  __$$_RoomJoinListStateCopyWithImpl(
      _$_RoomJoinListState _value, $Res Function(_$_RoomJoinListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hostRooms = null,
    Object? guestRooms = null,
  }) {
    return _then(_$_RoomJoinListState(
      hostRooms: null == hostRooms
          ? _value._hostRooms
          : hostRooms // ignore: cast_nullable_to_non_nullable
              as List<RoomHostListItemState>,
      guestRooms: null == guestRooms
          ? _value._guestRooms
          : guestRooms // ignore: cast_nullable_to_non_nullable
              as List<RoomGuestListItemState>,
    ));
  }
}

/// @nodoc

class _$_RoomJoinListState implements _RoomJoinListState {
  const _$_RoomJoinListState(
      {required final List<RoomHostListItemState> hostRooms,
      required final List<RoomGuestListItemState> guestRooms})
      : _hostRooms = hostRooms,
        _guestRooms = guestRooms;

  final List<RoomHostListItemState> _hostRooms;
  @override
  List<RoomHostListItemState> get hostRooms {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hostRooms);
  }

  final List<RoomGuestListItemState> _guestRooms;
  @override
  List<RoomGuestListItemState> get guestRooms {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_guestRooms);
  }

  @override
  String toString() {
    return 'RoomJoinListState(hostRooms: $hostRooms, guestRooms: $guestRooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomJoinListState &&
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
  _$$_RoomJoinListStateCopyWith<_$_RoomJoinListState> get copyWith =>
      __$$_RoomJoinListStateCopyWithImpl<_$_RoomJoinListState>(
          this, _$identity);
}

abstract class _RoomJoinListState implements RoomJoinListState {
  const factory _RoomJoinListState(
          {required final List<RoomHostListItemState> hostRooms,
          required final List<RoomGuestListItemState> guestRooms}) =
      _$_RoomJoinListState;

  @override
  List<RoomHostListItemState> get hostRooms;
  @override
  List<RoomGuestListItemState> get guestRooms;
  @override
  @JsonKey(ignore: true)
  _$$_RoomJoinListStateCopyWith<_$_RoomJoinListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RoomHostListItemState {
  String get createdAt => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<String> get maleUserIcons => throw _privateConstructorUsedError;
  List<String> get femaleUserIcons => throw _privateConstructorUsedError;
  String get holdingPlace => throw _privateConstructorUsedError;
  int get maxNumOfParticipants => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomHostListItemStateCopyWith<RoomHostListItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomHostListItemStateCopyWith<$Res> {
  factory $RoomHostListItemStateCopyWith(RoomHostListItemState value,
          $Res Function(RoomHostListItemState) then) =
      _$RoomHostListItemStateCopyWithImpl<$Res, RoomHostListItemState>;
  @useResult
  $Res call(
      {String createdAt,
      String title,
      List<String> maleUserIcons,
      List<String> femaleUserIcons,
      String holdingPlace,
      int maxNumOfParticipants});
}

/// @nodoc
class _$RoomHostListItemStateCopyWithImpl<$Res,
        $Val extends RoomHostListItemState>
    implements $RoomHostListItemStateCopyWith<$Res> {
  _$RoomHostListItemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? title = null,
    Object? maleUserIcons = null,
    Object? femaleUserIcons = null,
    Object? holdingPlace = null,
    Object? maxNumOfParticipants = null,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_RoomHostListItemStateCopyWith<$Res>
    implements $RoomHostListItemStateCopyWith<$Res> {
  factory _$$_RoomHostListItemStateCopyWith(_$_RoomHostListItemState value,
          $Res Function(_$_RoomHostListItemState) then) =
      __$$_RoomHostListItemStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String createdAt,
      String title,
      List<String> maleUserIcons,
      List<String> femaleUserIcons,
      String holdingPlace,
      int maxNumOfParticipants});
}

/// @nodoc
class __$$_RoomHostListItemStateCopyWithImpl<$Res>
    extends _$RoomHostListItemStateCopyWithImpl<$Res, _$_RoomHostListItemState>
    implements _$$_RoomHostListItemStateCopyWith<$Res> {
  __$$_RoomHostListItemStateCopyWithImpl(_$_RoomHostListItemState _value,
      $Res Function(_$_RoomHostListItemState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? title = null,
    Object? maleUserIcons = null,
    Object? femaleUserIcons = null,
    Object? holdingPlace = null,
    Object? maxNumOfParticipants = null,
  }) {
    return _then(_$_RoomHostListItemState(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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

class _$_RoomHostListItemState implements _RoomHostListItemState {
  const _$_RoomHostListItemState(
      {this.createdAt = "",
      this.title = "",
      final List<String> maleUserIcons = const [],
      final List<String> femaleUserIcons = const [],
      this.holdingPlace = "",
      this.maxNumOfParticipants = 4})
      : _maleUserIcons = maleUserIcons,
        _femaleUserIcons = femaleUserIcons;

  @override
  @JsonKey()
  final String createdAt;
  @override
  @JsonKey()
  final String title;
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
    return 'RoomHostListItemState(createdAt: $createdAt, title: $title, maleUserIcons: $maleUserIcons, femaleUserIcons: $femaleUserIcons, holdingPlace: $holdingPlace, maxNumOfParticipants: $maxNumOfParticipants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomHostListItemState &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.title, title) || other.title == title) &&
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
      createdAt,
      title,
      const DeepCollectionEquality().hash(_maleUserIcons),
      const DeepCollectionEquality().hash(_femaleUserIcons),
      holdingPlace,
      maxNumOfParticipants);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomHostListItemStateCopyWith<_$_RoomHostListItemState> get copyWith =>
      __$$_RoomHostListItemStateCopyWithImpl<_$_RoomHostListItemState>(
          this, _$identity);
}

abstract class _RoomHostListItemState implements RoomHostListItemState {
  const factory _RoomHostListItemState(
      {final String createdAt,
      final String title,
      final List<String> maleUserIcons,
      final List<String> femaleUserIcons,
      final String holdingPlace,
      final int maxNumOfParticipants}) = _$_RoomHostListItemState;

  @override
  String get createdAt;
  @override
  String get title;
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
  _$$_RoomHostListItemStateCopyWith<_$_RoomHostListItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RoomGuestListItemState {
  String get hostName => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get hostUserIcon => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<String> get maleUserIcons => throw _privateConstructorUsedError;
  List<String> get femaleUserIcons => throw _privateConstructorUsedError;
  String get holdingPlace => throw _privateConstructorUsedError;
  int get maxNumOfParticipants => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomGuestListItemStateCopyWith<RoomGuestListItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomGuestListItemStateCopyWith<$Res> {
  factory $RoomGuestListItemStateCopyWith(RoomGuestListItemState value,
          $Res Function(RoomGuestListItemState) then) =
      _$RoomGuestListItemStateCopyWithImpl<$Res, RoomGuestListItemState>;
  @useResult
  $Res call(
      {String hostName,
      String createdAt,
      String hostUserIcon,
      String title,
      List<String> maleUserIcons,
      List<String> femaleUserIcons,
      String holdingPlace,
      int maxNumOfParticipants});
}

/// @nodoc
class _$RoomGuestListItemStateCopyWithImpl<$Res,
        $Val extends RoomGuestListItemState>
    implements $RoomGuestListItemStateCopyWith<$Res> {
  _$RoomGuestListItemStateCopyWithImpl(this._value, this._then);

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
    Object? title = null,
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_RoomGuestListItemStateCopyWith<$Res>
    implements $RoomGuestListItemStateCopyWith<$Res> {
  factory _$$_RoomGuestListItemStateCopyWith(_$_RoomGuestListItemState value,
          $Res Function(_$_RoomGuestListItemState) then) =
      __$$_RoomGuestListItemStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String hostName,
      String createdAt,
      String hostUserIcon,
      String title,
      List<String> maleUserIcons,
      List<String> femaleUserIcons,
      String holdingPlace,
      int maxNumOfParticipants});
}

/// @nodoc
class __$$_RoomGuestListItemStateCopyWithImpl<$Res>
    extends _$RoomGuestListItemStateCopyWithImpl<$Res,
        _$_RoomGuestListItemState>
    implements _$$_RoomGuestListItemStateCopyWith<$Res> {
  __$$_RoomGuestListItemStateCopyWithImpl(_$_RoomGuestListItemState _value,
      $Res Function(_$_RoomGuestListItemState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hostName = null,
    Object? createdAt = null,
    Object? hostUserIcon = null,
    Object? title = null,
    Object? maleUserIcons = null,
    Object? femaleUserIcons = null,
    Object? holdingPlace = null,
    Object? maxNumOfParticipants = null,
  }) {
    return _then(_$_RoomGuestListItemState(
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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

class _$_RoomGuestListItemState implements _RoomGuestListItemState {
  const _$_RoomGuestListItemState(
      {this.hostName = "",
      this.createdAt = "",
      this.hostUserIcon = "",
      this.title = "",
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
  final String title;
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
    return 'RoomGuestListItemState(hostName: $hostName, createdAt: $createdAt, hostUserIcon: $hostUserIcon, title: $title, maleUserIcons: $maleUserIcons, femaleUserIcons: $femaleUserIcons, holdingPlace: $holdingPlace, maxNumOfParticipants: $maxNumOfParticipants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomGuestListItemState &&
            (identical(other.hostName, hostName) ||
                other.hostName == hostName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.hostUserIcon, hostUserIcon) ||
                other.hostUserIcon == hostUserIcon) &&
            (identical(other.title, title) || other.title == title) &&
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
      title,
      const DeepCollectionEquality().hash(_maleUserIcons),
      const DeepCollectionEquality().hash(_femaleUserIcons),
      holdingPlace,
      maxNumOfParticipants);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomGuestListItemStateCopyWith<_$_RoomGuestListItemState> get copyWith =>
      __$$_RoomGuestListItemStateCopyWithImpl<_$_RoomGuestListItemState>(
          this, _$identity);
}

abstract class _RoomGuestListItemState implements RoomGuestListItemState {
  const factory _RoomGuestListItemState(
      {final String hostName,
      final String createdAt,
      final String hostUserIcon,
      final String title,
      final List<String> maleUserIcons,
      final List<String> femaleUserIcons,
      final String holdingPlace,
      final int maxNumOfParticipants}) = _$_RoomGuestListItemState;

  @override
  String get hostName;
  @override
  String get createdAt;
  @override
  String get hostUserIcon;
  @override
  String get title;
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
  _$$_RoomGuestListItemStateCopyWith<_$_RoomGuestListItemState> get copyWith =>
      throw _privateConstructorUsedError;
}
