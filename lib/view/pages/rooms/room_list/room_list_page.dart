import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/rooms/room_detail/room_detail_page.dart';
import 'package:fortune_client/view/widgets/app_bar/scroll_app_bar.dart';
import 'package:fortune_client/view/pages/rooms/room_list/components/room_list_card.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_view_model.dart';
import 'package:fortune_client/view/routes/route_navigator.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/other/async_value_widget.dart';
import 'package:fortune_client/view/widgets/picker/address_picker.dart';
import 'package:fortune_client/view/widgets/picker/number_picker.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:screen_loader/screen_loader.dart';

class RoomListPage extends HookConsumerWidget with ScreenLoader {
  RoomListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(roomListViewModelProvider);
    final viewModel = ref.watch(roomListViewModelProvider.notifier);

    return loadableWidget(
      child: Container(
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
                      isAppliedFilter: state.filter.isFilteredByAddress,
                      onTap: () async {
                        viewModel.filteringByAddress(
                          await AddressPicker().show(
                            context: context,
                            theme: theme,
                            address: state.filter.address,
                          ),
                        );
                      },
                    ),
                    const Gap(15),
                    _RoomsFilterButton(
                      title: "人数",
                      onTap: () async {
                        await NumberPicker.participants().show(
                          context: context,
                          onChanged: viewModel.filteringByMemberNum,
                        );
                      },
                      isAppliedFilter: state.filter.isFilteredByMemberNum,
                    ),
                    const Gap(15),
                    _RoomsFilterButton(
                      title: "タグ",
                      onTap: viewModel.filteringByTags,
                      isAppliedFilter: state.filter.isFilteredByTag,
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
                        onTapRoom: () async {
                          await navigator.navigateTo(
                            RoutePath.roomDetail,
                            arguments: RoomDetailPageArguments(
                              roomId: room.data.id,
                              roomName: room.data.roomName,
                            ),
                          );
                        },
                        onTapHeart: (value) async {},
                        onTapJoinRequestBtn: () async {
                          await performFuture(() async {
                            await Future.delayed(const Duration(seconds: 5));
                          });
                        },
                      );
                    }).toList(),
                  );
                },
              ),
            ),
          ],
        ),
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
              Assets.icons.iconArrowDropDown.path,
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
