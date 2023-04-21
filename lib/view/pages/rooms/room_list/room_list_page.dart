import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/common/scroll_app_bar/scroll_app_bar.dart';
import 'package:fortune_client/view/pages/rooms/room_list/components/room_list_card.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/other/async_value_widget.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RoomListPage extends HookConsumerWidget {
  const RoomListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(roomListViewModelProvider);
    final viewModel = ref.watch(roomListViewModelProvider.notifier);

    return Container(
      color: theme.appColors.onBackground,
      child: CustomScrollView(
        slivers: [
          ScrollAppBar(title: LocaleKeys.room_list_page_title.tr()),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
              child: Row(
                children: const [
                  _RoomsFilter(title: "場所"),
                  Gap(10),
                  _RoomsFilter(title: "人数"),
                  Gap(10),
                  _RoomsFilter(title: "タグ"),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: AsyncValueWidget(
              data: state.rooms,
              builder: (rooms) {
                return Column(
                  children: rooms.map((room) {
                    return RoomListCard(
                      theme: theme,
                      room: room,
                      onTapRoom: () =>
                          viewModel.navigateToRoomDetail(room.data.id),
                      onTapHeart: (value) async {},
                      onTapJoinRequestBtn: () async {},
                    );
                  }).toList(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

/// フィルター部分
class _RoomsFilter extends HookConsumerWidget {
  const _RoomsFilter({
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Container(
      padding: const EdgeInsets.fromLTRB(20, 6, 12, 6),
      decoration: BoxDecoration(
        color: theme.appColors.onBackground,
        border: Border.all(width: 1, color: theme.appColors.border1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Text(
            title,
            style: theme.textTheme.h30.paint(theme.appColors.subText2),
          ),
          const Gap(6),
          SvgPicture.asset(
            Assets.images.icons.iconArrowDropDown.path,
            width: 20,
            fit: BoxFit.contain,
            color: theme.appColors.iconBtn2,
          ),
        ],
      ),
    );
  }
}
