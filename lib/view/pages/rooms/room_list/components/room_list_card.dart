import 'package:easy_localization/easy_localization.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fortune_client/data/model/rooms/room/room.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/util/logger/logger.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/dialog/error_dialog.dart';
import 'package:fortune_client/view/widgets/dialog/toast.dart';
import 'package:fortune_client/view/widgets/room/room_member_icons.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RoomListCard extends StatefulHookConsumerWidget {
  final Room room;
  final VoidCallback onTapRoom;
  final Function(bool) onTapHeart;
  final Future<bool> Function() onTapJoinRequestBtn;

  const RoomListCard({
    super.key,
    required this.room,
    required this.onTapRoom,
    required this.onTapHeart,
    required this.onTapJoinRequestBtn,
  });

  @override
  ConsumerState<RoomListCard> createState() => _RoomListCardState();
}

class _RoomListCardState extends ConsumerState<RoomListCard> {
  Room get room => widget.room;

  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(appThemeProvider);

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
        onTap: widget.onTapRoom,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: theme.appColors.onBackground,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [shadow(shadowOffset), shadow(-shadowOffset)],
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  /// ホストアイコン
                  ClipOval(
                    child: Image.network(
                      room.hostImageUrlHttp,
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
                          room.roomName,
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
                            room.address.text,
                            style: theme.textTheme.h20
                                .paint(theme.appColors.subText2),
                          ),
                        ]),
                      ],
                    ),
                  ),
                  const Gap(10),
                  ElevatedButton(
                    onPressed: () async {
                      final result = await widget.onTapJoinRequestBtn();
                      if (result && mounted) {
                        showToast(context, theme, '参加申請しました');
                      } else {
                        ErrorDialog.show(
                          context,
                          '参加申請に失敗しました。時間をおいて再度お試しください。',
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: theme.appColors.primary,
                      minimumSize: Size.zero,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                    ),
                    child: Text(
                      LocaleKeys.data_room_action_joinRequest_label.tr(),
                      style: theme.textTheme.h20
                          .paint(theme.appColors.onPrimary)
                          .bold(),
                    ),
                  ),
                ],
              ),
              const Gap(10),
              _contentsWidget(theme),
            ],
          ),
        ),
      ),
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
                          text: room.membersNum.textWomen,
                          style: theme.textTheme.h10.paint(
                            theme.appColors.primary,
                          ),
                        ),

                        /// 参加者：男性
                        const TextSpan(text: '・'),
                        TextSpan(text: room.membersNum.textMen),
                      ],
                    ),
                  ),
                ],
              ),
              const Gap(5),
              RoomMemberIcons(
                urls: room.participantMainImageURLs ?? [],
              ),
            ],
          ),
          FavoriteButton(
            iconSize: 30,
            isFavorite: room.isFavorite,
            valueChanged: widget.onTapHeart,
          ),
        ],
      ),
    );
  }
}
