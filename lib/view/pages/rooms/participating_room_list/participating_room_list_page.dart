import 'package:flutter/material.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/view/hooks/use_media_query.dart';
import 'package:fortune_client/view/pages/common/basic_app_bar/basic_app_bar.dart';
import 'package:fortune_client/view/widgets/room_card_widget.dart';
import 'package:fortune_client/view/pages/rooms/participating_room_list/participating_room_list_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ParticipatingRoomListPage extends HookConsumerWidget {
  const ParticipatingRoomListPage({super.key});

  final iconPath =
      "https://fortune-s3-bucket.s3.ap-northeast-1.amazonaws.com/userImage/20221027/709a82d0-b2c5-4332-b46e-65bd19585f1f.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAQB3D6IMBEFXWBFW7%2F20221205%2Fap-northeast-1%2Fs3%2Faws4_request&X-Amz-Date=20221205T123835Z&X-Amz-Expires=900&X-Amz-SignedHeaders=host&X-Amz-Signature=c58309a36793d4d9203a46d3e213a179b379d32eacf929596b680d816bd8f82a";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(participatingRoomListViewModelProvider);
    final viewModel =
        ref.watch(participatingRoomListViewModelProvider.notifier);

    return CustomScrollView(
      slivers: [
        const BasicAppBar(title: "参加する", isBorder: false),
        SliverToBoxAdapter(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.event, size: 26),
                const Gap(10),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1, color: Color(0xFFF3F3F3)),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "ルームを作成する",
                          style: theme.textTheme.h50,
                        ),
                        const Icon(
                          size: 16,
                          Icons.arrow_forward_ios,
                          color: Color(0xFFD9D9D9),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: state.maybeWhen(
            orElse: () {
              return const Center(child: CircularProgressIndicator());
            },
            data: (data) {
              return Column(
                children: [
                  const Gap(20),
                  _pageView(theme, "ホストで参加"),
                  _pageView(theme, "ゲストで参加"),
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _pageView(AppTheme theme, String title) {
    return Column(
      children: [
        const Gap(10),
        _pageTitle(theme, title),
        const Gap(10),
        SizedBox(
          height: 310.0,
          child: PageView(
            controller: PageController(viewportFraction: 0.9),
            children: [
              _page(
                theme,
                RoomCardWidget(
                  hostIconPath: Assets.images.thinder.path,
                  title: "渋谷で飲み会しませんか？",
                  location: "日本・北海道・岩見沢市",
                  members: const ["", ""],
                  bottomExist: true,
                  messageRoomExist: true,
                  requestExist: null,
                  onTap: () {},
                ),
              ),
              _page(
                theme,
                RoomCardWidget(
                  hostIconPath: Assets.images.thinder.path,
                  title: "渋谷で飲み会しませんか？",
                  location: "日本・北海道・岩見沢市",
                  members: const ["", ""],
                  bottomExist: true,
                  messageRoomExist: true,
                  requestExist: true,
                  onTap: () {},
                ),
              ),
              _page(
                theme,
                RoomCardWidget(
                  hostIconPath: Assets.images.thinder.path,
                  title: "渋谷で飲み会しませんか？",
                  location: "日本・北海道・岩見沢市",
                  members: const ["", ""],
                  bottomExist: true,
                  messageRoomExist: false,
                  requestExist: true,
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
        const Divider(),
      ],
    );
  }

  Widget _page(AppTheme theme, Widget child) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "募集中",
            style: theme.textTheme.h30
                .merge(TextStyle(color: theme.appColors.secondary))
                .bold(),
          ),
        ),
        const Gap(5),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: child,
        ),
      ],
    );
  }

  Widget _pageTitle(AppTheme theme, String title) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: theme.textTheme.h60.bold()),
          Text(
            "全て表示",
            style: theme.textTheme.h40.merge(
              TextStyle(color: theme.appColors.primary),
            ),
          ),
        ],
      ),
    );
  }
}
