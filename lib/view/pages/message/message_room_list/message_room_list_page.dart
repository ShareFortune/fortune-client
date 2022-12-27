import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/common/scroll_app_bar/scroll_app_bar.dart';
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_tile_widget.dart';
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MessageRoomListPage extends HookConsumerWidget {
  const MessageRoomListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(messageRoomListViewModelProvider);
    final viewModel = ref.watch(messageRoomListViewModelProvider.notifier);

    return state.when(
      data: (data) {
        return CustomScrollView(
          slivers: [
            const ScrollAppBar(title: "メッセージ", isBorder: false),
            SliverPadding(
              padding: const EdgeInsets.only(top: 20),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: data.messageRooms.length,
                  (context, index) {
                    final messageRoom = data.messageRooms[index];
                    return Container(
                      padding: const EdgeInsets.only(
                          bottom: 30, left: 20, right: 20),
                      child: InkWell(
                        onTap: (() {
                          /// メッセージルームに遷移
                          /// IDに修正必要
                          viewModel.pushMessagePage(context, messageRoom.title);
                        }),
                        child: const MessageRoomListTileWidget(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        );
      },
      error: (e, msg) => Scaffold(
        body: SafeArea(
          child: Center(
            child: Text(
              e.toString(),
              // style: theme.textTheme.h30,
            ),
          ),
        ),
      ),
      loading: () => const Scaffold(
        body: SafeArea(
          child: Center(
            child: CircularProgressIndicator(
                // color: theme.appColors.primary,
                ),
          ),
        ),
      ),
    );
  }

  Text postedDate(DateTime postedAt) {
    return const Text(
      "昨日",
      style: TextStyle(fontSize: 10),
    );
  }

  Widget notificationWidget(int notifications) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 25,
        padding: const EdgeInsets.only(left: 10, right: 10, top: 4.2),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          "$notifications",
          maxLines: 1,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
