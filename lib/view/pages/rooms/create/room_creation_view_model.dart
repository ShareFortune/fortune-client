import 'package:fortune_client/data/model/address/address.dart';
import 'package:fortune_client/data/model/enum/age_group.dart';
import 'package:fortune_client/data/model/tag/tag.dart';
import 'package:fortune_client/data/repository/rooms/rooms_repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/rooms/create/room_creation_state.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final roomCreationViewModelProvider =
    StateNotifierProvider<RoomCreationViewModel, RoomCreationState>(
  (_) => RoomCreationViewModel(sl()),
);

class RoomCreationViewModel extends StateNotifier<RoomCreationState> {
  RoomCreationViewModel(this._roomsRepository)
      : super(const RoomCreationState());

  final RoomsRepository _roomsRepository;

  /// タグ以外はNull非許容
  bool isPossibleToCreate() {
    return state.title != null &&
        state.title!.isNotEmpty &&
        state.membersNum != null &&
        state.ageGroup != null &&
        state.address != null &&
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

  changeExplanation() {}

  Future<bool> create() async {
    if (isPossibleToCreate()) {
      final result = await _roomsRepository.create(
        title: state.title!,
        membersNum: state.membersNum!,
        ageGroup: state.ageGroup!,
        addressId: state.address!,
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

  navigateToEntryDescription() async {
    final result = await sl<AppRouter>().push(
      EntryDescriptionRoute(title: "ルームの説明を入力", value: state.explanation),
    ) as String?;
    state = state.copyWith(explanation: result);
  }

  navigateToEntryAddress() async {
    final result = await sl<AppRouter>().push(EntryAddressRoute()) as Address?;
    state = state.copyWith(address: result ?? state.address);
  }

  navigateToTagsSelection() async {
    final result = await sl<AppRouter>().push(
      TagsSelectionRoute(beingSet: state.tags ?? List.empty()),
    ) as List<Tag>?;
    state = state.copyWith(tags: result ?? state.tags);
  }
}
