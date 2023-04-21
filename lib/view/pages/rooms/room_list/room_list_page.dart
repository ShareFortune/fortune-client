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
                children: [
                  _RoomsFilterButton(
                    title: "場所",
                    isAppliedFilter: true,
                    onTap: () {},
                  ),
                  const Gap(15),
                  _RoomsFilterButton(
                    title: "人数",
                    onTap: () {},
                  ),
                  const Gap(15),
                  _RoomsFilterButton(
                    title: "タグ",
                    onTap: () {},
                  ),
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

/// フィルターボタン
class _RoomsFilterButton extends HookConsumerWidget {
  const _RoomsFilterButton({
    required this.title,
    required this.onTap,
    this.isAppliedFilter = false,
  });

  final String title;
  final VoidCallback? onTap;

  /// フィルターが適用されているか
  final bool isAppliedFilter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 6, 12, 6),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: isAppliedFilter
                ? theme.appColors.primary.withOpacity(0.1)
                : theme.appColors.border1,
          ),
          borderRadius: BorderRadius.circular(30),
          color: isAppliedFilter
              ? theme.appColors.primary.withOpacity(0.1)
              : theme.appColors.onBackground,
        ),
        child: Row(
          children: [
            Text(
              title,
              style: theme.textTheme.h30.paint(
                isAppliedFilter
                    ? theme.appColors.primary
                    : theme.appColors.subText2,
              ),
            ),
            const Gap(6),
            SvgPicture.asset(
              Assets.images.icons.iconArrowDropDown.path,
              width: 20,
              fit: BoxFit.contain,
              colorFilter: ColorFilter.mode(
                isAppliedFilter
                    ? theme.appColors.primary
                    : theme.appColors.iconBtn2,
                BlendMode.srcIn,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
