import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/message_rooms/host/message_room_host.dart';
import 'package:fortune_client/view/pages/common/scroll_app_bar/scroll_app_bar.dart';
import 'package:fortune_client/view/pages/message/message_room_list/components/message_list_tile.dart';
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/loading_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MessageRoomListPage extends HookConsumerWidget {
  const MessageRoomListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(messageRoomListViewModelProvider);
    final viewModel = ref.watch(messageRoomListViewModelProvider.notifier);

    /// タブテキスト
    final tabTextColor = theme.appColors.subText1;
    final tabTextStyle = theme.textTheme.h20.paint(tabTextColor).bold();

    /// タブテキスト（選択時）
    final onTabTextColor = theme.appColors.secondary;
    final onTabTextStyle = theme.textTheme.h20.paint(onTabTextColor).bold();

    /// タイトル（ルームリスト）
    final titleTextColor = theme.appColors.subText1;
    final titleTextStyle = theme.textTheme.h20.paint(titleTextColor).bold();

    /// ホストのメッセージルーム
    Widget messageRoomsHost;
    messageRoomsHost = state.maybeWhen(
      data: (data) => _messagesRooms<MessageRoomHost>(theme, data.host),
      orElse: () => loadingWidget(),
    );

    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            const ScrollAppBar(title: "メッセージ", isBorder: false),
            SliverToBoxAdapter(
              child: TabBar(
                labelColor: onTabTextColor,
                unselectedLabelColor: tabTextColor,
                labelStyle: onTabTextStyle,
                unselectedLabelStyle: tabTextStyle,
                tabs: const [
                  Tab(text: "ホスト"),
                  Tab(text: "ゲスト"),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          children: [
            ListView(
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                _messageRoomsContainer(
                  Text("新着メッセージ", style: titleTextStyle),
                  messageRoomsHost,
                ),
                _blank(),
                _messageRoomsContainer(
                  Text("参加中のメッセージルーム", style: titleTextStyle),
                  messageRoomsHost,
                ),
              ],
            ),
            ListView(
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                _messageRoomsContainer(
                  Text("新着メッセージ", style: titleTextStyle),
                  messageRoomsHost,
                ),
                _blank(),
                _messageRoomsContainer(
                  Text("参加中のメッセージルーム", style: titleTextStyle),
                  messageRoomsHost,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _messageRoomsContainer(Text title, Widget messageRooms) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 30, top: 30, bottom: 30),
          child: title,
        ),
        messageRooms,
      ],
    );
  }

  Widget _messagesRooms<T>(AppTheme theme, List<T> rooms) {
    return Column(
      children: rooms.map((e) {
        return Container(
          padding: const EdgeInsets.only(bottom: 30),
          child: const MessageListTile(
            title: "渋谷で飲み会しませんか？",
            postedDate: "2022/01/01",
            body: "新着メッセージを表示します。",
          ),
        );
      }).toList(),
    );
  }

  _blank() {
    return Container(
      height: 10,
      color: const Color(0xFFF2F2F6),
    );
  }
}
