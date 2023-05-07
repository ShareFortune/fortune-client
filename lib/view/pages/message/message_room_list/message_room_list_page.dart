import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/message/message_room_list/components/empty_message_room_list_view.dart';
import 'package:fortune_client/view/pages/message/message_room_list/components/message_room_list_view.dart';
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_view_model.dart';
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
    with AutomaticKeepAliveClientMixin, SingleTickerProviderStateMixin {
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
    super.build(context);
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
        body: NotificationListener<ScrollEndNotification>(
          onNotification: (notification) {
            if (notification.metrics.extentAfter == 0) {
              _tabController?.index == 0
                  ? viewModel.fetchNextHostRooms()
                  : viewModel.fetchNextGuestRooms();
            }
            return false;
          },
          child: TabBarView(
            controller: _tabController,
            children: [
              AsyncValueWidget(
                data: state,
                builder: (state) {
                  if (state.host.isNotEmpty == true) {
                    return MessageRoomListView(state.host);
                  }
                  return const EmptyMessageRoomListView();
                },
              ),
              AsyncValueWidget(
                data: state,
                builder: (state) {
                  if (state.guest.isNotEmpty == true) {
                    return MessageRoomListView(state.guest);
                  }
                  return const EmptyMessageRoomListView();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
