import 'package:flutter/material.dart';
import 'package:fortune_client/view/hooks/use_router.dart';
import 'package:fortune_client/view/pages/common/basic_app_bar/basic_app_bar.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_card_widget.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_view_model.dart';
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
            SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              sliver: ListAnimationWidget(
                items: data.rooms,
                container: ((state) {
                  return RoomCardWidget(
                    room: state,
                    onTap: () {
                      viewModel.pushRoomDetail(router);
                    },
                  );
                }),
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
}
