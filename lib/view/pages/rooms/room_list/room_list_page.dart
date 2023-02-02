// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/view/pages/common/scroll_app_bar/scroll_app_bar.dart';
import 'package:fortune_client/view/pages/rooms/room_list/components/room_list_card.dart';
import 'package:fortune_client/view/pages/rooms/room_list/components/rooms_filter_bottom_sheet.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_state.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/dialog/toast.dart';
import 'package:fortune_client/view/widgets/other/list_animation.dart';
import 'package:fortune_client/view/widgets/other/error_widget.dart';
import 'package:fortune_client/view/widgets/other/loading_widget.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RoomListPage extends HookConsumerWidget {
  const RoomListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(roomListViewModelProvider);
    final viewModel = ref.watch(roomListViewModelProvider.notifier);

    ///
    /// ルームリスト
    ///
    final roomListViewAsync = state.rooms.when(
      data: (data) => roomListView(context, theme, data, viewModel),
      error: (e, msg) => SliverToBoxAdapter(child: errorWidget(e, msg)),
      loading: () => SliverToBoxAdapter(child: loadingWidget()),
    );

    return Container(
      color: theme.appColors.onBackground,
      child: CustomScrollView(
        slivers: [
          ScrollAppBar(
            title: "見つける",
            onTapTitle: () async {
              viewModel.changeFilter(
                await RoomsFilterBottomSheet.show(
                  context,
                  filter: state.filter,
                  onSelectAddress: viewModel.navigateToEntryAddress,
                  onSelectTags: viewModel.navigateToTagsSelection,
                ),
              );
            },
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    Assets.images.icons.iconRoom.path,
                    fit: BoxFit.contain,
                  ),
                  const Gap(15),
                  Text(
                    "条件に一致するルームが存在しません。",
                    style: theme.textTheme.h20.paint(theme.appColors.subText1),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            sliver: roomListViewAsync,
          ),
        ],
      ),
    );
  }

  ListAnimationWidget<RoomListStateRoom> roomListView(
    BuildContext context,
    AppTheme theme,
    List<RoomListStateRoom> data,
    RoomListViewModel viewModel,
  ) {
    return ListAnimationWidget(
      items: data,
      spacing: 10,
      container: (room) {
        return RoomListCard(
          theme: theme,
          room: room,
          onTapRoom: () => viewModel.navigateToRoomDetail(room.data.id),
          onTapHeart: (bool value) async {
            if (!await viewModel.saveOrReleaseRoom(room.data.id, value)) {
              await _showFailedToRegisterToast(context, theme);
            }
          },
          onTapJoinRequestBtn: () async {
            final result = await viewModel.sendJoinRequest(room.data.id);
            await _showJoinRequestToast(context, theme, result);
          },
        );
      },
    );
  }

  _showFailedToRegisterToast(BuildContext context, AppTheme theme) {
    showErrorToast(context, theme, "ルームを保存できませんでした。");
  }

  _showJoinRequestToast(BuildContext context, AppTheme theme, bool isSuccess) {
    isSuccess
        ? showToast(context, theme, "参加申請を送信しました。")
        : showErrorToast(context, theme, "参加申請の送信に失敗しました。");
  }
}
