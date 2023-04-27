import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/core/base/message_room/messege_room.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/message/message_room_list/components/empty_message_room_list_view.dart';
import 'package:fortune_client/view/pages/message/message_room_list/components/message_room_list_view.dart';
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_view_model.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/animation/animated_sticky_tab_bar.dart';
import 'package:fortune_client/view/widgets/app_bar/scroll_app_bar.dart';
import 'package:fortune_client/view/widgets/other/async_value_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MessageRoomListPage extends StatefulHookConsumerWidget {
  const MessageRoomListPage({Key? key}) : super(key: key);

  @override
  ConsumerState<MessageRoomListPage> createState() =>
      _MessageRoomListPageState();
}

class _MessageRoomListPageState extends ConsumerState<MessageRoomListPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    _tabController?.animation?.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(messageRoomListViewModelProvider);
    final viewModel = ref.watch(messageRoomListViewModelProvider.notifier);

    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            ScrollAppBar(title: LocaleKeys.message_room_list_page_title.tr()),
            AnimatedStickyTabBar(
              controller: _tabController,
              tabs: ['ホスト', 'ゲスト'].map((e) => Tab(text: e)).toList(),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: [state.host, state.guest].map((messageRoom) {
            return AsyncValueWidget(
                data: messageRoom,
                builder: (data) {
                  print(data);
                  if (data?.isNotEmpty == true) {
                    return MessageRoomListView(data!);
                  }
                  return const EmptyMessageRoomListView();
                });
          }).toList(),
        ),
      ),
    );
  }
}
