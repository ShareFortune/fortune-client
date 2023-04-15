import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/core/base/address_with_id/address_with_id.dart';
import 'package:fortune_client/data/model/core/base/tag/tag.dart';
import 'package:fortune_client/data/model/core/enum/age_group.dart';
import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/rooms/action/edit/edit_room_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final editRoomViewModelProvider =
    StateNotifierProvider.family<EditRoomViewModel, EditRoomState, String>(
  (_, id) => EditRoomViewModel(EditRoomState(
    titleController: TextEditingController(),
    explanationController: TextEditingController(),
  ))
    ..initialize(id),
);

class EditRoomViewModel extends StateNotifier<EditRoomState> {
  EditRoomViewModel(super.state);

  Future<void> initialize(roomId) async {
    await Repository.rooms.fetchDetail(roomId).then((room) {
      changeMembersNum(room.membersNum);
      changeTags(room.tags);
      state.titleController.text = room.roomName;
      state.explanationController.text = room.roomName;
    });
  }

  /// タイトル以外はNull非許容
  bool isPossibleToUpdate() {
    return state.titleController.text.isNotEmpty;
  }

  changeMembersNum(int? value) {
    state = state.copyWith(membersNum: value);
  }

  changeAgeGroup(AgeGroup? value) {
    state = state.copyWith(ageGroup: value);
  }

  changeTags(List<Tag>? value) {
    state = state.copyWith(tags: value);
  }

  changeAddressWithId(AddressWithId? value) {
    state = state.copyWith(addressWithId: value);
  }

  Future<bool> update() async {
    return true;
  }

  navigateToEditedRoom(String roomId) async {
    // getIt<AppRouter>().push(HomeRouter(children: [
    //   RoomsTab(children: [RoomDetailRoute(roomId: roomId)]),
    // ]));
  }

  navigateToEntryAddress() async {
    // final result = await getIt<AppRouter>().push(
    //   EntryAddressRoute(),
    // ) as AddressWithId?;
    // changeAddressWithId(result ?? state.addressWithId);
  }

  navigateToTagsSelection() async {
    // final result = await getIt<AppRouter>().push(
    //   SelectTagsRoute(beingSet: state.tags ?? List.empty()),
    // ) as List<Tag>?;
    // changeTags(result ?? state.tags);
  }
}
