import 'package:fortune_client/data/model/rooms/rooms.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_list_state.freezed.dart';

@freezed
class RoomListStateItem with _$RoomListStateItem {
  const factory RoomListStateItem({
    required String id,
    required String title,
    required String address,
    required String hostIcon,
    required List<String> memberIcons,
    required bool isFavorite,
    required bool isRequested,
  }) = _RoomListStateItem;

  static RoomListStateItem from(Room room) {
    return RoomListStateItem(
      id: room.id,
      title: room.roomName,
      hostIcon: room.hostMainImageURL,
      memberIcons: room.participantMainImageURLs ?? ["", ""],
      address: room.address.text,
      isFavorite: room.isFavorite,
      isRequested: false,
    );
  }
}
