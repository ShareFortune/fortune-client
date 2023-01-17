import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/message/message_room_list/components/message_room_list_tile.dart';
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_state.dart';
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

    /// タイトル（ルームリスト）
    final titleTextColor = theme.appColors.subText1;
    final titleTextStyle = theme.textTheme.h20.paint(titleTextColor).bold();

    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 30, top: 30, bottom: 30),
            child: Text(title, style: titleTextStyle),
          ),
          Column(
            children: messageRooms.map((messageRoom) {
              return Container(
                padding: const EdgeInsets.only(bottom: 30),
                child: MessageRoomListTile(
                  title: messageRoom.roomName,
                  postedDate: messageRoom.lastSendAt,
                  body: messageRoom.lastSendMessage,
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
