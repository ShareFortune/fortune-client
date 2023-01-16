import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/repository/message/message_repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_state.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final messageRoomListViewModelProvider =
    StateNotifierProvider<MessageRoomListViewModel, MessageRoomListState>(
  (ref) => MessageRoomListViewModel(sl())..initialize(),
);

class MessageRoomListViewModel extends StateNotifier<MessageRoomListState> {
  MessageRoomListViewModel(this._repository)
      : super(const MessageRoomListState());

  final MessageRepository _repository;

  initialize() async {
    await fetchListHost();
    await fetchListGuest();
  }

  fetchListHost() async {
    final host = await AsyncValue.guard<StatusMessageRoomListState>(() async {
      final result = await _repository.fetchRoomsHost();
      final messageRooms = result.map((e) {
        return MessageRoomListItemState.from(e);
      }).toList();
      return StatusMessageRoomListState(
        messageRooms: messageRooms,
        newMessageRooms: messageRooms,
      );
    });
    state = state.copyWith(host: host, guest: state.guest);
  }

  fetchListGuest() async {
    final guest = await AsyncValue.guard<StatusMessageRoomListState>(() async {
      return const StatusMessageRoomListState(
          messageRooms: [], newMessageRooms: []);
    });
    state = state.copyWith(host: state.host, guest: guest);
  }

  navigateToMessagePage(BuildContext context, String id) async {
    await context.router.push(MessageRoomRoute(id: id));
  }
}
