import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/view/pages/message/message_room/message_room_page.dart';
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_state.dart';
import 'package:fortune_client/view/routes/route_navigator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final messageRoomListViewModelProvider =
    StateNotifierProvider<MessageRoomListViewModel, MessageRoomListState>(
  (ref) => MessageRoomListViewModel(
    const MessageRoomListState(
      host: AsyncLoading(),
      guest: AsyncLoading(),
    ),
  )..initialize(),
);

class MessageRoomListViewModel extends StateNotifier<MessageRoomListState> {
  MessageRoomListViewModel(super.state);

  Future<void> initialize() async {
    await fetchMessageRoomsHost();
    await fetchMessageRoomsGuest();
  }

  Future<void> fetchMessageRoomsHost() async {
    state = state.copyWith(
      host: await AsyncValue.guard(
        () => Repository.messageRooms.fetchHost(),
      ),
    );
  }

  Future<void> fetchMessageRoomsGuest() async {
    state = state.copyWith(
      guest: await AsyncValue.guard(
        () => Repository.messageRooms.fetchGuest(),
      ),
    );
  }

  navigateToMessagePage(String id) async {
    navigator.navigateTo(
      RoutePath.messageRoom,
      arguments: MessageRoomPageArguments(id: id),
    );
  }
}
