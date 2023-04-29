import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/room/room_body.dart';
import 'package:fortune_client/view/widgets/room/room_header.dart';
import 'package:fortune_client/view/widgets/room/room_state.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ParticipatingRoom extends HookConsumerWidget {
  final RoomState room;
  final VoidCallback? onTap;

  const ParticipatingRoom({
    super.key,
    required this.room,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 20),
        decoration: BoxDecoration(
          color: room.theme.backgroundColor,
          border: Border(top: room.theme.border, bottom: room.theme.border),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            room.theme.description,
            const Gap(10),

            /// ヘッダー
            RoomHeader(
              theme: theme,
              iconUrl: room.hostImageUrl,
            ),

            const Gap(10),

            /// ボディ
            RoomBody(
              theme: theme,
              membersNum: room.membersNum,
              imageUrls: room.membersImageUrl,
              onFavorite: room.isHost ? null : () {},
              background: room.theme.userBackgroundColor,
            ),
          ],
        ),
      ),
    );
  }
}
