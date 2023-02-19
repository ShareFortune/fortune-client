import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/core/base/members_num/members_num.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/room/room_member_icons.dart';
import 'package:fortune_client/view/widgets/room/room_members_num_text.dart';
import 'package:gap/gap.dart';

class RoomBody extends StatelessWidget {
  const RoomBody({
    super.key,
    required this.theme,
    required this.membersNum,
    required this.imageUrls,
    required this.onFavorite,
    required this.background,
  });

  final AppTheme theme;
  final MembersNum membersNum;
  final List<String> imageUrls;
  final VoidCallback onFavorite;
  final Color? background;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: background ?? theme.appColors.background,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RoomMembersNumText(
                theme: theme,
                menNum: membersNum.textMen,
                womenNum: membersNum.textWomen,
              ),
              if (imageUrls.isNotEmpty)
                Column(
                  children: [
                    const Gap(5),
                    RoomMemberIcons(urls: imageUrls),
                  ],
                )
            ],
          ),
          FavoriteButton(
            iconSize: 30,
            valueChanged: () => onFavorite(),
          ),
        ],
      ),
    );
  }
}
