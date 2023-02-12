import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms_guest/get_v1_rooms_guest.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/rooms/participating/components/participating_room.dart';
import 'package:fortune_client/view/pages/rooms/participating/components/participating_room_button.dart';
import 'package:fortune_client/view/pages/rooms/participating/participating_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ParticipatingRoomAsGuest extends HookConsumerWidget {
  const ParticipatingRoomAsGuest(this.rooms, {Key? key}) : super(key: key);

  final List<GetV1RoomsGuestResponseRoom> rooms;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final viewModel = ref.watch(participatingViewModelProvider.notifier);

    /// データが空の場合
    if (rooms.isEmpty) return _noRooms(theme);

    /// データが存在する場合
    return Row(
      children: rooms.map((room) {
        return ParticipatingRoom(
          theme: theme,
          roomName: room.roomName,
          address: room.address,
          membersNum: room.membersNum,
          onTapRoom: () => viewModel.navigateToRoomDetail(room.id),
          imageUrls: [
            room.hostMainImageURL,
            ...?room.participantMainImageURLs,
          ],
          onTapNavigator: () => viewModel.navigateToRoomActionsAsGuest(room),
          bottom: ParticipatingRoomButton.guest(
            theme,
            room.roomStatus,
            () => viewModel.navigateToMessage(),
          ),
        );
      }).toList(),
    );
  }

  Widget _noRooms(AppTheme theme) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            LocaleKeys.participating_room_list_page_guest_advice.tr(),
            style: theme.textTheme.h30.paint(theme.appColors.subText3),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              LocaleKeys.participating_room_list_page_guest_navigation.tr(),
              style: theme.textTheme.h30.paint(theme.appColors.primary),
            ),
          ),
        ],
      ),
    );
  }
}
