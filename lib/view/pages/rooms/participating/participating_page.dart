import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/rooms/participating/participating_view_model.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/scroll_app_bar.dart';
import 'package:fortune_client/view/widgets/other/async_value_widget.dart';
import 'package:fortune_client/view/widgets/room/participating_room.dart';
import 'package:fortune_client/view/widgets/room/room_state.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ParticipatingPage extends HookConsumerWidget {
  const ParticipatingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(participatingViewModelProvider);
    final viewModel = ref.watch(participatingViewModelProvider.notifier);

    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              const ScrollAppBar(title: '見つける'),
              const SliverPersistentHeader(
                delegate: _StickyTabBarDelegate(
                  tabBar: TabBar(
                    labelColor: Colors.black,
                    tabs: [Tab(text: '1'), Tab(text: '2')],
                  ),
                ),
              )
            ];
          },
          body: TabBarView(
            children: [
              /// ホスト
              _Item(
                data: state.host,
                builder: (room) => ParticipatingRoom(
                  HostRoomState(theme, room),
                ),
              ),

              /// ゲスト
              _Item(
                data: state.guest,
                builder: (room) => ParticipatingRoom(
                  GuestRoomState(theme, room),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Item<RoomType> extends HookConsumerWidget {
  final AsyncValue<List<RoomType>> data;
  final Widget Function(RoomType) builder;

  const _Item({
    required this.data,
    required this.builder,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AsyncValueWidget(
      data: data,
      builder: (rooms) {
        return ListView.separated(
          padding: EdgeInsets.zero,
          itemCount: rooms.length,
          separatorBuilder: (_, __) => const Gap(10),
          itemBuilder: (context, index) {
            return builder(rooms.elementAt(index));
          },
        );
      },
    );
  }
}

//SliverPersistentHeaderDelegateを継承したTabBarを作る
class _StickyTabBarDelegate extends SliverPersistentHeaderDelegate {
  const _StickyTabBarDelegate({required this.tabBar});

  final TabBar tabBar;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  Widget build(context, shrinkOffset, overlapsContent) {
    return Container(color: Colors.white, child: tabBar);
  }

  @override
  bool shouldRebuild(_StickyTabBarDelegate oldDelegate) {
    return tabBar != oldDelegate.tabBar;
  }
}
