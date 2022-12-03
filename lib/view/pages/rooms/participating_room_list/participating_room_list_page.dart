import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:fortune_client/view/pages/rooms/participating_room_list/guest_room_card_widget.dart';
import 'package:fortune_client/view/pages/rooms/participating_room_list/host_room_card_widget.dart';
import 'package:fortune_client/view/pages/rooms/participating_room_list/participating_room_list_state.dart';
import 'package:fortune_client/view/pages/rooms/participating_room_list/participating_room_list_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';

class ParticipatingRoomListPage extends ConsumerWidget {
  const ParticipatingRoomListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(participatingRoomListViewModelProvider);
    final viewModel =
        ref.watch(participatingRoomListViewModelProvider.notifier);

    return state.when(
      data: (data) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: DefaultTabController(
            length: 2,
            child: NestedScrollView(
              floatHeaderSlivers: true,
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    backgroundColor: Colors.transparent,
                    title: Text(
                      "参加",
                      style: theme.textTheme.h40
                          .merge(TextStyle(color: theme.appColors.headline1))
                          .bold(),
                    ),
                    toolbarHeight: kToolbarHeight + 20,
                    bottom: TabBar(
                      padding: const EdgeInsets.only(top: 20),
                      indicatorWeight: 3,
                      indicatorPadding:
                          const EdgeInsets.symmetric(horizontal: 15),
                      indicatorColor: theme.appColors.tabIndicator,
                      labelStyle: theme.textTheme.h30.bold(),
                      labelColor: theme.appColors.tabIndicator,
                      tabs: const <Widget>[
                        Tab(child: Text("ホスト")),
                        Tab(child: Text("ゲスト")),
                      ],
                    ),
                  ),
                ];
              },

              /// 参加している又は参加予定のルームリスト
              /// [MediaQuery.removePadding]余分な下部マージンを削除
              body: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: TabBarView(
                  children: <Widget>[
                    /// ホストで開催予定のルームリスト
                    _host(
                      hostRooms: data.hostRooms,
                      onPressedRequestConfirmationButton: (context, id) {
                        viewModel.pushRequestConfirmation(context, id);
                      },
                    ),

                    /// ゲストで参加予定のルームリスト
                    _guest(data.guestRooms),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      error: (e, msg) => Scaffold(
        body: SafeArea(
          child: Center(
            child: Text(
              e.toString(),
            ),
          ),
        ),
      ),
      loading: () => const Scaffold(
        body: SafeArea(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }

  _host({
    required List<HostRoomListItemState> hostRooms,
    required Function(BuildContext context, int id)
        onPressedRequestConfirmationButton,
  }) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 30),
      itemCount: hostRooms.length,
      itemBuilder: (context, index) {
        return AnimationLimiter(
          child: AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 175),
            child: SlideAnimation(
              verticalOffset: 50.0,
              child: FadeInAnimation(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: HostRoomCardWidget(
                    room: hostRooms[index],
                    onPressedRequestConfirmationButton: () =>
                        onPressedRequestConfirmationButton(
                            context, hostRooms[index].id),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  _guest(List<GuestRoomListItemState> guestRooms) {
    final room = GuestRoomListItemState();
    List<GuestRoomListItemState> rooms = [
      room,
      room.copyWith(state: true),
      room,
      room,
      room.copyWith(state: true),
    ];
    // rooms = [GuestRoomListItemState];
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 30),
      // itemCount: guestRooms.length,
      itemCount: rooms.length,

      itemBuilder: (context, index) {
        return AnimationLimiter(
          child: AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 175),
            child: SlideAnimation(
              verticalOffset: 50.0,
              child: FadeInAnimation(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: GuestRoomCardWidget(rooms[index]),
                  // child: GuestRoomCardWidget(guestRooms[index]),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
