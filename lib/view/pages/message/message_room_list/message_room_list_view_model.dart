import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/datasource/remote/go/message_rooms/message_rooms_data_source.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_state.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final messageRoomListViewModelProvider = StateNotifierProvider<
    MessageRoomListViewModel, AsyncValue<MessageRoomListState>>((ref) {
  return MessageRoomListViewModel(sl())..initialize();
});

class MessageRoomListViewModel
    extends StateNotifier<AsyncValue<MessageRoomListState>> {
  MessageRoomListViewModel(this._dataSource)
      : super(const AsyncValue.loading());

  final MessageRoomsDataSource _dataSource;

  initialize() async {
    await fetchListHost();
  }

  fetchListHost() async {
    MessageRoomListState? data = state.value;
    data ??= const MessageRoomListState(host: []);
    state = await AsyncValue.guard(() async {
      final result = await _dataSource.fetchMessageRoomsHost();
      return data!.copyWith(host: result.messageRooms);
    });
  }

  navigateToMessagePage(BuildContext context, String id) async {
    await context.router.push(MessageRoomRoute(id: id));
  }
}
