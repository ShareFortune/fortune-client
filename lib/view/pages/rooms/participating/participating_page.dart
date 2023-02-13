import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/common/scroll_app_bar/scroll_app_bar.dart';
import 'package:fortune_client/view/pages/rooms/participating/components/participating_container.dart';
import 'package:fortune_client/view/pages/rooms/participating/components/participating_filter.dart';
import 'package:fortune_client/view/pages/rooms/participating/participating_view_model.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ParticipatingPage extends HookConsumerWidget {
  const ParticipatingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(participatingViewModelProvider);
    final viewModel = ref.watch(participatingViewModelProvider.notifier);

    return CustomScrollView(
      slivers: [
        ScrollAppBar(title: LocaleKeys.participating_room_list_page_title.tr()),
        SliverToBoxAdapter(
          child: ParticipatingRoomListFilter(
            theme: theme,
            showAllRooms: viewModel.showAllRooms,
            showRequestingRooms: viewModel.showRequestingRooms,
            onTapAddIcon: viewModel.navigateToRoomCreation,
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              const Gap(10),
              ParticipatingContainer.host(state.host),
              const Gap(10),
              ParticipatingContainer.guest(state.guest),
            ],
          ),
        ),
      ],
    );
  }
}