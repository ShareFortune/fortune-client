// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoomListState {
  int? get memberNum => throw _privateConstructorUsedError;
  AddressWithId? get addressWithId => throw _privateConstructorUsedError;
  List<Tag>? get tags => throw _privateConstructorUsedError;
  AsyncValue<List<RoomListStateItem>> get rooms =>
      throw _privateConstructorUsedError;

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
  $Res call(
      {int? memberNum,
      AddressWithId? addressWithId,
      List<Tag>? tags,
      AsyncValue<List<RoomListStateItem>> rooms});

  $AddressWithIdCopyWith<$Res>? get addressWithId;
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
    Object? memberNum = freezed,
    Object? addressWithId = freezed,
    Object? tags = freezed,
    Object? rooms = null,
  }) {
    return _then(_value.copyWith(
      memberNum: freezed == memberNum
          ? _value.memberNum
          : memberNum // ignore: cast_nullable_to_non_nullable
              as int?,
      addressWithId: freezed == addressWithId
          ? _value.addressWithId
          : addressWithId // ignore: cast_nullable_to_non_nullable
              as AddressWithId?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<RoomListStateItem>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressWithIdCopyWith<$Res>? get addressWithId {
    if (_value.addressWithId == null) {
      return null;
    }

    return $AddressWithIdCopyWith<$Res>(_value.addressWithId!, (value) {
      return _then(_value.copyWith(addressWithId: value) as $Val);
    });
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
  $Res call(
      {int? memberNum,
      AddressWithId? addressWithId,
      List<Tag>? tags,
      AsyncValue<List<RoomListStateItem>> rooms});

  @override
  $AddressWithIdCopyWith<$Res>? get addressWithId;
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
    Object? memberNum = freezed,
    Object? addressWithId = freezed,
    Object? tags = freezed,
    Object? rooms = null,
  }) {
    return _then(_$_RoomListState(
      memberNum: freezed == memberNum
          ? _value.memberNum
          : memberNum // ignore: cast_nullable_to_non_nullable
              as int?,
      addressWithId: freezed == addressWithId
          ? _value.addressWithId
          : addressWithId // ignore: cast_nullable_to_non_nullable
              as AddressWithId?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<RoomListStateItem>>,
    ));
  }
}

/// @nodoc

class _$_RoomListState implements _RoomListState {
  const _$_RoomListState(
      {this.memberNum,
      this.addressWithId,
      final List<Tag>? tags,
      this.rooms = const AsyncLoading()})
      : _tags = tags;

  @override
  final int? memberNum;
  @override
  final AddressWithId? addressWithId;
  final List<Tag>? _tags;
  @override
  List<Tag>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final AsyncValue<List<RoomListStateItem>> rooms;

  @override
  String toString() {
    return 'RoomListState(memberNum: $memberNum, addressWithId: $addressWithId, tags: $tags, rooms: $rooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomListState &&
            (identical(other.memberNum, memberNum) ||
                other.memberNum == memberNum) &&
            (identical(other.addressWithId, addressWithId) ||
                other.addressWithId == addressWithId) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.rooms, rooms) || other.rooms == rooms));
  }

  @override
  int get hashCode => Object.hash(runtimeType, memberNum, addressWithId,
      const DeepCollectionEquality().hash(_tags), rooms);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomListStateCopyWith<_$_RoomListState> get copyWith =>
      __$$_RoomListStateCopyWithImpl<_$_RoomListState>(this, _$identity);
}

abstract class _RoomListState implements RoomListState {
  const factory _RoomListState(
      {final int? memberNum,
      final AddressWithId? addressWithId,
      final List<Tag>? tags,
      final AsyncValue<List<RoomListStateItem>> rooms}) = _$_RoomListState;

  @override
  int? get memberNum;
  @override
  AddressWithId? get addressWithId;
  @override
  List<Tag>? get tags;
  @override
  AsyncValue<List<RoomListStateItem>> get rooms;
  @override
  @JsonKey(ignore: true)
  _$$_RoomListStateCopyWith<_$_RoomListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RoomListStateItem {
  GetV1RoomsResponseRoom get data => throw _privateConstructorUsedError;
  bool get isRequested => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomListStateItemCopyWith<RoomListStateItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomListStateItemCopyWith<$Res> {
  factory $RoomListStateItemCopyWith(
          RoomListStateItem value, $Res Function(RoomListStateItem) then) =
      _$RoomListStateItemCopyWithImpl<$Res, RoomListStateItem>;
  @useResult
  $Res call({GetV1RoomsResponseRoom data, bool isRequested});

  $GetV1RoomsResponseRoomCopyWith<$Res> get data;
}

/// @nodoc
class _$RoomListStateItemCopyWithImpl<$Res, $Val extends RoomListStateItem>
    implements $RoomListStateItemCopyWith<$Res> {
  _$RoomListStateItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? isRequested = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GetV1RoomsResponseRoom,
      isRequested: null == isRequested
          ? _value.isRequested
          : isRequested // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetV1RoomsResponseRoomCopyWith<$Res> get data {
    return $GetV1RoomsResponseRoomCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RoomListStateItemCopyWith<$Res>
    implements $RoomListStateItemCopyWith<$Res> {
  factory _$$_RoomListStateItemCopyWith(_$_RoomListStateItem value,
          $Res Function(_$_RoomListStateItem) then) =
      __$$_RoomListStateItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GetV1RoomsResponseRoom data, bool isRequested});

  @override
  $GetV1RoomsResponseRoomCopyWith<$Res> get data;
}

/// @nodoc
class __$$_RoomListStateItemCopyWithImpl<$Res>
    extends _$RoomListStateItemCopyWithImpl<$Res, _$_RoomListStateItem>
    implements _$$_RoomListStateItemCopyWith<$Res> {
  __$$_RoomListStateItemCopyWithImpl(
      _$_RoomListStateItem _value, $Res Function(_$_RoomListStateItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? isRequested = null,
  }) {
    return _then(_$_RoomListStateItem(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GetV1RoomsResponseRoom,
      isRequested: null == isRequested
          ? _value.isRequested
          : isRequested // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RoomListStateItem implements _RoomListStateItem {
  const _$_RoomListStateItem({required this.data, this.isRequested = false});

  @override
  final GetV1RoomsResponseRoom data;
  @override
  @JsonKey()
  final bool isRequested;

  @override
  String toString() {
    return 'RoomListStateItem(data: $data, isRequested: $isRequested)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomListStateItem &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.isRequested, isRequested) ||
                other.isRequested == isRequested));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, isRequested);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomListStateItemCopyWith<_$_RoomListStateItem> get copyWith =>
      __$$_RoomListStateItemCopyWithImpl<_$_RoomListStateItem>(
          this, _$identity);
}

abstract class _RoomListStateItem implements RoomListStateItem {
  const factory _RoomListStateItem(
      {required final GetV1RoomsResponseRoom data,
      final bool isRequested}) = _$_RoomListStateItem;

  @override
  GetV1RoomsResponseRoom get data;
  @override
  bool get isRequested;
  @override
  @JsonKey(ignore: true)
  _$$_RoomListStateItemCopyWith<_$_RoomListStateItem> get copyWith =>
      throw _privateConstructorUsedError;
}
