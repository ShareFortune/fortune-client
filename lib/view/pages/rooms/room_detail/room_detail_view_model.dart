import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/data/repository/rooms/rooms_repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/rooms/room_detail/room_detail_state.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';

final roomDetailViewModelProvider =
    StateNotifierProvider<RoomDetailViewModel, AsyncValue<RoomDetailState>>(
        (ref) {
  return RoomDetailViewModel(ref, sl())..initialize();
});

class RoomDetailViewModel extends StateNotifier<AsyncValue<RoomDetailState>> {
  RoomDetailViewModel(this._ref, this._repository)
      : super(const AsyncLoading());

  final Ref _ref;
  final RoomsRepository _repository;

  Future<void> initialize() async => await fetch();

  Future<void> fetch() async {
    state = await AsyncValue.guard(() async {
      final _result = await _repository.fetchDetail();
      print(_result);
      return const RoomDetailState();
    });
  }

  Future<void> joinRequest() async {}

  onTapProfile(BuildContext context, String id) async {
    await context.router.push(ProfileRoute(id: id));
  }
}
