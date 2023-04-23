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
  /// ルームの検索結果が存在するか
  ///
  /// 存在しない場合はfalseになり、
  /// [rooms]には検索前のデータが引き続き存在する
  bool get hasRoomSearchResult => throw _privateConstructorUsedError;

  /// フィルター
  /// [rooms]取得時に適用
  RoomListStateFilter get filter => throw _privateConstructorUsedError;

  /// ルームリスト
  AsyncValue<List<RoomListStateRoom>> get rooms =>
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
      {bool hasRoomSearchResult,
      RoomListStateFilter filter,
      AsyncValue<List<RoomListStateRoom>> rooms});

  $RoomListStateFilterCopyWith<$Res> get filter;
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
    Object? hasRoomSearchResult = null,
    Object? filter = null,
    Object? rooms = null,
  }) {
    return _then(_value.copyWith(
      hasRoomSearchResult: null == hasRoomSearchResult
          ? _value.hasRoomSearchResult
          : hasRoomSearchResult // ignore: cast_nullable_to_non_nullable
              as bool,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as RoomListStateFilter,
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<RoomListStateRoom>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RoomListStateFilterCopyWith<$Res> get filter {
    return $RoomListStateFilterCopyWith<$Res>(_value.filter, (value) {
      return _then(_value.copyWith(filter: value) as $Val);
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
      {bool hasRoomSearchResult,
      RoomListStateFilter filter,
      AsyncValue<List<RoomListStateRoom>> rooms});

  @override
  $RoomListStateFilterCopyWith<$Res> get filter;
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
    Object? hasRoomSearchResult = null,
    Object? filter = null,
    Object? rooms = null,
  }) {
    return _then(_$_RoomListState(
      hasRoomSearchResult: null == hasRoomSearchResult
          ? _value.hasRoomSearchResult
          : hasRoomSearchResult // ignore: cast_nullable_to_non_nullable
              as bool,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as RoomListStateFilter,
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<RoomListStateRoom>>,
    ));
  }
}

/// @nodoc

class _$_RoomListState implements _RoomListState {
  const _$_RoomListState(
      {this.hasRoomSearchResult = true,
      this.filter = const RoomListStateFilter(),
      this.rooms = const AsyncLoading()});

  /// ルームの検索結果が存在するか
  ///
  /// 存在しない場合はfalseになり、
  /// [rooms]には検索前のデータが引き続き存在する
  @override
  @JsonKey()
  final bool hasRoomSearchResult;

  /// フィルター
  /// [rooms]取得時に適用
  @override
  @JsonKey()
  final RoomListStateFilter filter;

  /// ルームリスト
  @override
  @JsonKey()
  final AsyncValue<List<RoomListStateRoom>> rooms;

  @override
  String toString() {
    return 'RoomListState(hasRoomSearchResult: $hasRoomSearchResult, filter: $filter, rooms: $rooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomListState &&
            (identical(other.hasRoomSearchResult, hasRoomSearchResult) ||
                other.hasRoomSearchResult == hasRoomSearchResult) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.rooms, rooms) || other.rooms == rooms));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, hasRoomSearchResult, filter, rooms);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomListStateCopyWith<_$_RoomListState> get copyWith =>
      __$$_RoomListStateCopyWithImpl<_$_RoomListState>(this, _$identity);
}

abstract class _RoomListState implements RoomListState {
  const factory _RoomListState(
      {final bool hasRoomSearchResult,
      final RoomListStateFilter filter,
      final AsyncValue<List<RoomListStateRoom>> rooms}) = _$_RoomListState;

  @override

  /// ルームの検索結果が存在するか
  ///
  /// 存在しない場合はfalseになり、
  /// [rooms]には検索前のデータが引き続き存在する
  bool get hasRoomSearchResult;
  @override

  /// フィルター
  /// [rooms]取得時に適用
  RoomListStateFilter get filter;
  @override

  /// ルームリスト
  AsyncValue<List<RoomListStateRoom>> get rooms;
  @override
  @JsonKey(ignore: true)
  _$$_RoomListStateCopyWith<_$_RoomListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RoomListStateFilter {
  /// 募集人数
  int? get memberNum => throw _privateConstructorUsedError;

  /// 開催地
  AddressWithId? get addressWithId => throw _privateConstructorUsedError;

  /// タグ
  List<Tag> get tags => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomListStateFilterCopyWith<RoomListStateFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomListStateFilterCopyWith<$Res> {
  factory $RoomListStateFilterCopyWith(
          RoomListStateFilter value, $Res Function(RoomListStateFilter) then) =
      _$RoomListStateFilterCopyWithImpl<$Res, RoomListStateFilter>;
  @useResult
  $Res call({int? memberNum, AddressWithId? addressWithId, List<Tag> tags});

  $AddressWithIdCopyWith<$Res>? get addressWithId;
}

/// @nodoc
class _$RoomListStateFilterCopyWithImpl<$Res, $Val extends RoomListStateFilter>
    implements $RoomListStateFilterCopyWith<$Res> {
  _$RoomListStateFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberNum = freezed,
    Object? addressWithId = freezed,
    Object? tags = null,
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
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
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
abstract class _$$_RoomListStateFilterCopyWith<$Res>
    implements $RoomListStateFilterCopyWith<$Res> {
  factory _$$_RoomListStateFilterCopyWith(_$_RoomListStateFilter value,
          $Res Function(_$_RoomListStateFilter) then) =
      __$$_RoomListStateFilterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? memberNum, AddressWithId? addressWithId, List<Tag> tags});

  @override
  $AddressWithIdCopyWith<$Res>? get addressWithId;
}

/// @nodoc
class __$$_RoomListStateFilterCopyWithImpl<$Res>
    extends _$RoomListStateFilterCopyWithImpl<$Res, _$_RoomListStateFilter>
    implements _$$_RoomListStateFilterCopyWith<$Res> {
  __$$_RoomListStateFilterCopyWithImpl(_$_RoomListStateFilter _value,
      $Res Function(_$_RoomListStateFilter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberNum = freezed,
    Object? addressWithId = freezed,
    Object? tags = null,
  }) {
    return _then(_$_RoomListStateFilter(
      memberNum: freezed == memberNum
          ? _value.memberNum
          : memberNum // ignore: cast_nullable_to_non_nullable
              as int?,
      addressWithId: freezed == addressWithId
          ? _value.addressWithId
          : addressWithId // ignore: cast_nullable_to_non_nullable
              as AddressWithId?,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
    ));
  }
}

/// @nodoc

class _$_RoomListStateFilter implements _RoomListStateFilter {
  const _$_RoomListStateFilter(
      {this.memberNum, this.addressWithId, final List<Tag> tags = const []})
      : _tags = tags;

  /// 募集人数
  @override
  final int? memberNum;

  /// 開催地
  @override
  final AddressWithId? addressWithId;

  /// タグ
  final List<Tag> _tags;

  /// タグ
  @override
  @JsonKey()
  List<Tag> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'RoomListStateFilter(memberNum: $memberNum, addressWithId: $addressWithId, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomListStateFilter &&
            (identical(other.memberNum, memberNum) ||
                other.memberNum == memberNum) &&
            (identical(other.addressWithId, addressWithId) ||
                other.addressWithId == addressWithId) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @override
  int get hashCode => Object.hash(runtimeType, memberNum, addressWithId,
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomListStateFilterCopyWith<_$_RoomListStateFilter> get copyWith =>
      __$$_RoomListStateFilterCopyWithImpl<_$_RoomListStateFilter>(
          this, _$identity);
}

abstract class _RoomListStateFilter implements RoomListStateFilter {
  const factory _RoomListStateFilter(
      {final int? memberNum,
      final AddressWithId? addressWithId,
      final List<Tag> tags}) = _$_RoomListStateFilter;

  @override

  /// 募集人数
  int? get memberNum;
  @override

  /// 開催地
  AddressWithId? get addressWithId;
  @override

  /// タグ
  List<Tag> get tags;
  @override
  @JsonKey(ignore: true)
  _$$_RoomListStateFilterCopyWith<_$_RoomListStateFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RoomListStateRoom {
  GetV1RoomsResponseRoom get data => throw _privateConstructorUsedError;
  bool get isRequested => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomListStateRoomCopyWith<RoomListStateRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomListStateRoomCopyWith<$Res> {
  factory $RoomListStateRoomCopyWith(
          RoomListStateRoom value, $Res Function(RoomListStateRoom) then) =
      _$RoomListStateRoomCopyWithImpl<$Res, RoomListStateRoom>;
  @useResult
  $Res call({GetV1RoomsResponseRoom data, bool isRequested});

  $GetV1RoomsResponseRoomCopyWith<$Res> get data;
}

/// @nodoc
class _$RoomListStateRoomCopyWithImpl<$Res, $Val extends RoomListStateRoom>
    implements $RoomListStateRoomCopyWith<$Res> {
  _$RoomListStateRoomCopyWithImpl(this._value, this._then);

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
abstract class _$$_RoomListItemCopyWith<$Res>
    implements $RoomListStateRoomCopyWith<$Res> {
  factory _$$_RoomListItemCopyWith(
          _$_RoomListItem value, $Res Function(_$_RoomListItem) then) =
      __$$_RoomListItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GetV1RoomsResponseRoom data, bool isRequested});

  @override
  $GetV1RoomsResponseRoomCopyWith<$Res> get data;
}

/// @nodoc
class __$$_RoomListItemCopyWithImpl<$Res>
    extends _$RoomListStateRoomCopyWithImpl<$Res, _$_RoomListItem>
    implements _$$_RoomListItemCopyWith<$Res> {
  __$$_RoomListItemCopyWithImpl(
      _$_RoomListItem _value, $Res Function(_$_RoomListItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? isRequested = null,
  }) {
    return _then(_$_RoomListItem(
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

class _$_RoomListItem implements _RoomListItem {
  const _$_RoomListItem({required this.data, this.isRequested = false});

  @override
  final GetV1RoomsResponseRoom data;
  @override
  @JsonKey()
  final bool isRequested;

  @override
  String toString() {
    return 'RoomListStateRoom(data: $data, isRequested: $isRequested)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomListItem &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.isRequested, isRequested) ||
                other.isRequested == isRequested));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, isRequested);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomListItemCopyWith<_$_RoomListItem> get copyWith =>
      __$$_RoomListItemCopyWithImpl<_$_RoomListItem>(this, _$identity);
}

abstract class _RoomListItem implements RoomListStateRoom {
  const factory _RoomListItem(
      {required final GetV1RoomsResponseRoom data,
      final bool isRequested}) = _$_RoomListItem;

  @override
  GetV1RoomsResponseRoom get data;
  @override
  bool get isRequested;
  @override
  @JsonKey(ignore: true)
  _$$_RoomListItemCopyWith<_$_RoomListItem> get copyWith =>
      throw _privateConstructorUsedError;
}
