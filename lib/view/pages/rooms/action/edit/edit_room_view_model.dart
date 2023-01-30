import 'package:fortune_client/data/model/base/address_with_id/address_with_id.dart';
import 'package:fortune_client/data/model/base/tag/tag.dart';
import 'package:fortune_client/data/model/enum/age_group.dart';
import 'package:fortune_client/data/repository/rooms/rooms_repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/rooms/action/edit/edit_room_state.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final editRoomViewModelProvider =
    StateNotifierProvider<EditRoomViewModel, EditRoomState>(
  (_) => EditRoomViewModel(sl()),
);

class EditRoomViewModel extends StateNotifier<EditRoomState> {
  EditRoomViewModel(this._roomsRepository) : super(const EditRoomState());

  final RoomsRepository _roomsRepository;

  /// タグ以外はNull非許容
  bool isPossibleToUpdate() {
    return state.title != null &&
        state.title!.isNotEmpty &&
        state.membersNum != null &&
        state.ageGroup != null &&
        state.addressWithId != null &&
        state.explanation != null;
  }

  changeTitle(String value) {
    state = state.copyWith(title: value);
  }

  changeMembersNum(int value) {
    state = state.copyWith(membersNum: value);
  }

  changeAgeGroup(AgeGroup value) {
    state = state.copyWith(ageGroup: value);
  }

  changeExplanation(String value) {
    state = state.copyWith(explanation: value);
  }

  Future<bool> update() async {
    return false;
  }

  navigateToCreatedRoom(String roomId) async {
    sl<AppRouter>().push(HomeRouter(children: [
      RoomsTab(children: [RoomDetailRoute(roomId: roomId)]),
    ]));
  }

  navigateToEntryDescription() async {
    final result = await sl<AppRouter>().push(
      EntryDescriptionRoute(title: "ルームの説明を入力", value: state.explanation),
    ) as String?;
    state = state.copyWith(explanation: result);
  }

  navigateToEntryAddress() async {
    final result = await sl<AppRouter>().push(
      EntryAddressRoute(),
    ) as AddressWithId?;
    state = state.copyWith(addressWithId: result ?? state.addressWithId);
  }

  navigateToTagsSelection() async {
    final result = await sl<AppRouter>().push(
      TagsSelectionRoute(beingSet: state.tags ?? List.empty()),
    ) as List<Tag>?;
    state = state.copyWith(tags: result ?? state.tags);
  }
}
