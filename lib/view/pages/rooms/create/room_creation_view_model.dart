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

  Future<void> create() async {}

  navigateToEntryAddress() async {
    final result = await sl<AppRouter>().push(EntryAddressRoute()) as Address?;
    state = state.copyWith(address: result ?? state.address);
  }

  navigateToTagsSelection() async {
    final result =
        await sl<AppRouter>().push(TagsSelectionRoute()) as List<Tag>?;
    state = state.copyWith(tags: result ?? state.tags);
  }
}
