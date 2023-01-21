import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/common/scroll_app_bar/scroll_app_bar.dart';
import 'package:fortune_client/view/pages/rooms/participating/components/participating_room_list_container.dart';
import 'package:fortune_client/view/pages/rooms/participating/components/participating_room_list_filter.dart';
import 'package:fortune_client/view/pages/rooms/participating/participating_room_list_view_model.dart';
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
        const ScrollAppBar(title: "参加する"),
        SliverToBoxAdapter(
          child: ParticipatingRoomListFilter(
            showAllRooms: viewModel.showAllRooms,
            showRequestingRooms: viewModel.showRequestingRooms,
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              const Gap(10),
              ParticipatingRoomListContainer.host(state.host),
              const Gap(10),
              ParticipatingRoomListContainer.guest(state.guest),
              const Gap(10),
            ],
          ),
        ),
      ],
    );
  }
}
