import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:fortune_client/view/pages/common/basic_app_bar/basic_app_bar.dart';
import 'package:fortune_client/view/pages/rooms/participating_room_list/components/guest_room_card_widget.dart';
import 'package:fortune_client/view/pages/rooms/participating_room_list/components/host_room_card_widget.dart';
import 'package:fortune_client/view/pages/rooms/participating_room_list/components/room_card_widget.dart';
import 'package:fortune_client/view/pages/rooms/participating_room_list/participating_room_list_state.dart';
import 'package:fortune_client/view/pages/rooms/participating_room_list/participating_room_list_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ParticipatingRoomListPage extends HookConsumerWidget {
  const ParticipatingRoomListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(participatingRoomListViewModelProvider);
    final viewModel =
        ref.watch(participatingRoomListViewModelProvider.notifier);

    return CustomScrollView(
      slivers: [
        const BasicAppBar(title: "参加する"),
        // SliverToBoxAdapter(
        //   child: Container(
        //     padding: const EdgeInsets.symmetric(horizontal: 20),
        //     child: Text("Text"),
        //   ),
        // ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              _title(theme),
              Gap(10),
              SizedBox(
                height: 390.0,
                child: PageView(
                  controller: PageController(viewportFraction: 0.9),
                  children: [
                    _card(theme),
                    _card(theme),
                    _card(theme),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _title(AppTheme theme) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("ゲストで参加", style: theme.textTheme.h70.bold()),
          Text(
            "全て表示",
            style: theme.textTheme.h40.merge(
              TextStyle(color: theme.appColors.primary),
            ),
          ),
        ],
      ),
    );
  }

  Widget _card(AppTheme theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "募集中",
            style: theme.textTheme.h30
                .merge(TextStyle(color: theme.appColors.secondary))
                .bold(),
          ),
        ),
        const Gap(5),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: const RoomCardWidget(),
        ),
      ],
    );
  }
}
