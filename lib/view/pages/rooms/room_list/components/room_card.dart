import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_state.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/icon/member_icons.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RoomCard extends HookConsumerWidget {
  const RoomCard({
    super.key,
    required this.room,
    required this.onTapRoom,
    required this.onTapJoinRequestBtn,
  });

  final RoomListStateItem room;
  final VoidCallback onTapRoom;
  final Function(String) onTapJoinRequestBtn;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    /// ホストアイコン
    Widget leadingIcon = ClipOval(
      child: Image.network(
        room.hostIcon,
        width: 50,
        height: 50,
        fit: BoxFit.cover,
      ),
    );

    /// タイトル
    final titleTextStyle = theme.textTheme.h40;
    Text titleText = Text(room.title, style: titleTextStyle);

    /// 位置情報
    final addressTextColor = theme.appColors.subText2;
    final addressTextStyle = theme.textTheme.h20.paint(addressTextColor);
    Text addressText = Text(room.address, style: addressTextStyle);

    /// メンバーアイコンリスト
    Widget membersIcon;
    membersIcon = memberIconsWidget(15, room.memberIcons);

    return _build(
      theme: theme,
      leading: leadingIcon,
      title: titleText,
      location: addressText,
      members: membersIcon,
    );
  }

  _build({
    required AppTheme theme,
    required Widget leading,
    required Text title,
    required Text location,
    required Widget members,
  }) {
    return _roomCard(
      theme,
      onTap: onTapRoom,
      child: Column(
        children: [
          _titleWidget(leading, theme, title, location),
          const Gap(10),
          _contentsWidget(theme, members),
        ],
      ),
    );
  }

  Container _contentsWidget(AppTheme theme, Widget members) {
    /// 参加者
    final titleTextColor = theme.appColors.subText1;
    final titleTextStyle = theme.textTheme.h30.paint(titleTextColor);

    /// 参加者：女性
    final womanTextColor = theme.appColors.primary;
    final womanTextStyle = theme.textTheme.h20.paint(womanTextColor);

    /// 参加者：男性
    final manTextColor = theme.appColors.subText3;
    final manTextStyle = theme.textTheme.h20.paint(manTextColor);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: theme.appColors.background,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: '参加者: ', style: titleTextStyle),
                    TextSpan(text: '女性 2/4', style: womanTextStyle),
                    TextSpan(text: '、男性 2/4', style: manTextStyle),
                  ],
                ),
              ),
              const Gap(5),
              members,
            ],
          ),
          FavoriteButton(
            iconSize: 30,
            isFavorite: false,
            valueChanged: (isFavorite) {
              print('Is Favorite : $isFavorite');
            },
          ),
        ],
      ),
    );
  }

  Widget _titleWidget(
    Widget leading,
    AppTheme theme,
    Text title,
    Text location,
  ) {
    /// 参加ボタンテキストスタイル
    final joinBtnTextColor = theme.appColors.onPrimary;
    final joinBtnTextStyle = theme.textTheme.h20.paint(joinBtnTextColor).bold();

    // /// 参加ボタン
    Color joinBtnColor;
    VoidCallback? onPressedJoinBtn;
    if (room.isRequested) {
      joinBtnColor = theme.appColors.disable;
      onPressedJoinBtn = null;
    } else {
      joinBtnColor = theme.appColors.primary;
      onPressedJoinBtn = () => onTapJoinRequestBtn(room.id);
    }

    return Row(
      children: [
        leading,
        const Gap(10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title,
            Row(children: [
              SvgPicture.asset(
                Assets.images.icons.iconLocation.path,
                fit: BoxFit.contain,
              ),
              const Gap(5),
              location,
            ]),
          ],
        ),
        const Spacer(),
        ElevatedButton(
          onPressed: onPressedJoinBtn,
          style: ElevatedButton.styleFrom(
            backgroundColor: joinBtnColor,
            minimumSize: Size.zero,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          ),
          child: Text("参加", style: joinBtnTextStyle),
        )
      ],
    );
  }

  Widget _roomCard(
    AppTheme theme, {
    required Function() onTap,
    required Widget child,
  }) {
    const shadowOffset = Offset(4, 4);
    shadow(Offset offset) => BoxShadow(
          color: theme.appColors.shadow,
          blurRadius: 8,
          offset: offset,
        );

    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [shadow(shadowOffset), shadow(-shadowOffset)],
        ),
        child: child,
      ),
    );
  }
}
