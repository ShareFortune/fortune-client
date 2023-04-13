import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/core/base/fortune_user/fortune_user.dart';
import 'package:fortune_client/view/pages/rooms/room_detail/room_detail_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:fortune_client/view/widgets/icon/user_icon_widget.dart';
import 'package:fortune_client/view/widgets/other/async_value_widget.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RoomDetailPage extends HookConsumerWidget {
  const RoomDetailPage(@PathParam("roomId") this.roomId, {super.key});

  final String roomId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(roomDetailViewModelProvider(roomId));
    final viewModel = ref.watch(roomDetailViewModelProvider(roomId).notifier);

    return Scaffold(
      appBar: const BackAppBar(centerTitle: false, title: "タイトル"),
      body: AsyncValueWidget(
        data: state.detail,
        builder: (room) {
          return Column(
            children: [
              _RoomDetailPageItem(
                title: "メンバー",
                mainAxisExtent: 10,
                childPadding: EdgeInsets.zero,
                child: _MemberListView([room.hostUser, ...?room.participants]),
              ),
              const Gap(10),
              _RoomDetailPageItem(
                title: "集合場所",
                mainAxisExtent: 10,
                child: Text("テキスト", style: theme.textTheme.h20),
              ),
              _RoomDetailPageItem(
                title: "集合人数",
                mainAxisExtent: 10,
                child: Text("テキスト", style: theme.textTheme.h20),
              ),
              _RoomDetailPageItem(
                title: "タグ",
                mainAxisExtent: 10,
                child: Text("テキスト", style: theme.textTheme.h20),
              ),
              _RoomDetailPageItem(
                title: "説明",
                mainAxisExtent: 10,
                child: Text("テキスト", style: theme.textTheme.h20),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _RoomDetailPageItem extends HookConsumerWidget {
  const _RoomDetailPageItem({
    required this.title,
    required this.child,
    this.mainAxisExtent = 10,
    this.titlePadding,
    this.childPadding,
  });

  final String title;
  final Widget child;
  final double mainAxisExtent;
  final EdgeInsetsGeometry? titlePadding;
  final EdgeInsetsGeometry? childPadding;
  final horizontalPadding = const EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Container(
      width: double.infinity,
      color: theme.appColors.onBackground,
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: titlePadding ?? horizontalPadding,
            child: Text(title, style: theme.textTheme.h20.bold()),
          ),
          Gap(mainAxisExtent),
          Container(
            padding: childPadding ?? horizontalPadding,
            child: child,
          ),
        ],
      ),
    );
  }
}

class _MemberListView extends HookConsumerWidget {
  const _MemberListView(this.users);

  final List<FortuneUser> users;

  final double iconRadius = 25.0;
  final double margin = 5.0;
  final double nameHeight = 15.0;

  double get height => iconRadius * 2 + margin + nameHeight;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return SizedBox(
      height: height,
      child: ListView.separated(
        itemCount: users.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        separatorBuilder: (BuildContext context, int index) => const Gap(10),
        itemBuilder: (BuildContext context, int index) {
          final user = users.elementAt(index);

          return Column(children: [
            UserIconWidget(user.mainImageURL, radius: iconRadius),
            Gap(margin),
            SizedBox(
              height: nameHeight,
              child: Text(user.name, style: theme.textTheme.h10),
            ),
          ]);
        },
      ),
    );
  }
}
