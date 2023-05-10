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

class RoomListPage extends StatefulHookConsumerWidget {
  const RoomListPage({Key? key}) : super(key: key);

  @override
  ConsumerState<RoomListPage> createState() => _RoomListPageState();
}

class _RoomListPageState extends ConsumerState<RoomListPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(roomListViewModelProvider);
    final viewModel = ref.watch(roomListViewModelProvider.notifier);

    return Container(
      color: theme.appColors.onBackground,
      child: NotificationListener<ScrollEndNotification>(
        onNotification: (notification) {
          if (notification.metrics.extentAfter == 0) {
            viewModel.fetchNextRooms();
          }
          return false;
        },
        child: NestedScrollView(
          headerSliverBuilder: (_, __) => [
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
          ],
          body: AsyncValueWidget(
            data: state.rooms,
            builder: (rooms) {
              if (rooms.isEmpty) return _RoomsEmptyPage();

              return ListView(
                padding: EdgeInsets.zero,
                addAutomaticKeepAlives: true,
                children: [
                  ...rooms.map((room) {
                    return RoomListCard(
                        room: room,
                        onTapRoom: () => navigator.navigateTo(
                              RoutePath.roomDetail,
                              arguments: RoomDetailPageArguments(
                                roomId: room.id,
                                roomName: room.roomName,
                              ),
                            ),
                        onTapHeart: (isFavorite) {
                          viewModel.saveOrReleaseRoom(room.id, isFavorite);
                        },
                        onTapJoinRequestBtn: () {
                          return viewModel.sendJoinRequest(room.id);
                        });
                  }).toList(),
                  if (state.isFetchingNextPage)
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(top: 20, bottom: 50),
                      child: const CircularProgressIndicator(strokeWidth: 3),
                    ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
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
        padding: const EdgeInsets.fromLTRB(20, 5, 12, 5),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: isAppliedFilter
                ? theme.appColors.primary.withOpacity(0.1)
                : theme.appColors.border2,
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
              style: theme.textTheme.h20.bold().paint(
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
                    : theme.appColors.subText2,
                BlendMode.srcIn,
              ),
            ),
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
        ),
        const Gap(20),
        Text(
          "該当するルームがありません",
          style: theme.textTheme.h20.bold().paint(theme.appColors.subText2),
        ),
      ],
    );
  }
}
