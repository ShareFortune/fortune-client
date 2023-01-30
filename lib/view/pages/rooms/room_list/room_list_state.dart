import 'package:fortune_client/data/model/base/address_with_id/address_with_id.dart';
import 'package:fortune_client/data/model/base/tag/tag.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms/get_v1_rooms.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'room_list_state.freezed.dart';

@freezed
class RoomListState with _$RoomListState {
  const factory RoomListState({
    @Default(RoomListStateFilter()) RoomListStateFilter filter,
    @Default(AsyncLoading()) AsyncValue<List<RoomListStateRoom>> rooms,
  }) = _RoomListState;
}

@freezed
class RoomListStateFilter with _$RoomListStateFilter {
  const factory RoomListStateFilter({
    int? memberNum,
    AddressWithId? addressWithId,
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
