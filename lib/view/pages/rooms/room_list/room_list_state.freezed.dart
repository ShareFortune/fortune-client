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
  /// 次のページを取得中か
  bool get isFetchingNextPage => throw _privateConstructorUsedError;

  /// フィルター
  /// [rooms]取得時に適用
  RoomListStateFilter get filter => throw _privateConstructorUsedError;

  /// ルームリスト
  AsyncValue<List<Room>> get rooms => throw _privateConstructorUsedError;

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
      {bool isFetchingNextPage,
      RoomListStateFilter filter,
      AsyncValue<List<Room>> rooms});

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
    Object? isFetchingNextPage = null,
    Object? filter = null,
    Object? rooms = null,
  }) {
    return _then(_value.copyWith(
      isFetchingNextPage: null == isFetchingNextPage
          ? _value.isFetchingNextPage
          : isFetchingNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as RoomListStateFilter,
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Room>>,
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
      {bool isFetchingNextPage,
      RoomListStateFilter filter,
      AsyncValue<List<Room>> rooms});

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
    Object? isFetchingNextPage = null,
    Object? filter = null,
    Object? rooms = null,
  }) {
    return _then(_$_RoomListState(
      isFetchingNextPage: null == isFetchingNextPage
          ? _value.isFetchingNextPage
          : isFetchingNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as RoomListStateFilter,
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Room>>,
    ));
  }
}

/// @nodoc

class _$_RoomListState implements _RoomListState {
  const _$_RoomListState(
      {this.isFetchingNextPage = false,
      this.filter = const RoomListStateFilter(),
      this.rooms = const AsyncLoading()});

  /// 次のページを取得中か
  @override
  @JsonKey()
  final bool isFetchingNextPage;

  /// フィルター
  /// [rooms]取得時に適用
  @override
  @JsonKey()
  final RoomListStateFilter filter;

  /// ルームリスト
  @override
  @JsonKey()
  final AsyncValue<List<Room>> rooms;

  @override
  String toString() {
    return 'RoomListState(isFetchingNextPage: $isFetchingNextPage, filter: $filter, rooms: $rooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomListState &&
            (identical(other.isFetchingNextPage, isFetchingNextPage) ||
                other.isFetchingNextPage == isFetchingNextPage) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.rooms, rooms) || other.rooms == rooms));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isFetchingNextPage, filter, rooms);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomListStateCopyWith<_$_RoomListState> get copyWith =>
      __$$_RoomListStateCopyWithImpl<_$_RoomListState>(this, _$identity);
}

abstract class _RoomListState implements RoomListState {
  const factory _RoomListState(
      {final bool isFetchingNextPage,
      final RoomListStateFilter filter,
      final AsyncValue<List<Room>> rooms}) = _$_RoomListState;

  @override

  /// 次のページを取得中か
  bool get isFetchingNextPage;
  @override

  /// フィルター
  /// [rooms]取得時に適用
  RoomListStateFilter get filter;
  @override

  /// ルームリスト
  AsyncValue<List<Room>> get rooms;
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
  Address? get address => throw _privateConstructorUsedError;

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
  $Res call({int? memberNum, Address? address, List<Tag> tags});

  $AddressCopyWith<$Res>? get address;
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
    Object? address = freezed,
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      memberNum: freezed == memberNum
          ? _value.memberNum
          : memberNum // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
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
  $Res call({int? memberNum, Address? address, List<Tag> tags});

  @override
  $AddressCopyWith<$Res>? get address;
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
    Object? address = freezed,
    Object? tags = null,
  }) {
    return _then(_$_RoomListStateFilter(
      memberNum: freezed == memberNum
          ? _value.memberNum
          : memberNum // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
    ));
  }
}

/// @nodoc

class _$_RoomListStateFilter extends _RoomListStateFilter {
  const _$_RoomListStateFilter(
      {this.memberNum, this.address, final List<Tag> tags = const []})
      : _tags = tags,
        super._();

  /// 募集人数
  @override
  final int? memberNum;

  /// 開催地
  @override
  final Address? address;

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
    return 'RoomListStateFilter(memberNum: $memberNum, address: $address, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomListStateFilter &&
            (identical(other.memberNum, memberNum) ||
                other.memberNum == memberNum) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @override
  int get hashCode => Object.hash(runtimeType, memberNum, address,
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomListStateFilterCopyWith<_$_RoomListStateFilter> get copyWith =>
      __$$_RoomListStateFilterCopyWithImpl<_$_RoomListStateFilter>(
          this, _$identity);
}

abstract class _RoomListStateFilter extends RoomListStateFilter {
  const factory _RoomListStateFilter(
      {final int? memberNum,
      final Address? address,
      final List<Tag> tags}) = _$_RoomListStateFilter;
  const _RoomListStateFilter._() : super._();

  @override

  /// 募集人数
  int? get memberNum;
  @override

  /// 開催地
  Address? get address;
  @override

  /// タグ
  List<Tag> get tags;
  @override
  @JsonKey(ignore: true)
  _$$_RoomListStateFilterCopyWith<_$_RoomListStateFilter> get copyWith =>
      throw _privateConstructorUsedError;
}
