import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fortune_client/data/model/enum/room_status.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms_guest/get_v1_rooms_guest.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/rooms/participating/participating_room_list_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/icon/member_icons.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GuestRoomCard extends HookConsumerWidget {
  const GuestRoomCard(this.room, {super.key});

  final GetV1RoomsGuestResponseRoom room;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final viewModel =
        ref.watch(participatingRoomListViewModelProvider.notifier);

    /// 下部ボタン・ゲスト
    Widget bottomWidgetGuest(GetV1RoomsGuestResponseRoom state) {
      /// リクエスト中
      switch (state.roomStatus) {
        case RoomStatus.pending:
          return _bottomButton(
            title:
                LocaleKeys.participating_room_list_page_action_requesting.tr(),
            color: Colors.transparent,
            onPressed: null,
          );

        /// メッセージ
        default:
          return _bottomButton(
            title: LocaleKeys.participating_room_list_page_action_message.tr(),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///
                /// タイトル
                Expanded(
                  child: Text(
                    room.roomName,
                    style: theme.textTheme.h40,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const Gap(5),
                InkWell(
                  onTap: () => viewModel.navigateToRoomActionsAsGuest(room),
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
                            text: room.membersNum.women,
                            style: theme.textTheme.h10.paint(
                              theme.appColors.primary,
                            ),
                          ),

                          /// 参加者：男性
                          const TextSpan(text: '・'),
                          TextSpan(text: room.membersNum.men),
                        ],
                      ),
                    ),
                  ],
                ),
                const Gap(10),

                ///
                /// 参加者アイコン
                memberIconsWidget([
                  room.hostMainImageURL,
                  ...?room.participantMainImageURLs,
                ]),
              ],
            ),
            const Spacer(),

            ///
            /// 下部ボタン
            bottomWidgetGuest(room),
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
