import 'dart:math' as math;
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_state.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';

final messageRoomListViewModelProvider = StateNotifierProvider<
    MessageRoomListViewModel, AsyncValue<MessageRoomListState>>((ref) {
  return MessageRoomListViewModel(ref)..initialize();
});

class MessageRoomListViewModel
    extends StateNotifier<AsyncValue<MessageRoomListState>> {
  MessageRoomListViewModel(this._ref)
      : super(const AsyncValue<MessageRoomListState>.loading());

  final Ref _ref;

  initialize() {
    fetchList();
  }

  fetchList() async {
    state = await AsyncValue.guard(() async {
      final messageRoomListItem = MessageRoomListItemState(
        title: "渋谷に集まろー",
        content: "いつ集まりますか？ 今週の月曜都合よければ集まりませんか？いつ集まりますか？",
        userIcon:
            "https://gws-ug.jp/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png",
        postedAt: DateTime.now(),
        notifications: math.Random().nextInt(5) + 1,
      );
      return MessageRoomListState(messageRooms: [
        messageRoomListItem,
        messageRoomListItem,
        messageRoomListItem,
        messageRoomListItem,
        messageRoomListItem
      ]);
    });
  }

  pushMessagePage(BuildContext context, String id) async {
    await context.router.push(MessageRoomRoute(id: id));
  }
}
