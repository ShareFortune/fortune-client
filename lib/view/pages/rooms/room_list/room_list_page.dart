import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/common/scroll_app_bar/scroll_app_bar.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_state.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_view_model.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/list_animation.dart';
import 'package:fortune_client/view/widgets/other/error_widget.dart';
import 'package:fortune_client/view/widgets/other/loading_widget.dart';
import 'package:fortune_client/view/widgets/room_card_widget.dart';
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
    final roomsWidget = state.when(
      data: (data) => _roomListView(data, viewModel.navigateToRoomDetail),
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
                    searchTile(
                      theme: theme,
                      title: "人数",
                      value: "未設定",
                      onTap: null,
                    ),
                    searchTile(
                      theme: theme,
                      title: "場所",
                      value: "未設定",
                      onTap: null,
                    ),
                    searchTile(
                      theme: theme,
                      title: "タグ",
                      value: "未設定",
                      onTap: () => viewModel.navigateToTagsSelection(),
                    ),
                  ],
                )),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            sliver: roomsWidget,
          ),
        ],
      ),
    );
  }

  Widget _roomListView(RoomListState data, Function() cardOnTap) {
    return ListAnimationWidget(
      items: data.rooms,
      spacing: 30,
      container: (state) => RoomCardWidget(
        hostIconPath: state.hostIcon,
        title: state.title,
        location: "日本・北海道・岩見沢市",
        members: state.memberIcons,
        onTap: cardOnTap,
      ),
    );
  }

  Widget searchTile({
    required AppTheme theme,
    required String title,
    required String value,
    required Function()? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 10,
        ),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1, color: Color(0xFFF3F3F3)),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: theme.textTheme.h50),
            Text(
              value,
              style: theme.textTheme.h50.merge(
                const TextStyle(color: Color(0xFFC9C9CB)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
