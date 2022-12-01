import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/member_icons.dart';
import 'package:gap/gap.dart';

Widget membersWidget(AppTheme theme, List memberIcons) {
  return Row(
    children: [
      memberIconsWidget(15, memberIcons),

      /// 半径分開ける
      const Gap(15),
      Text(
        "残り 男性3 女性2",
        style: theme.textTheme.h20.auxiliary(),
      ),
    ],
  );
}
