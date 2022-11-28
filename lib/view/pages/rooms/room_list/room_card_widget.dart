import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_state.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/member_icons.dart';
import 'package:gap/gap.dart';

class RoomCardWidget extends ConsumerWidget {
  const RoomCardWidget({
    super.key,
    required this.room,
    required this.onTap,
  });

  final RoomListItemState room;
  final Function(BuildContext) onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return InkWell(
      onTap: () => onTap(context),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: theme.appColors.divider,
          ),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: theme.appColors.shadow,
              blurRadius: 4,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            title(theme),
            const Gap(15),
            content(theme),
          ],
        ),
      ),
    );
  }

  title(AppTheme theme) {
    return Row(
      children: [
        /// ホスト
        CircleAvatar(
          radius: 30,
          // backgroundColor: theme.appColors.primary,
          backgroundImage: Assets.images.thinder.provider(),
        ),
        const Gap(15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// ルームタイトル
            Text(
              room.title,
              style: theme.textTheme.h40.bold(),
            ),
            const Gap(10),
            Row(
              children: [
                memberIconsWidget(15, room.memberIcons),

                /// 半径分開ける
                const Gap(15),
                Text(
                  "残り3人",
                  style: theme.textTheme.h20.auxiliary(),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  content(AppTheme theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              Icons.place_outlined,
              size: 24,
              color: theme.appColors.divider,
            ),
            const Gap(10),
            Text(
              "東京都・横浜市",
              // room.place,
              style: theme.textTheme.h30.auxiliary(),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          icon: Icon(
            size: 24,
            Icons.favorite_border,
            color: theme.appColors.divider,
          ),
        ),
      ],
    );
  }
}
