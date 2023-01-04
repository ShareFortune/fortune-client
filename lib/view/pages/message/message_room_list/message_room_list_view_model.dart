import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/datasource/remote/go/message_rooms/message_rooms_data_source.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_state.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final messageRoomListViewModelProvider =
    StateNotifierProvider<MessageRoomListViewModel, MessageRoomListState>(
  (ref) => MessageRoomListViewModel(sl())..initialize(),
);

class MessageRoomListViewModel extends StateNotifier<MessageRoomListState> {
  MessageRoomListViewModel(this._dataSource)
      : super(const MessageRoomListState());

  final MessageRoomsDataSource _dataSource;

  initialize() async {
    await fetchListHost();
    await fetchListGuest();
  }

  fetchListHost() async {
    final host = await AsyncValue.guard<StatusMessageRoomListState>(() async {
      final result = await _dataSource.fetchMessageRoomsHost();
      return StatusMessageRoomListState(
        messageRooms: result.messageRooms.map((e) {
          return MessageRoomListItemState.fromModel(e);
        }).toList(),
        newMessageRooms: result.messageRooms.map((e) {
          return MessageRoomListItemState.fromModel(e);
        }).toList(),
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
