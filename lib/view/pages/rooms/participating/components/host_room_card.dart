import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fortune_client/data/model/enum/room_status.dart';
import 'package:fortune_client/data/model/participant/host/participant_room_as_host.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/view/pages/rooms/participating/participating_room_list_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/icon/member_icons.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HostRoomCard extends HookConsumerWidget {
  const HostRoomCard(this.room, {super.key});

  final ParticipantRoomAsHost room;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final viewModel =
        ref.watch(participatingRoomListViewModelProvider.notifier);

    /// 下部ボタン・ホスト
    Widget bottomWidgetHost(ParticipantRoomAsHost state) {
      switch (state.status) {
        case RoomStatus.pending:
          return _bottomButton(
            title: "リクエストを確認する",
            color: theme.appColors.primary,
            onPressed: () => state.joinRequestsCount > 0
                ? viewModel.navigateToRequestConfirmation(
                    state.id,
                    state.roomName,
                  )
                : null,
          );
        default:
          return _bottomButton(
            title: "メッセージ",
            color: theme.appColors.secondary,
            onPressed: viewModel.navigateToMessage,
          );
      }
    }

    const shadowOffset = Offset(4, 4);
    shadow(Offset offset) => BoxShadow(
          color: theme.appColors.shadow,
          blurRadius: 8,
          offset: offset,
        );

    return InkWell(
      onTap: () => viewModel.navigateToRoomDetail(room.id),
      child: Container(
        width: 220,
        padding: const EdgeInsets.fromLTRB(15, 15, 5, 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [shadow(shadowOffset), shadow(-shadowOffset)],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///
                /// タイトル
                Text(
                  room.roomName,
                  style: theme.textTheme.h40,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                InkWell(
                  onTap: () => viewModel.navigateToRoomActionsAsHost(room),
                  child: SvgPicture.asset(
                    Assets.images.icons.iconMoreVert.path,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            const Gap(5),

            ///
            /// 開催地
            Row(children: [
              SvgPicture.asset(
                Assets.images.icons.iconLocation.path,
                fit: BoxFit.contain,
              ),
              const Gap(3),
              Text(
                room.address.text,
                style: theme.textTheme.h20.paint(theme.appColors.subText2),
              ),
            ]),
            const Gap(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: theme.textTheme.h10.paint(theme.appColors.subText1),
                    children: [
                      const TextSpan(text: "参加者  "),
                      TextSpan(
                        text:
                            '女性 ${room.membersNum.womenNum}/${room.membersNum.maxWomenNum}',
                        style:
                            theme.textTheme.h10.paint(theme.appColors.primary),
                      ),
                      TextSpan(
                        text:
                            '・男性 ${room.membersNum.menNum}/${room.membersNum.maxMenNum}',
                        style:
                            theme.textTheme.h10.paint(theme.appColors.subText3),
                      ),
                    ],
                  ),
                ),
                const Gap(10),

                ///
                ///
                /// 参加者アイコン
                memberIconsWidget(15, room.participantMainImageURLs ?? []),
              ],
            ),
            const Spacer(),

            ///
            ///
            /// 下部ボタン
            bottomWidgetHost(room),
          ],
        ),
      ),
    );
  }

  _bottomButton({
    required String title,
    required Color color,
    required VoidCallback? onPressed,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        minimumSize: Size.zero,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      ),
      child: Text(title),
    );
  }
}
