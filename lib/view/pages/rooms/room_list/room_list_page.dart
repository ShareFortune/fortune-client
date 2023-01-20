import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/common/scroll_app_bar/scroll_app_bar.dart';
import 'package:fortune_client/view/pages/rooms/room_list/components/room_card.dart';
import 'package:fortune_client/view/pages/rooms/room_list/components/rooms_filter_expanded_tile.dart';
import 'package:fortune_client/view/pages/rooms/room_list/components/rooms_filter_tile.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_state.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
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
      value: state.address?.text,
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
    String? value,
    required Function()? onTap,
  }) {
    /// 検索項目
    final searchItemTextColor = theme.appColors.subText1;
    final searchItemTextStyle = theme.textTheme.h40.paint(searchItemTextColor);

    /// 検索結果
    final onSearchResultTextColor = theme.appColors.primary;
    final offSearchResultTextColor = theme.appColors.subText3;
    final searchResultTextStyle = theme.textTheme.h40.paint(
      value != null ? onSearchResultTextColor : offSearchResultTextColor,
    );

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
            Text(title, style: searchItemTextStyle),
            Text(value ?? "未設定", style: searchResultTextStyle),
          ],
        ),
      ),
    );
  }

  // _filterTile({
  //   required AppTheme theme,
  //   required String title,
  //   String? value,
  //   required Function()? onTap,
  // }) {
  //   return BaseTransitionTile(
  //     title: title,
  //     value: value,
  //     ontap: ontap,
  //   );
  // }

  _showJoinRequestToast(BuildContext context, AppTheme theme, bool isSuccess) {
    isSuccess
        ? showToast(context, theme, "参加申請を送信しました。")
        : showErrorToast(context, theme, "参加申請の送信に失敗しました。");
  }
}
