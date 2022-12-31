import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/common/scroll_app_bar/scroll_app_bar.dart';
import 'package:fortune_client/view/pages/message/message_room_list/components/message_list_tile.dart';
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:gap/gap.dart';
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
    final tabTextStyle = theme.textTheme.h40.paint(tabTextColor);

    /// タブテキスト（選択時）
    final onTabTextColor = theme.appColors.secondary;
    final onTabTextStyle = theme.textTheme.h40.paint(onTabTextColor);

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
            _messagesContainer(theme),
            _messagesContainer(theme),
          ],
        ),
      ),
    );
  }

  Widget _messagesContainer(AppTheme theme) {
    return ListView(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        _listHeader(theme, "新着メッセージ"),
        _messages(theme),
        _blank(),
        _listHeader(theme, "参加中のルーム 5"),
        _messages(theme),
      ],
    );
  }

  Widget _messages(AppTheme theme) {
    return Column(
      children: const [
        MessageListTile(
          title: "渋谷で飲み会しませんか？",
          postedDate: "2022/01/01",
          body: "新着メッセージを表示します。",
        ),
        Gap(30),
        MessageListTile(
          title: "渋谷で飲み会しませんか？",
          postedDate: "2022/01/01",
          body: "新着メッセージを表示します。",
        ),
        Gap(30),
        MessageListTile(
          title: "渋谷で飲み会しませんか？",
          postedDate: "2022/01/01",
          body: "新着メッセージを表示します。",
        ),
        Gap(30),
      ],
    );
  }

  _blank() {
    return Container(
      height: 10,
      color: const Color(0xFFF2F2F6),
    );
  }

  _listHeader(AppTheme theme, String title) {
    return Container(
      padding: const EdgeInsets.only(left: 30, top: 50, bottom: 50),
      child: Text(title, style: theme.textTheme.h30.bold()),
    );
  }
}
