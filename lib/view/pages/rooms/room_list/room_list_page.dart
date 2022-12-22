import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:fortune_client/view/hooks/use_router.dart';
import 'package:fortune_client/view/pages/common/basic_app_bar/basic_app_bar.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_card_widget.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_view_model.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
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
            const BasicAppBar(
              title: "見つける",
              border: 1,
            ),
            // SliverAppBar(
            //   backgroundColor: Colors.transparent,
            //   title: GestureDetector(
            //     onDoubleTap: () {
            //       router.push(const DebugRoute());
            //     },
            //     child: Text(
            //       "ルーム",
            //       style: theme.textTheme.h40
            //           .merge(TextStyle(color: theme.appColors.headline1))
            //           .bold(),
            //     ),
            //   ),
            //   actions: [
            //     CircleAvatar(
            //       radius: 25,
            //       backgroundColor: theme.appColors.iconBtnBg,
            //       child: IconButton(
            //         color: theme.appColors.iconBtn,
            //         icon: const Icon(
            //           Icons.search,
            //         ),
            //         onPressed: () {},
            //       ),
            //     ),
            //   ],
            // ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: data.rooms.length,
                  (context, index) {
                    return AnimationLimiter(
                      child: AnimationConfiguration.staggeredList(
                        position: index,
                        duration: const Duration(milliseconds: 175),
                        child: SlideAnimation(
                          verticalOffset: 50.0,
                          child: FadeInAnimation(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: RoomCardWidget(
                                room: data.rooms[index],
                                onTap: () {
                                  viewModel.pushRoomDetail(router);
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
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
