import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/core/base/message_room/messege_room.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/message/message_room_list/components/message_room_list_tile.dart';
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MessageRoomListView extends HookConsumerWidget {
  const MessageRoomListView(this.messageRooms, {super.key});

  final List<MessageRoom> messageRooms;

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
            padding: const EdgeInsets.only(left: 30, top: 30, bottom: 20),
            child: Text(
              LocaleKeys.message_room_list_page_guide.tr(
                args: [messageRooms.length.toString()],
              ),
              style: theme.textTheme.h20.paint(theme.appColors.subText1).bold(),
            ),
          ),
          Column(
            children: messageRooms.map((messageRoom) {
              return MessageRoomListTile(
                theme: theme,
                messageRoom: messageRoom,
                onTap: () => viewModel.navigateToMessagePage(messageRoom.id),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
