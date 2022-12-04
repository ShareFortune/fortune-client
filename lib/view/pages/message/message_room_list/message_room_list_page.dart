import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/view/common/app_bar/app_bar.dart';
import 'package:fortune_client/view/pages/message/message_room/message_room_page.dart';
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_tile_widget.dart';
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';

class MessageRoomListPage extends ConsumerWidget {
  const MessageRoomListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(messageRoomListViewModelProvider);
    final viewModel = ref.watch(messageRoomListViewModelProvider.notifier);

    const textStyleTitle = TextStyle(fontSize: 16, color: Colors.black);
    const textStyleSubTitle = TextStyle(fontSize: 15, color: Colors.black54);

    const double tileHieght = 80;

    return state.when(
      data: (data) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                title: Text(
                  "メッセージ",
                  style: theme.textTheme.h40
                      .merge(TextStyle(color: theme.appColors.headline1))
                      .bold(),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: data.messageRooms.length,
                  (context, index) {
                    final messageRoom = data.messageRooms[index];
                    return InkWell(
                      onTap: (() {
                        /// メッセージルームに遷移
                        /// IDに修正必要
                        viewModel.pushMessagePage(context, messageRoom.title);
                      }),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: MessageRoomListTileWidget(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
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
