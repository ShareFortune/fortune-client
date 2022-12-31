import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/common/scroll_app_bar/scroll_app_bar.dart';
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

    final tabStyle = theme.textTheme.h40;

    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            const ScrollAppBar(title: "メッセージ", isBorder: false),
            SliverToBoxAdapter(
              child: TabBar(
                tabs: [
                  Tab(child: Text("ホスト", style: tabStyle)),
                  Tab(child: Text("ゲスト", style: tabStyle)),
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
      children: [
        _message(theme),
        const Gap(30),
        _message(theme),
        const Gap(30),
        _message(theme),
        const Gap(30),
      ],
    );
  }

  Widget _message(AppTheme theme) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        children: [
          const CircleAvatar(radius: 30),
          const Gap(15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("渋谷で飲み会しませんか？", style: theme.textTheme.h40.bold()),
                    Text("2022/01/01",
                        style: theme.textTheme.h10.merge(
                          const TextStyle(color: Color(0xFF969696)),
                        )),
                  ],
                ),
                const Gap(5),
                Text("新着メッセージを表示します。", style: theme.textTheme.h30),
              ],
            ),
          ),
        ],
      ),
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
