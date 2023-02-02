import 'package:fortune_client/data/model/base/address_with_id/address_with_id.dart';
import 'package:fortune_client/data/model/base/tag/tag.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms/get_v1_rooms.dart';
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
    bool? hasRoomSearchResult,

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
  const factory RoomListStateFilter({
    /// 募集人数
    int? memberNum,

    /// 開催地
    AddressWithId? addressWithId,

    /// タグ
    List<Tag>? tags,
  }) = _RoomListStateFilter;
}

@freezed
class RoomListStateRoom with _$RoomListStateRoom {
  const factory RoomListStateRoom({
    required GetV1RoomsResponseRoom data,
    @Default(false) bool isRequested,
  }) = _RoomListItem;
}
