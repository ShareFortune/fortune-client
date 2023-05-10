import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fortune_client/gen/assets.gen.dart';
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
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(participatingViewModelProvider);
    final viewModel = ref.watch(participatingViewModelProvider.notifier);

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
            body: NotificationListener<ScrollEndNotification>(
              onNotification: (notification) {
                if (notification.metrics.extentAfter == 0) {
                  _tabController?.index == 0
                      ? viewModel.fetchNextHostRooms()
                      : viewModel.fetchNextGuestRooms();
                }
                return false;
              },
              child: AsyncValueWidget(
                data: state,
                builder: (state) => TabBarView(
                  controller: _tabController,
                  children: [
                    _Item(
                      rooms: state.host,
                      roomState: (room) => HostRoomState(theme, room),
                      isFetching: state.isFetchingNextHostPage,
                    ),
                    _Item(
                      rooms: state.guest,
                      roomState: (room) => GuestRoomState(theme, room),
                      isFetching: state.isFetchingNextGuestPage,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        _RoomCreateButton(theme: theme),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class _Item<RoomType> extends HookConsumerWidget {
  /// [rooms] には [HostRoom] か [GuestRoom] が入る
  final List<RoomType> rooms;
  final RoomState Function(RoomType) roomState;

  /// 次のページを取得中かどうか
  final bool isFetching;

  const _Item({
    required this.rooms,
    required this.roomState,
    this.isFetching = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (rooms.isEmpty) return _RoomsEmptyPage();

    return ListView(
      padding: EdgeInsets.zero,
      addAutomaticKeepAlives: true,
      children: [
        ...rooms.map((room) {
          final roomStateItem = roomState(room);
          return ParticipatingRoom(
            room: roomStateItem,
            onTap: () => navigator.navigateTo(
              RoutePath.roomDetail,
              arguments: RoomDetailPageArguments(
                type: roomStateItem.type,
                roomId: roomStateItem.id,
                roomName: roomStateItem.title,
              ),
            ),
          );
        }).toList(),
        if (isFetching)
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 20, bottom: 50),
            child: const CircularProgressIndicator(strokeWidth: 3),
          ),
      ],
    );
  }
}

class _RoomCreateButton extends StatelessWidget {
  const _RoomCreateButton({
    required this.theme,
  });

  final AppTheme theme;

  @override
  Widget build(BuildContext context) {
    return Align(
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
    );
  }
}

class _RoomsEmptyPage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          Assets.icons.iconRoom.path,
          width: 100,
          fit: BoxFit.contain,
          colorFilter: ColorFilter.mode(
            theme.appColors.iconBtn2,
            BlendMode.srcIn,
          ),
        ),
        const Gap(30),
        Text(
          "参加中のルームが存在しません。",
          style: theme.textTheme.h30.paint(theme.appColors.subText3),
        ),
      ],
    );
  }
}
