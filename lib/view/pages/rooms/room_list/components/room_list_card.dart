import 'package:easy_localization/easy_localization.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/util/logger/logger.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_state.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/room/room_member_icons.dart';
import 'package:gap/gap.dart';

class RoomListCard extends StatelessWidget {
  const RoomListCard({
    super.key,
    required this.theme,
    required this.room,
    required this.onTapRoom,
    required this.onTapHeart,
    required this.onTapJoinRequestBtn,
  });

  final AppTheme theme;
  final RoomListStateRoom room;
  final VoidCallback onTapRoom;
  final Function(bool) onTapHeart;
  final VoidCallback onTapJoinRequestBtn;

  @override
  Widget build(BuildContext context) {
    const shadowOffset = Offset(4, 4);
    shadow(Offset offset) => BoxShadow(
          color: theme.appColors.shadow,
          blurRadius: 8,
          offset: offset,
        );

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 6,
        horizontal: 20,
      ),
      child: InkWell(
        onTap: onTapRoom,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: theme.appColors.onBackground,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [shadow(shadowOffset), shadow(-shadowOffset)],
          ),
          child: Column(
            children: [
              _titleWidget(theme),
              const Gap(10),
              _contentsWidget(theme),
            ],
          ),
        ),
      ),
    );
  }

  Widget _titleWidget(AppTheme theme) {
    // /// 参加ボタン
    Color joinBtnColor;
    VoidCallback? onPressedJoinBtn;
    if (room.isRequested) {
      joinBtnColor = theme.appColors.disable;
      onPressedJoinBtn = null;
    } else {
      joinBtnColor = theme.appColors.primary;
      onPressedJoinBtn = () => onTapJoinRequestBtn();
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        /// ホストアイコン
        ClipOval(
          child: Image.network(
            room.data.hostMainImageURL,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
            errorBuilder: (_, error, __) {
              logger.e(error);
              return const Icon(
                Icons.error,
                color: Colors.red,
              );
            },
          ),
        ),
        const Gap(10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// タイトル
              Text(
                room.data.roomName,
                style: theme.textTheme.h30.bold(),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),

              /// 開催地
              Row(children: [
                SvgPicture.asset(
                  Assets.icons.iconLocation.path,
                  fit: BoxFit.contain,
                ),
                const Gap(3),
                Text(
                  room.data.address.text,
                  style: theme.textTheme.h20.paint(theme.appColors.subText2),
                ),
              ]),
            ],
          ),
        ),
        const Gap(10),
        ElevatedButton(
          onPressed: onPressedJoinBtn,
          style: ElevatedButton.styleFrom(
            backgroundColor: joinBtnColor,
            minimumSize: Size.zero,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(
            LocaleKeys.data_room_action_joinRequest_label.tr(),
            style: theme.textTheme.h20.paint(theme.appColors.onPrimary).bold(),
          ),
        ),
      ],
    );
  }

  Container _contentsWidget(AppTheme theme) {
    return Container(
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
              Row(
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
                          text: room.data.membersNum.textWomen,
                          style: theme.textTheme.h10.paint(
                            theme.appColors.primary,
                          ),
                        ),

                        /// 参加者：男性
                        const TextSpan(text: '・'),
                        TextSpan(text: room.data.membersNum.textMen),
                      ],
                    ),
                  ),
                ],
              ),
              const Gap(5),
              RoomMemberIcons(
                urls: room.data.participantMainImageURLs ?? [],
              ),
            ],
          ),
          FavoriteButton(
            iconSize: 30,
            isFavorite: room.data.isFavorite,
            valueChanged: onTapHeart,
          ),
        ],
      ),
    );
  }
}
