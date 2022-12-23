import 'package:flutter/material.dart';
import 'package:fortune_client/view/hooks/use_router.dart';
import 'package:fortune_client/view/pages/common/basic_app_bar/basic_app_bar.dart';
import 'package:fortune_client/view/pages/rooms/room_list/components/room_card_widget.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/list_animation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RoomListPage extends HookConsumerWidget {
  const RoomListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(roomListViewModelProvider);
    final viewModel = ref.watch(roomListViewModelProvider.notifier);
    final router = useRouter();

    return state.when(
      data: (data) {
        return CustomScrollView(
          slivers: [
            const BasicAppBar(title: "見つける", border: 1),
            SliverToBoxAdapter(
                child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  searchTile(
                    theme: theme,
                    title: "人数",
                    value: "未設定",
                  ),
                  searchTile(
                    theme: theme,
                    title: "場所",
                    value: "未設定",
                  ),
                  searchTile(
                    theme: theme,
                    title: "タグ",
                    value: "未設定",
                  ),
                ],
              ),
            )),
            SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              sliver: ListAnimationWidget(
                items: data.rooms,
                spacing: 30,
                container: (state) {
                  return RoomCardWidget(
                    room: state,
                    onTap: () {
                      viewModel.pushRoomDetail(router);
                    },
                  );
                },
              ),
            ),
          ],
        );
      },
      error: (e, msg) => Scaffold(
        body: SafeArea(
          child: Center(
            child: Text(
              e.toString(),
            ),
          ),
        ),
      ),
      loading: () => const Scaffold(
        body: SafeArea(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }

  Widget searchTile({
    required AppTheme theme,
    required String title,
    required String value,
  }) {
    return Container(
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
    );
  }
}
