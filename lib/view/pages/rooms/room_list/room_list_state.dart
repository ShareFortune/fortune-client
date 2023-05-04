import 'package:fortune_client/data/model/addresses/address/address.dart';
import 'package:fortune_client/data/model/rooms/room/room.dart';
import 'package:fortune_client/data/model/tags/tag/tag.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'room_list_state.freezed.dart';

@freezed
class RoomListState with _$RoomListState {
  const factory RoomListState({
    /// ルームの検索結果が存在するか
    ///
    /// 存在しない場合はfalseになり、
    /// [rooms]には検索前のデータが引き続き存在する
    @Default(true) bool hasRoomSearchResult,

    /// フィルター
    /// [rooms]取得時に適用
    @Default(RoomListStateFilter()) RoomListStateFilter filter,

    /// ルームリスト
    @Default(AsyncLoading()) AsyncValue<List<RoomListStateRoom>> rooms,
  }) = _RoomListState;
}

/// ルームリスト検索条件
@freezed
class RoomListStateFilter with _$RoomListStateFilter {
  const RoomListStateFilter._();
  const factory RoomListStateFilter({
    /// 募集人数
    int? memberNum,

    /// 開催地
    Address? address,

    /// タグ
    @Default([]) List<Tag> tags,
  }) = _RoomListStateFilter;

  /// タグでフィルタリングされているか
  bool get isFilteredByTag => tags.isNotEmpty;

  /// 開催地でフィルタリングされているか
  bool get isFilteredByAddress => address != null;

  /// 募集人数でフィルタリングされているか
  bool get isFilteredByMemberNum => memberNum != null;
}

@freezed
class RoomListStateRoom with _$RoomListStateRoom {
  const factory RoomListStateRoom({
    required Room data,
    @Default(false) bool isRequested,
  }) = _RoomListItem;
}
