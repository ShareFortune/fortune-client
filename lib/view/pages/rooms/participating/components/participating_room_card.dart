import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fortune_client/data/model/enum/room_status.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/view/pages/rooms/participating/participating_room_list_state.dart';
import 'package:fortune_client/view/pages/rooms/participating/participating_room_list_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/icon/member_icons.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ParticipatingRoomCard extends HookConsumerWidget {
  const ParticipatingRoomCard(this.room, {super.key});

  final ParticipatingRoomListStateItem room;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final viewModel =
        ref.watch(participatingRoomListViewModelProvider.notifier);

    /// タイトル
    final titleTextStyle = theme.textTheme.h40;
    Text titleText = Text(
      room.title,
      style: titleTextStyle,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );

    /// 位置情報
    final locationTextStyle =
        theme.textTheme.h20.merge(const TextStyle(color: Color(0xFF6C6C6C)));
    Text locationText = Text(room.address, style: locationTextStyle);

    /// メンバーアイコンリスト
    Widget membersIcon = memberIconsWidget(15, room.memberIcons);

    /// 下部ボタン・ホスト
    Widget bottomWidgetHost(HostState state) {
      switch (state.roomStatus) {
        case RoomStatus.pending:
          return _bottomButton(
              title: "リクエストを確認する",
              color: theme.appColors.primary,
              onPressed: () => state.participationRequestsNum > 0
                  ? viewModel.navigateToRequestConfirmation(state.id)
                  : null);
        default:
          return _bottomButton(
            title: "メッセージ",
            color: theme.appColors.secondary,
            onPressed: viewModel.navigateToMessage,
          );
      }
    }

    /// 下部ボタン・ゲスト
    Widget bottomWidgetGuest(GuestState state) {
      switch (state.roomStatus) {
        case RoomStatus.pending:
          return _bottomButton(
            title: "リクエスト中",
            color: Colors.transparent,
            onPressed: null,
          );
        default:
          return _bottomButton(
            title: "メッセージ",
            color: theme.appColors.secondary,
            onPressed: viewModel.navigateToMessage,
          );
      }
    }

    /// 下部ボタン
    Widget bottomWidget = room.map<Widget>(
      host: bottomWidgetHost,
      guest: bottomWidgetGuest,
    );

    return _build(
      theme: theme,
      title: titleText,
      location: locationText,
      members: membersIcon,
      bottom: bottomWidget,
      onTapRoom: viewModel.navigateToRoomDetail,
    );
  }

  _build({
    required AppTheme theme,
    required Text title,
    required Text location,
    required Widget members,
    required Widget bottom,
    required VoidCallback onTapRoom,
  }) {
    /// Shadow
    const shadowOffset = Offset(4, 4);
    shadow(Offset offset) => BoxShadow(
          color: theme.appColors.shadow,
          blurRadius: 8,
          offset: offset,
        );

    return InkWell(
      onTap: onTapRoom,
      child: Container(
        width: 220,
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [shadow(shadowOffset), shadow(-shadowOffset)],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _titleWidget(theme, title, location),
            const Gap(15),
            _membersWidget(theme, members),
            const Spacer(),
            bottom,
          ],
        ),
      ),
    );
  }

  _bottomButton({
    required String title,
    required Color color,
    required VoidCallback? onPressed,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        minimumSize: Size.zero,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      ),
      child: Text(title),
    );
  }

  _titleWidget(AppTheme theme, Text title, Text location) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title,
        const Gap(5),
        Row(children: [
          SvgPicture.asset(
            Assets.images.icons.iconLocation.path,
            fit: BoxFit.contain,
          ),
          const Gap(3),
          location,
        ])
      ],
    );
  }

  _membersWidget(AppTheme theme, Widget child) {
    /// Label
    final labelTextStyle = theme.textTheme.h10.bold();
    final labelText = Text("参加者  ", style: labelTextStyle);

    /// 参加者：女性
    final womanTextColor = theme.appColors.primary;
    final womanTextStyle = theme.textTheme.h10.paint(womanTextColor);

    /// 参加者：男性
    final manTextColor = theme.appColors.subText3;
    final manTextStyle = theme.textTheme.h10.paint(manTextColor);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            labelText,
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: '女性 2/4', style: womanTextStyle),
                  TextSpan(text: '・男性 2/4', style: manTextStyle),
                ],
              ),
            ),
            const Gap(10),
          ],
        ),
        const Gap(5),
        child,
      ],
    );
  }
}
