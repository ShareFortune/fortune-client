import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/core/base/fortune_user/fortune_user.dart';
import 'package:fortune_client/data/model/core/base/tag/tag.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/rooms/room_detail/room_detail_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:fortune_client/view/widgets/icon/user_icon_widget.dart';
import 'package:fortune_client/view/widgets/other/async_value_widget.dart';
import 'package:fortune_client/view/widgets/other/tag_widget.dart';
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
        builder: (room) => Stack(children: [
          /// ルーム詳細
          Column(children: [
            _RoomDetailPageItem(
              title: "メンバー",
              middleMargin: 15,
              childPadding: EdgeInsets.zero,
              titlePadding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: _MemberListView(
                [room.hostUser, ...?room.participants],
                (user) => viewModel.navigateToProfile(user.id),
              ),
            ),
            const Gap(10),
            Container(
              width: double.infinity,
              color: theme.appColors.onBackground,
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Text(room.roomName, style: theme.textTheme.h40.bold()),
            ),
            _RoomDetailPageItem(
              title: "集合場所",
              child: Text(room.address.text, style: theme.textTheme.h20),
            ),
            _RoomDetailPageItem(
              title: "募集人数",
              child: Text("${room.membersNum}人", style: theme.textTheme.h20),
            ),
            _RoomDetailPageItem(
              title: "タグ",
              middleMargin: 10,
              child: _TagsWrapper(room.tags),
            ),
            _RoomDetailPageItem(
              title: "説明",
              child: Text(
                "テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト",
                style: theme.textTheme.h20,
              ),
            ),
            Expanded(child: Container(color: Colors.white)),
          ]),

          /// 参加ボタン
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 45,
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 30),
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: MaterialButton(
                onPressed: () {},
                color: theme.appColors.primary,
                textColor: theme.appColors.onPrimary,
                child: Text("ルームに参加する", style: theme.textTheme.h30.bold()),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class _RoomDetailPageItem extends HookConsumerWidget {
  const _RoomDetailPageItem({
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

class _TagsWrapper extends HookConsumerWidget {
  const _TagsWrapper(this.tags);

  final List<Tag>? tags;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    if (tags?.isNotEmpty != true) {
      return Text(
        LocaleKeys.myPage_profiles_tags_empty.tr(),
        style: theme.textTheme.h30.paint(
          theme.appColors.subText3,
        ),
      );
    }

    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: tags!.map((e) {
        return TagWidget(value: e.name);
      }).toList(),
    );
  }
}
