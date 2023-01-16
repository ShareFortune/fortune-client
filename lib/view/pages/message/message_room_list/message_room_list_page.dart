import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/common/scroll_app_bar/scroll_app_bar.dart';
import 'package:fortune_client/view/pages/message/message_room_list/components/empty_message_room_list_view.dart';
import 'package:fortune_client/view/pages/message/message_room_list/components/message_room_list_tile.dart';
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_state.dart';
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/other/loading_widget.dart';
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
        _messageRoomsContainer(
          theme,
          "新着メッセージ",
          Column(
            children: data.messageRooms.map((e) {
              return _messagesRooms(theme, e);
            }).toList(),
          ),
        ),
        _blank(),
        _messageRoomsContainer(
          theme,
          "参加中のメッセージルーム",
          Column(
            children: data.newMessageRooms.map((e) {
              return _messagesRooms(theme, e);
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _messageRoomsContainer(AppTheme theme, String title, Widget rooms) {
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
          rooms,
        ],
      ),
    );
  }

  Widget _messagesRooms(AppTheme theme, MessageRoomListItemState room) {
    return Container(
      padding: const EdgeInsets.only(bottom: 30),
      child: MessageRoomListTile(
        title: room.roomName,
        postedDate: room.lastSendAt,
        body: room.lastSendMessage,
      ),
    );
  }

  _blank() {
    return Container(
      height: 10,
      color: const Color(0xFFF2F2F6),
    );
  }
}
