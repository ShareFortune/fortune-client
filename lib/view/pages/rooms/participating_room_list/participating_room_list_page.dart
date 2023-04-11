import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms_guest/get_v1_rooms_guest.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms_host/get_v1_rooms_host.dart';
import 'package:fortune_client/view/pages/rooms/participating/participating_type.dart';
import 'package:fortune_client/view/pages/rooms/participating_room_list/components/participating_room_list_room.dart';
import 'package:fortune_client/view/widgets/room/room_theme_builder.dart';
import 'package:fortune_client/view/pages/rooms/participating_room_list/participating_room_list_view_model.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:fortune_client/view/widgets/other/async_value_widget.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ParticipatingRoomListPage extends HookConsumerWidget {
  const ParticipatingRoomListPage(this.type, {super.key});

  final ParticipatingType type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(participatingRoomListViewModelProvider(type));
    final viewModel =
        ref.watch(participatingRoomListViewModelProvider(type).notifier);

    return Scaffold(
      backgroundColor: theme.appColors.background,
      appBar: BackAppBar(title: type.showAllPageTitle),
      body: AsyncValueWidget(
          data: state.rooms,
          builder: (rooms) {
            return ListView.separated(
              itemCount: rooms.length,
              separatorBuilder: (_, __) => const Gap(10),
              itemBuilder: (context, index) {
                final room = rooms[index];
                final isHost = room is GetV1RoomsHostResponseRoom;
                return isHost ? hostRoom(theme, room) : guestRoom(theme, room);
              },
            );
          }),
    );
  }

  hostRoom(AppTheme theme, GetV1RoomsHostResponseRoom room) {
    return RoomThemeBuilder(
      roomStatus: room.status,
      builder: (roomTheme) {
        return ParticipatingRoomListRoom(
          roomTheme: roomTheme,
          hostIconUrl: "",
          membersNum: room.membersNum,
          participantImageUrls: [...?room.participantMainImageURLs],
        );
      },
    );
  }

  guestRoom(AppTheme theme, GetV1RoomsGuestResponseRoom room) {
    return RoomThemeBuilder(
      roomStatus: room.roomStatus,
      joinRequestStatus: room.joinRequestStatus,
      builder: (roomTheme) {
        return ParticipatingRoomListRoom(
          roomTheme: roomTheme,
          hostIconUrl: room.hostMainImageURL,
          membersNum: room.membersNum,
          participantImageUrls: [...?room.participantMainImageURLs],
        );
      },
    );
  }
}
