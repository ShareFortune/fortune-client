import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/rooms/input/room_input_page.dart';
import 'package:fortune_client/view/pages/rooms/participating/participating_view_model.dart';
import 'package:fortune_client/view/pages/rooms/room_detail/room_detail_page.dart';
import 'package:fortune_client/view/routes/route_navigator.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/animation/animated_sticky_tab_bar.dart';
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

    return Stack(
      children: [
        DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return <Widget>[
                ScrollAppBar(
                  title: LocaleKeys.participating_room_list_page_title.tr(),
                ),
                AnimatedStickyTabBar(
                  controller: _tabController,
                  tabs: ['ホスト', 'ゲスト'].map((e) => Tab(text: e)).toList(),
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
                    room: HostRoomState(theme, room),
                    onTap: () async {
                      await navigator.navigateTo(
                        RoutePath.roomDetail,
                        arguments: RoomDetailPageArguments(
                          type: RoomType.host,
                          roomId: room.id,
                          roomName: room.roomName,
                        ),
                      );
                    },
                  ),
                ),

                /// ゲスト
                _Item(
                  data: state.guest,
                  builder: (room) => ParticipatingRoom(
                    room: GuestRoomState(theme, room),
                    onTap: () async {
                      await navigator.navigateTo(
                        RoutePath.roomDetail,
                        arguments: RoomDetailPageArguments(
                          type: RoomType.guest,
                          roomId: room.id,
                          roomName: room.roomName,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: const Alignment(0.9, 0.9),
          child: MaterialButton(
            height: 45,
            onPressed: () {
              navigator.navigateTo(
                RoutePath.roomInput,
                arguments: const RoomInputPageArguments(),
              );
            },
            padding: const EdgeInsets.symmetric(horizontal: 20),
            color: theme.appColors.primary,
            textColor: theme.appColors.onPrimary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("作成", style: theme.textTheme.h30.bold()),
                const Gap(10),
                const Icon(Icons.edit, size: 20),
              ],
            ),
          ),
        ),
      ],
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
          separatorBuilder: (_, __) => const Gap(8),
          itemBuilder: (context, index) {
            return builder(rooms.elementAt(index));
          },
        );
      },
    );
  }
}
