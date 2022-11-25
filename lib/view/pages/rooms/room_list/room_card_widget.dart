import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:gap/gap.dart';

class RoomCardWidget extends ConsumerWidget {
  const RoomCardWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: theme.appColors.divider,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          title(theme),
          const Gap(15),
          content(theme),
        ],
      ),
    );
  }

  title(AppTheme theme) {
    return Row(
      children: [
        /// ホスト
        CircleAvatar(
          radius: 30,
          backgroundColor: theme.appColors.primary,
        ),
        const Gap(15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// ルームタイトル
            Text(
              "渋谷で飲み会しませんか？",
              style: theme.textTheme.h40.bold(),
            ),
            const Gap(10),
            Row(
              children: [
                members(15),

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
              "東京都・渋谷区",
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

  members(double radius) {
    final diameter = radius * 2;
    return Stack(
      children: List.generate(5, (index) {
        double w;
        if (index == 0) {
          w = diameter;
        } else {
          w = diameter * (index + 1) - (diameter / 3) * index;
        }

        return Container(
          width: w,
          alignment: Alignment.centerRight,
          child: icon(radius),
        );
      }),
    );
  }

  icon(double radius) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: radius - 1,
        backgroundColor: Colors.grey,
      ),
    );
  }
}
