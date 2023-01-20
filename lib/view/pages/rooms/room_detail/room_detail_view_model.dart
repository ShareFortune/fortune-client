import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/repository/rooms/rooms_repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/rooms/room_detail/room_detail_state.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final roomDetailViewModelProvider =
    StateNotifierProvider.family<RoomDetailViewModel, RoomDetailState, String>(
  (ref, roomId) => RoomDetailViewModel(roomId, sl())..initialize(),
);

class RoomDetailViewModel extends StateNotifier<RoomDetailState> {
  RoomDetailViewModel(String roomId, this._roomsRepository)
      : super(RoomDetailState(roomId: roomId));

  final RoomsRepository _roomsRepository;

  Future<void> initialize() async {
    await fetch();
  }

  Future<void> fetch() async {
    state = state.copyWith(
      detail: await AsyncValue.guard(() async {
        final result = await _roomsRepository.fetchDetail(state.roomId);
        return RoomDetailStateInfo.from(result);
      }),
    );
  }

  Future<void> joinRequest() async {}

  onTapProfile(BuildContext context, String id) async {
    await context.router.push(ProfileRoute(id: id));
  }
}
