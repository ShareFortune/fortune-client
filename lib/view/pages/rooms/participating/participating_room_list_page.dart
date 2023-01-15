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

  final iconPath =
      "https://fortune-s3-bucket.s3.ap-northeast-1.amazonaws.com/userImage/20221027/709a82d0-b2c5-4332-b46e-65bd19585f1f.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAQB3D6IMBEFXWBFW7%2F20221205%2Fap-northeast-1%2Fs3%2Faws4_request&X-Amz-Date=20221205T123835Z&X-Amz-Expires=900&X-Amz-SignedHeaders=host&X-Amz-Signature=c58309a36793d4d9203a46d3e213a179b379d32eacf929596b680d816bd8f82a";

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
