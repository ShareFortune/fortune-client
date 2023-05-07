import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'message_room_list_view_model.g.dart';

@riverpod
class MessageRoomListViewModel extends _$MessageRoomListViewModel {
  @override
  Future<MessageRoomListState> build() async {
    return MessageRoomListState(
      host: await Repository.messageRooms.fetchHost(),
      guest: await Repository.messageRooms.fetchGuest(),
    );
  }

  /// 次のページを取得 (ホスト)
  Future<void> fetchNextHostRooms() async {
    final value = state.value;
    if (value == null) return;
    state = AsyncData(value.copyWith(isFetchingNextHostPage: true));
    state = await AsyncValue.guard(() async {
      return value.copyWith(
        isFetchingNextHostPage: false,
        host: [
          ...value.host,
          ...await Repository.messageRooms.fetchHostNext(),
        ],
      );
    });
  }

  /// 次のページを取得 (ゲスト)
  Future<void> fetchNextGuestRooms() async {
    final value = state.value;
    if (value == null) return;
    state = AsyncData(value.copyWith(isFetchingNextGuestPage: true));
    state = await AsyncValue.guard(() async {
      return value.copyWith(
        isFetchingNextGuestPage: false,
        guest: [
          ...value.guest,
          ...await Repository.messageRooms.fetchGuestNext(),
        ],
      );
    });
  }
}
