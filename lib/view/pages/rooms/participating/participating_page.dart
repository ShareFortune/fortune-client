import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/rooms/participating/participating_view_model.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/scroll_app_bar.dart';
import 'package:fortune_client/view/widgets/other/async_value_widget.dart';
import 'package:fortune_client/view/widgets/room/participating_room.dart';
import 'package:fortune_client/view/widgets/room/room_state.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ParticipatingPage extends StatefulHookConsumerWidget {
  const ParticipatingPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ParticipatingPage> createState() => _ParticipatingPageState();
}

class _ParticipatingPageState extends ConsumerState<ParticipatingPage>
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
    final state = ref.watch(participatingViewModelProvider);
    final viewModel = ref.watch(participatingViewModelProvider.notifier);

    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              const ScrollAppBar(title: '見つける'),
              SliverPersistentHeader(
                delegate: _StickyTabBarDelegate(
                  theme: theme,
                  tabBar: TabBar(
                    controller: _tabController,
                    indicatorColor: Colors.transparent,
                    labelColor: theme.appColors.onPrimary,
                    labelStyle: theme.textTheme.h20.bold(),
                    unselectedLabelColor: theme.appColors.primary,
                    unselectedLabelStyle: theme.textTheme.h20.bold(),
                    tabs: [
                      'ホスト',
                      'ゲスト',
                    ].map((e) => Tab(text: e)).toList(),
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            controller: _tabController,
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
  const _StickyTabBarDelegate({
    required this.theme,
    required this.tabBar,
  });

  final AppTheme theme;
  final TabBar tabBar;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  double get maxExtent => tabBar.preferredSize.height;

  TabController? get controller => tabBar.controller;

  /// PageViewのスクロール量を[0~1]で取得する
  double get animationValue => controller?.animation?.value ?? 0;

  /// [0~1]で生成されるデータを[-1~1]に変換する
  double get indicatorPosition => animationValue * 2 - 1;

  /// 現在表示されているWidget
  Widget get currentWidget => tabBar.tabs[controller?.index ?? 0];

  @override
  Widget build(context, shrinkOffset, overlapsContent) {
    return Container(
      color: theme.appColors.onBackground,
      child: Stack(
        children: [
          AnimatedAlign(
            alignment: Alignment(indicatorPosition, 0),
            duration: const Duration(milliseconds: 1),
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 8),
              width: MediaQuery.of(context).size.width / 2,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: theme.appColors.primary,
                ),
                child: Opacity(opacity: 0, child: currentWidget),
              ),
            ),
          ),
          Container(color: Colors.transparent, child: tabBar),
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(_StickyTabBarDelegate oldDelegate) {
    return tabBar != oldDelegate.tabBar;
  }
}


        //  AnimatedAlign(
        //     alignment: Alignment(indicatorPosition, 0),
        //     duration: const Duration(milliseconds: 1),
        //     child: SizedBox(
        //       width: MediaQuery.of(context).size.width / 2,
        //       child: Container(
        //         alignment: Alignment.center,
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(30),
        //           color: theme.appColors.primary,
        //         ),
        //         padding: const EdgeInsets.symmetric(
        //           vertical: 6,
        //           horizontal: 20,
        //         ),
        //         child: FittedBox(
        //           fit: BoxFit.fill,
        //           child: tabBar.tabs.first,
        //         ),
        //         // child: Opacity(opacity: 0, child: tabBar.tabs.first),
        //       ),
        //     ),
        //   ),