import 'package:fortune_client/data/model/base/address/address.dart';
import 'package:fortune_client/data/model/base/address_with_id/address_with_id.dart';
import 'package:fortune_client/data/model/base/room/room.dart';
import 'package:fortune_client/data/model/base/tag/tag.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'room_list_state.freezed.dart';

@freezed
class RoomListState with _$RoomListState {
  const factory RoomListState({
    int? memberNum,
    AddressWithId? addressWithId,
    List<Tag>? tags,
    @Default(AsyncLoading()) AsyncValue<List<RoomListStateItem>> rooms,
  }) = _RoomListState;
}

@freezed
class RoomListStateItem with _$RoomListStateItem {
  const factory RoomListStateItem({
    required Room data,
    @Default(false) bool isRequested,
  }) = _RoomListStateItem;
}
//   static RoomListStateItem from(Room room) {
//     return RoomListStateItem(
//       id: room.id,
//       title: room.roomName,
//       hostIcon: room.hostMainImageURL,
//       memberIcons: room.participantMainImageURLs ?? ["", ""],
//       address: room.address.text,
//       isFavorite: room.isFavorite,
//       isRequested: false,
//     );
//   }
// }
