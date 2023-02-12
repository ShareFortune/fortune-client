import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fortune_client/data/model/base/address/address.dart';
import 'package:fortune_client/data/model/base/members_num/members_num.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/room/room_member_icons.dart';
import 'package:gap/gap.dart';

class ParticipatingRoom extends StatelessWidget {
  const ParticipatingRoom({
    super.key,
    required this.theme,
    required this.roomName,
    required this.address,
    required this.membersNum,
    required this.imageUrls,
    required this.bottom,
    required this.onTapRoom,
    required this.onTapNavigator,
  });

  final AppTheme theme;
  final String roomName;
  final Address address;
  final MembersNum membersNum;
  final List<String> imageUrls;
  final Widget bottom;
  final VoidCallback onTapRoom;
  final VoidCallback onTapNavigator;

  @override
  Widget build(BuildContext context) {
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
        padding: const EdgeInsets.fromLTRB(15, 15, 5, 10),
        decoration: BoxDecoration(
          color: theme.appColors.onBackground,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [shadow(shadowOffset), shadow(-shadowOffset)],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// タイトル
                Expanded(
                  child: Text(
                    roomName,
                    style: theme.textTheme.h30.bold(),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const Gap(5),

                /// アクション
                InkWell(
                  onTap: onTapNavigator,
                  child: SvgPicture.asset(
                    Assets.images.icons.iconMoreVert.path,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            const Gap(5),

            /// 開催地
            Row(
              children: [
                SvgPicture.asset(
                  Assets.images.icons.iconLocation.path,
                  fit: BoxFit.contain,
                ),
                const Gap(3),
                Text(
                  address.text,
                  style: theme.textTheme.h20.paint(theme.appColors.subText2),
                ),
              ],
            ),
            const Gap(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// 参加者数
                _membersNumText(),
                const Gap(10),

                /// メンバーアイコン
                RoomMemberIcons(urls: imageUrls),
              ],
            ),
            const Spacer(),

            /// 下部ボタン
            bottom,
          ],
        ),
      ),
    );
  }

  /// 参加者テキスト
  Widget _membersNumText() {
    return Row(
      children: [
        Text(
          LocaleKeys.data_room_membersNum_title.tr(),
          style: theme.textTheme.h10.bold(),
        ),
        const Gap(10),
        RichText(
          text: TextSpan(
            style: theme.textTheme.h10.paint(
              theme.appColors.subText3,
            ),
            children: [
              /// 参加者：女性
              TextSpan(
                text: membersNum.textWomen,
                style: theme.textTheme.h10.paint(
                  theme.appColors.primary,
                ),
              ),

              /// 参加者：男性
              const TextSpan(text: '・'),
              TextSpan(text: membersNum.textMen),
            ],
          ),
        ),
      ],
    );
  }
}
