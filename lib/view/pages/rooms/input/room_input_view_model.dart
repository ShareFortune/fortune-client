import 'package:easy_localization/easy_localization.dart';
import 'package:fortune_client/data/model/enum/age_group.dart';
import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/rooms/input/room_input_state.dart';
import 'package:fortune_client/view/routes/route_navigator.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/dialog/toast.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'room_input_view_model.g.dart';

@riverpod
class RoomInputViewModel extends _$RoomInputViewModel {
  @override
  RoomInputState build() {
    return const RoomInputState();
  }

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

  Future<String?> create() async {
    if (isPossibleToCreate()) return null;
    return await Repository.rooms.create(
      title: state.title!,
      membersNum: state.membersNum!,
      ageGroup: state.ageGroup!,
      addressWithId: state.addressWithId!,
      tagIds: state.tags,
      explanation: state.explanation!,
    );
  }

  navigateToCreatedRoom(String roomId) async {
    // getIt<AppRouter>().push(HomeRouter(children: [
    //   RoomsTab(children: [RoomDetailRoute(roomId: roomId)]),
    // ]));
  }

  navigateToEntryAddress() async {
    // final result = await getIt<AppRouter>().push(
    //   EntryAddressRoute(),
    // ) as AddressWithId?;
    // state = state.copyWith(addressWithId: result ?? state.addressWithId);
  }

  navigateToTagsSelection() async {
    //   final result = await getIt<AppRouter>().push(
    //     SelectTagsRoute(beingSet: state.tags ?? List.empty()),
    //   ) as List<Tag>?;
    //   state = state.copyWith(tags: result ?? state.tags);
  }
}
