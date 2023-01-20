import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/common/scroll_app_bar/scroll_app_bar.dart';
import 'package:fortune_client/view/pages/rooms/room_list/components/room_card.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_state.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/dialog/toast.dart';
import 'package:fortune_client/view/widgets/list_animation.dart';
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
    final membersNumSearchTile = searchTile(
      theme: theme,
      title: "人数",
      value: "未設定",
      onTap: null,
    );

    /// アドレス検索
    final addressesSearchTile = searchTile(
      theme: theme,
      title: "場所",
      value: "未設定",
      onTap: viewModel.navigateToEntryAddress,
    );

    /// タグ検索
    final tagsSearchTile = searchTile(
      theme: theme,
      title: "タグ",
      value: "未設定",
      onTap: viewModel.navigateToTagsSelection,
    );

    ///
    /// ルームリスト
    ///
    final roomsWidget = state.when(
      data: (data) => _roomListView(theme, context, data,
          viewModel.navigateToRoomDetail, viewModel.sendJoinRequest),
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

  Widget _roomListView(
    AppTheme theme,
    BuildContext context,
    List<RoomListStateItem> data,
    VoidCallback onTapCard,
    Function(String) sendJoinRequest,
  ) {
    return ListAnimationWidget(
      items: data,
      spacing: 10,
      container: (room) => RoomCard(
          room: room,
          onTapRoom: () => onTapCard,
          onTapJoinRequestBtn: (String id) async {
            _showJoinRequestToast(context, theme, await sendJoinRequest(id));
          }),
    );
  }

  Widget searchTile({
    required AppTheme theme,
    required String title,
    required String value,
    required Function()? onTap,
  }) {
    /// 検索項目
    final searchItemTextColor = theme.appColors.subText3;
    final searchItemTextStyle = theme.textTheme.h40.paint(searchItemTextColor);

    /// 検索結果
    final searchResultTextColor = theme.appColors.subText1;
    final searchResultTextStyle =
        theme.textTheme.h40.paint(searchResultTextColor);

    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1, color: Color(0xFFF3F3F3)),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: searchResultTextStyle),
            Text(value, style: searchItemTextStyle),
          ],
        ),
      ),
    );
  }

  _showJoinRequestToast(BuildContext context, AppTheme theme, bool isSuccess) {
    isSuccess
        ? showToast(context, theme, "参加申請を送信しました。")
        : showErrorToast(context, theme, "参加申請の送信に失敗しました。");
  }
}
