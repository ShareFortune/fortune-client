import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/users/fortune_user/fortune_user.dart';
import 'package:fortune_client/view/pages/rooms/room_detail/room_detail_view_model.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:fortune_client/view/widgets/icon/user_icon_widget.dart';
import 'package:fortune_client/view/widgets/other/async_value_widget.dart';
import 'package:fortune_client/view/widgets/tag/tags_wraper.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RoomDetailPageArguments {
  final String roomId;

  const RoomDetailPageArguments(this.roomId);
}

class RoomDetailPage extends HookConsumerWidget {
  const RoomDetailPage(this.arguments, {super.key});

  final RoomDetailPageArguments arguments;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(roomDetailViewModelProvider(arguments.roomId));
    final viewModel =
        ref.watch(roomDetailViewModelProvider(arguments.roomId).notifier);

    return Scaffold(
      appBar: const BackAppBar(centerTitle: false, title: "タイトル"),
      body: AsyncValueWidget(
        data: state,
        builder: (room) {
          return Stack(children: [
            /// ルーム詳細
            Column(children: [
              _Item(
                title: "メンバー",
                middleMargin: 15,
                childPadding: EdgeInsets.zero,
                titlePadding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: _MemberListView(
                  [room.detail.hostUser, ...?room.detail.participants],
                  (user) => viewModel.navigateToProfile(user.id),
                ),
              ),
              const Gap(10),
              Container(
                width: double.infinity,
                color: theme.appColors.onBackground,
                padding: const EdgeInsets.symmetric(
                  vertical: 30,
                  horizontal: 20,
                ),
                child: Text(
                  room.detail.roomName,
                  style: theme.textTheme.h40.bold(),
                ),
              ),
              _Item(
                title: "集合場所",
                child: Text(
                  room.detail.address.text,
                  style: theme.textTheme.h20,
                ),
              ),
              _Item(
                title: "募集人数",
                child: Text("${room.detail.membersNum}人",
                    style: theme.textTheme.h20),
              ),
              _Item(
                title: "タグ",
                middleMargin: 10,
                child: TagsWraper(room.detail.tags ?? []),
              ),
              _Item(
                title: "説明",
                child: Text(
                  "テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト",
                  style: theme.textTheme.h20,
                ),
              ),
              Expanded(child: Container(color: Colors.white)),
            ]),

            /// 参加ボタン
            Positioned(
              left: 30,
              right: 30,
              bottom: 80,
              child: MaterialButton(
                height: 45,
                onPressed: () => viewModel.joinRoomRequest(arguments.roomId),
                color: theme.appColors.primary,
                textColor: theme.appColors.onPrimary,
                child: Text("ルームに参加する", style: theme.textTheme.h30.bold()),
              ),
            )
          ]);
        },
      ),
    );
  }
}

class _Item extends HookConsumerWidget {
  const _Item({
    required this.title,
    required this.child,
    this.middleMargin = 5,
    this.titlePadding,
    this.childPadding,
  });

  final String title;
  final Widget child;
  final double middleMargin;
  final EdgeInsetsGeometry? titlePadding;
  final EdgeInsetsGeometry? childPadding;
  final horizontalPadding = const EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Container(
      width: double.infinity,
      color: theme.appColors.onBackground,
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: titlePadding ?? horizontalPadding,
            child: Text(title, style: theme.textTheme.h20.bold()),
          ),
          Gap(middleMargin),
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
  const _MemberListView(this.users, this.onTap);

  final List<FortuneUser> users;
  final Function(FortuneUser) onTap;

  final double iconRadius = 25.0;
  final double middleMargin = 8.0;
  final double nameHeight = 15.0;

  double get height => iconRadius * 2 + middleMargin + nameHeight;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return SizedBox(
      height: height,
      child: ListView.separated(
        itemCount: users.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        separatorBuilder: (BuildContext context, int index) => const Gap(15),
        itemBuilder: (BuildContext context, int index) {
          final user = users.elementAt(index);

          return GestureDetector(
            onTap: () => onTap(user),
            child: Column(children: [
              UserIconWidget(user.mainImageURL, radius: iconRadius),
              Gap(middleMargin),
              SizedBox(
                height: nameHeight,
                child: Text(user.name, style: theme.textTheme.h10),
              ),
            ]),
          );
        },
      ),
    );
  }
}
