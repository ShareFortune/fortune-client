import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/message/message_room_list/components/message_room_list_tile.dart';
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_state.dart';
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MessageRoomListView extends HookConsumerWidget {
  const MessageRoomListView(this.title, this.messageRooms, {super.key});

  final String title;
  final List<MessageRoomListItemState> messageRooms;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final viewModel = ref.watch(messageRoomListViewModelProvider.notifier);

    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 30, top: 30, bottom: 30),
            child: Text(
              title,
              style: theme.textTheme.h20.paint(theme.appColors.subText1).bold(),
            ),
          ),
          Column(
            children: messageRooms.map((messageRoom) {
              return Container(
                padding: const EdgeInsets.only(bottom: 30),
                child: MessageRoomListTile(
                  theme: theme,
                  title: messageRoom.roomName,
                  postedDate: messageRoom.lastSendAt,
                  body: messageRoom.lastSendMessage,
                  onTap: () => viewModel.navigateToMessagePage(messageRoom.id),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
