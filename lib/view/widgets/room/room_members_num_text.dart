import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:gap/gap.dart';

class RoomMembersNumText extends StatelessWidget {
  const RoomMembersNumText({
    Key? key,
    required this.theme,
    required this.menNum,
    required this.womenNum,
  }) : super(key: key);

  final AppTheme theme;
  final String menNum;
  final String womenNum;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          LocaleKeys.data_room_membersNum_title.tr(),
          style: theme.textTheme.h10.bold(),
        ),
        const Gap(10),
        RichText(
          text: TextSpan(
            children: [
              /// 参加者：女性
              TextSpan(
                text: "参加者：女性",
                style: theme.textTheme.h10.paint(
                  theme.appColors.primary,
                ),
              ),

              /// 参加者：男性
              TextSpan(
                text: "・参加者：男性",
                style: theme.textTheme.h10.paint(
                  theme.appColors.subText3,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
