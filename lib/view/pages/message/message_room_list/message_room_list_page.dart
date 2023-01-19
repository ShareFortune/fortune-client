import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/common/scroll_app_bar/scroll_app_bar.dart';
import 'package:fortune_client/view/pages/message/message_room_list/components/empty_message_room_list_view.dart';
import 'package:fortune_client/view/pages/message/message_room_list/components/message_room_list_view.dart';
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_state.dart';
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/other/loading_widget.dart';
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
    final tabTextStyle = theme.textTheme.h20.paint(tabTextColor).bold();

    /// タブテキスト（選択時）
    final onTabTextColor = theme.appColors.onSecondary;
    final onTabTextStyle = theme.textTheme.h20.paint(onTabTextColor).bold();

    /// メッセージルーム生成
    Widget asyncMessageRooms(AsyncValue<StatusMessageRoomListState> data) {
      return data.maybeWhen(
        data: (data) => data.isEmpty()
            ? const EmptyMessageRoomListView()
            : _messageRoomsTabView(theme, data),
        orElse: () => loadingWidget(),
      );
    }

    /// メッセージルームホスト
    final messageRoomsHost = asyncMessageRooms(state.host);

    /// メッセージルームゲスト
    final messageRoomsGuest = asyncMessageRooms(state.guest);

    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            const ScrollAppBar(title: "メッセージ", isBorder: false),
            SliverToBoxAdapter(
              child: Container(
                color: theme.appColors.onBackground,
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
            ),
          ];
        },
        body: TabBarView(
          children: [messageRoomsHost, messageRoomsGuest],
        ),
      ),
    );
  }

  Widget _messageRoomsTabView(AppTheme theme, StatusMessageRoomListState data) {
    return ListView(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        MessageRoomListView("新着メッセージ", data.messageRooms),
        const Gap(10),
        MessageRoomListView("参加中のメッセージルーム", data.newMessageRooms),
      ],
    );
  }
}
