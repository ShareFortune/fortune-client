// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/common/scroll_app_bar/scroll_app_bar.dart';
import 'package:fortune_client/view/pages/rooms/room_list/components/room_list_card.dart';
import 'package:fortune_client/view/pages/rooms/room_list/components/rooms_filter_expanded_tile.dart';
import 'package:fortune_client/view/pages/rooms/room_list/components/rooms_filter_tile.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_view_model.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/dialog/toast.dart';
import 'package:fortune_client/view/widgets/other/list_animation.dart';
import 'package:fortune_client/view/widgets/other/error_widget.dart';
import 'package:fortune_client/view/widgets/other/loading_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RoomListPage extends HookConsumerWidget {
  const RoomListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(roomListViewModelProvider);
    final viewModel = ref.watch(roomListViewModelProvider.notifier);

    /// 人数検索
    final membersNumSearchTile = RoomsFilterExpandedTile(
      title: "人数",
      value: state.memberNum != null ? "${state.memberNum}人" : null,
      items: List.generate(7, (index) => "${index + 4}").toList(),
      onSelect: (value) {
        viewModel.changeMemberNum(int.parse(value));
      },
    );

    /// アドレス検索
    final addressesSearchTile = RoomsFilterTile(
      title: "場所",
      value: state.addressWithId?.data.text,
      onTap: viewModel.navigateToEntryAddress,
    );

    /// タグ検索
    final tagsSearchTile = RoomsFilterTile(
      title: "タグ",
      value: state.tags?.map((e) => e.name).toList().join("、"),
      onTap: viewModel.navigateToTagsSelection,
    );

    ///
    /// ルームリスト
    ///
    final roomsWidget = state.rooms.when(
      data: (data) {
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
      },
      error: (e, msg) => SliverToBoxAdapter(child: errorWidget(e, msg)),
      loading: () => SliverToBoxAdapter(child: loadingWidget()),
    );

    return Container(
      color: theme.appColors.onBackground,
      child: CustomScrollView(
        slivers: [
          const ScrollAppBar(title: "見つける", isBorder: false),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  membersNumSearchTile,
                  addressesSearchTile,
                  tagsSearchTile,
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            sliver: roomsWidget,
          ),
        ],
      ),
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
