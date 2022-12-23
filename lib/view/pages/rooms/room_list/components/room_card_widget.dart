import 'package:flutter/material.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_state.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/member_icons.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RoomCardWidget extends HookConsumerWidget {
  const RoomCardWidget({
    super.key,
    required this.room,
    required this.onTap,
  });

  final RoomListItemState room;
  final Function() onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return _card(
      theme,
      child: Column(
        children: [
          _title(theme),
          const Gap(15),
          _content(theme),
        ],
      ),
    );
  }

  Widget _card(
    AppTheme theme, {
    required Widget child,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: theme.appColors.shadow,
              blurRadius: 8,
              offset: const Offset(4, 4),
            ),
            BoxShadow(
              color: theme.appColors.shadow,
              blurRadius: 8,
              offset: const Offset(-4, -4),
            ),
          ],
        ),
        child: child,
      ),
    );
  }

  _title(AppTheme theme) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: Assets.images.thinder.provider(),
        ),
        const Gap(15),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              room.title,
              style: theme.textTheme.h50.bold(),
            ),
            Text(
              "東京都・渋谷区・神南",
              style: theme.textTheme.h30.merge(
                const TextStyle(color: Color(0xFF6C6C6C)),
              ),
            ),
          ],
        ),
      ],
    );
  }

  _content(AppTheme theme) {
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
        memberIconsWidget(15, room.memberIcons),
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
}
