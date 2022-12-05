import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_state.dart';
import 'package:fortune_client/view/routes/app_router.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:fortune_client/view/routes/route_path.dart';

final roomListViewModelProvider =
    StateNotifierProvider<RoomListViewModel, AsyncValue<RoomListState>>((ref) {
  return RoomListViewModel(ref)..initialize();
});

class RoomListViewModel extends StateNotifier<AsyncValue<RoomListState>> {
  RoomListViewModel(this._ref) : super(const AsyncLoading());

  final Ref _ref;
  late final roomRepository = _ref.watch(Repository.roomProvider);

  Future<void> initialize() async => await fetchList();

  Future<void> fetchList() async {
    state = await AsyncValue.guard(() async {
      final result = await roomRepository.fetchList();
      final rooms = result.map((e) {
        return RoomListItemState.fromEntity(e);
      }).toList();
      return RoomListState(rooms: rooms);
    });
  }

  onTap(BuildContext context) async {
    // context.navigateTo(
    //   RoomListRoute(children: [RoomDetailRoute(id: "id")]),
    // );
    // context.navigateTo(RoomDetailRoute(id: "id"));
    await context.router.push(
      RoomDetailRoute(id: "id"),
    );
  }
}
