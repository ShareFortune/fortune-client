import 'package:flutter/material.dart';
import 'package:fortune_client/gen/assets.gen.dart';
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
    this.bottom,
    required this.onTap,
  });

  final String? hostIconPath;
  final String title;
  final String location;
  final List members;
  final Widget? bottom;
  final Function() onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    /// ホストアイコン
    Widget? leadingIcon;
    if (hostIconPath != null) {
      leadingIcon = CircleAvatar(
        radius: 30,
        // backgroundImage: AssetImage(hostIconPath!),
        backgroundImage: Assets.images.thinder.provider(),
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

    return _build(
      theme: theme,
      leading: leadingIcon,
      title: titleText,
      location: locationText,
      members: membersIcon,
      bottom: bottom,
    );
  }

  _build({
    required AppTheme theme,
    required Widget? leading,
    required Text title,
    required Text location,
    required Widget members,
    required Widget? bottom,
  }) {
    return _room(
      theme,
      onTap: onTap,
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
          if (bottom != null)
            Container(padding: const EdgeInsets.only(top: 20), child: bottom),
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
}
