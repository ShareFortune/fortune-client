import 'package:fortune_client/data/model/base/address_with_id/address_with_id.dart';
import 'package:fortune_client/data/model/base/tag/tag.dart';
import 'package:fortune_client/data/model/enum/age_group.dart';
import 'package:fortune_client/data/repository/rooms/rooms_repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/rooms/action/create/create_room_state.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final createRoomViewModelProvider =
    StateNotifierProvider<CreateRoomViewModel, CreateRoomState>(
  (_) => CreateRoomViewModel(sl()),
);

class CreateRoomViewModel extends StateNotifier<CreateRoomState> {
  CreateRoomViewModel(this._roomsRepository) : super(const CreateRoomState());

  final RoomsRepository _roomsRepository;

  /// タグ以外はNull非許容
  bool isPossibleToCreate() {
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

  Future<bool> create() async {
    if (isPossibleToCreate()) {
      final result = await _roomsRepository.create(
        title: state.title!,
        membersNum: state.membersNum!,
        ageGroup: state.ageGroup!,
        addressWithId: state.addressWithId!,
        tagIds: state.tags,
        explanation: state.explanation!,
      );
      if (result.isEmpty) return false;
      navigateToCreatedRoom(result);
      return true;
    }
    return false;
  }

  navigateToCreatedRoom(String roomId) async {
    sl<AppRouter>().push(HomeRouter(children: [
      RoomsTab(children: [RoomDetailRoute(roomId: roomId)]),
    ]));
  }

  navigateToEntryAddress() async {
    final result = await sl<AppRouter>().push(
      EntryAddressRoute(),
    ) as AddressWithId?;
    state = state.copyWith(addressWithId: result ?? state.addressWithId);
  }

  navigateToTagsSelection() async {
    final result = await sl<AppRouter>().push(
      SelectTagsRoute(beingSet: state.tags ?? List.empty()),
    ) as List<Tag>?;
    state = state.copyWith(tags: result ?? state.tags);
  }
}
