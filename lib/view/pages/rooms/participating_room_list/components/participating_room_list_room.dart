import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/base/members_num/members_num.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/room/room_body.dart';
import 'package:fortune_client/view/widgets/room/room_header.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ParticipatingRoomListRoom extends HookConsumerWidget {
  const ParticipatingRoomListRoom({
    super.key,
    required this.infoText,
    required this.background,
    required this.bodyBackground,
    required this.hostIconUrl,
    required this.membersNum,
    required this.participantImageUrls,
  });

  final Text infoText;
  final Color background;
  final Color bodyBackground;
  final MembersNum membersNum;
  final String hostIconUrl;
  final List<String> participantImageUrls;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Container(
      color: background,
      padding: const EdgeInsets.fromLTRB(20, 15, 20, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          infoText,
          // Text(
          //   "このルームは開催されています",
          //   style: theme.textTheme.h20.bold().paint(theme.appColors.subText3),
          // ),
          const Gap(10),

          /// ヘッダー
          RoomHeader(
            theme: theme,
            iconUrl: hostIconUrl,
          ),

          const Gap(10),

          /// ボディ
          RoomBody(
            theme: theme,
            membersNum: membersNum,
            imageUrls: participantImageUrls,
            onFavorite: () {},
            background: bodyBackground,
          ),
        ],
      ),
    );
  }
}
