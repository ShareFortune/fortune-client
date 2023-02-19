import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_state.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
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

  initialize() => fetch();

  fetch() async {
    state = state.copyWith(
      host: await AsyncValue.guard(() => Repository.messageRooms.fetchHost()),
      guest: await AsyncValue.guard(() => Repository.messageRooms.fetchGuest()),
    );
  }

  navigateToMessagePage(String id) async {
    await getIt<AppRouter>().push(MessageRoomRoute(id: id));
  }
}
