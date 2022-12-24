import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/member_icons.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RoomCardWidget extends HookConsumerWidget {
  const RoomCardWidget({
    super.key,
    this.hostIconPath,
    required this.title,
    required this.location,
    required this.members,
    required this.messageRoomExist,
    this.requestExist,
  });

  final String? hostIconPath;
  final String title;
  final String location;
  final List members;
  final bool messageRoomExist;
  final bool? requestExist;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    /// ホストアイコン
    Widget? leadingIcon;
    if (hostIconPath != null) {
      leadingIcon = CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(hostIconPath!),
      );
    }

    /// タイトル
    final titleTextStyle = theme.textTheme.h50.bold();
    Text titleText = Text(title, style: titleTextStyle);

    /// 位置情報
    final locationTextStyle =
        theme.textTheme.h30.merge(const TextStyle(color: Color(0xFF6C6C6C)));
    Text locationText = Text(location, style: locationTextStyle);

    /// メンバーアイコンリスト
    Widget membersIcon;
    membersIcon = memberIconsWidget(15, members);

    /// 下部ボタンスタイル
    Color bgOff = const Color(0xFFF5F5F5);
    Color textOff = const Color(0xFF969696);

    /// リクエストボタン
    Widget? requestBtn;
    if (requestExist != null) {
      requestBtn = _requestBtn(
        theme,
        bgColor: requestExist! ? theme.appColors.secondary : bgOff,
        textColor: requestExist! ? Colors.white : textOff,
        onTap: () {},
      );
    }

    /// メッセージボタン
    Widget messageBtn = _messageBtn(
      theme,
      bgColor: messageRoomExist ? theme.appColors.primary : bgOff,
      textColor: messageRoomExist ? Colors.white : textOff,
      onTap: () {},
    );

    return _build(
      theme: theme,
      leading: leadingIcon,
      title: titleText,
      location: locationText,
      members: membersIcon,
      requestBtn: requestBtn,
      messageBtn: messageBtn,
    );
  }

  _build({
    required AppTheme theme,
    required Widget? leading,
    required Text title,
    required Text location,
    required Widget members,
    required Widget? requestBtn,
    required Widget messageBtn,
  }) {
    return _room(
      theme,
      onTap: () {},
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(child: leading),
              const Gap(15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _title(theme, title, location),
                  const Gap(15),
                  _members(theme, members),
                ],
              ),
            ],
          ),
          const Divider(thickness: 1, height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [if (requestBtn != null) requestBtn, messageBtn],
          ),
        ],
      ),
    );
  }

  Widget _room(
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
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [shadow(shadowOffset), shadow(-shadowOffset)],
        ),
        child: child,
      ),
    );
  }

  _title(AppTheme theme, Text title, Text location) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [title, const Gap(5), location],
    );
  }

  _members(AppTheme theme, Widget child) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "参加中のユーザー",
              style: theme.textTheme.h40.bold(),
            ),
            const Gap(10),
            Text(
              "女性2 男性１",
              style: theme.textTheme.h30.merge(
                const TextStyle(color: Color(0xFF6C6C6C)),
              ),
            ),
          ],
        ),
        const Gap(10),
        child,
      ],
    );
  }

  _fav(AppTheme theme) {
    return IconButton(
      onPressed: () {},
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
      icon: Icon(
        size: 24,
        Icons.favorite_border,
        color: theme.appColors.divider,
      ),
    );
  }

  Widget _messageBtn(
    AppTheme theme, {
    required Color bgColor,
    required Color textColor,
    required Function() onTap,
  }) {
    // final bg = clickable ? theme.appColors.primary : const Color(0xFFF5F5F5);
    // final textColor = clickable ? Colors.white : const Color(0xFF969696);
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: bgColor,
        textStyle: theme.textTheme.h30.bold(),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      child: Text(
        "メッセージ",
        style: theme.textTheme.h30.bold().merge(TextStyle(color: textColor)),
      ),
    );
  }

  Widget _requestBtn(
    AppTheme theme, {
    required Color bgColor,
    required Color textColor,
    required Function() onTap,
  }) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: bgColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      child: Text(
        "リクエスト一覧",
        style: theme.textTheme.h30.bold().merge(TextStyle(color: textColor)),
      ),
    );
  }
}
