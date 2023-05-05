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

    return Stack(
      children: [
        DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              ScrollAppBar(
                title: LocaleKeys.participating_room_list_page_title.tr(),
              ),
              AnimatedStickyTabBar(
                controller: _tabController,
                tabs: ['ホスト', 'ゲスト'].map((e) => Tab(text: e)).toList(),
              ),
            ],
            body: AsyncValueWidget(
              data: state,
              builder: (state) => TabBarView(
                controller: _tabController,
                children: [
                  _Item(
                    rooms: state.host,
                    roomState: (room) => HostRoomState(theme, room),
                  ),
                  _Item(
                    rooms: state.guest,
                    roomState: (room) => GuestRoomState(theme, room),
                  ),
                ],
              ),
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
  final List<RoomType> rooms;
  final RoomState Function(RoomType) roomState;

  const _Item({
    required this.rooms,
    required this.roomState,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemCount: rooms.length,
      separatorBuilder: (_, __) => const Gap(8),
      itemBuilder: (context, index) {
        final room = roomState(rooms.elementAt(index));
        return ParticipatingRoom(
          room: room,
          onTap: () async {
            await navigator.navigateTo(
              RoutePath.roomDetail,
              arguments: RoomDetailPageArguments(
                type: room.type,
                roomId: room.id,
                roomName: room.title,
              ),
            );
          },
        );
      },
    );
  }
}
