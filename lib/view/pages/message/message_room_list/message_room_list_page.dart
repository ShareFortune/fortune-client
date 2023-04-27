import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/core/base/message_room/messege_room.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/message/message_room_list/components/empty_message_room_list_view.dart';
import 'package:fortune_client/view/pages/message/message_room_list/components/message_room_list_view.dart';
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/scroll_app_bar.dart';
import 'package:fortune_client/view/widgets/other/async_value_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MessageRoomListPage extends HookConsumerWidget {
  const MessageRoomListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(messageRoomListViewModelProvider);
    final viewModel = ref.watch(messageRoomListViewModelProvider.notifier);

    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            ScrollAppBar(title: LocaleKeys.message_room_list_page_title.tr()),
            SliverToBoxAdapter(
              child: Container(
                color: theme.appColors.onBackground,
                child: _tabBar(theme),
              ),
            ),
          ];
        },
        body: TabBarView(
          children: [
            /// メッセージルームホスト
            _messageRoomListTabView(state.host),

            /// メッセージルームゲスト
            _messageRoomListTabView(state.guest),
          ],
        ),
      ),
    );
  }

  TabBar _tabBar(AppTheme theme) {
    return TabBar(
      labelColor: theme.appColors.linkColor,
      labelStyle: theme.textTheme.h20.bold(),
      unselectedLabelColor: theme.appColors.subText1,
      unselectedLabelStyle: theme.textTheme.h20.bold(),
      tabs: [
        Tab(text: LocaleKeys.message_room_list_page_tabs_host.tr()),
        Tab(text: LocaleKeys.message_room_list_page_tabs_guest.tr()),
      ],
    );
  }

  _messageRoomListTabView(AsyncValue<List<MessageRoom>> data) {
    return AsyncValueWidget(
      data: data,
      builder: (data) => data.isEmpty
          ? const EmptyMessageRoomListView()
          : MessageRoomListView(data),
    );
  }
}
