import 'package:fortune_client/data/model/addresses/address/address.dart';
import 'package:fortune_client/data/model/enum/age_group.dart';
import 'package:fortune_client/data/model/tags/tag/tag.dart';
import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/view/pages/rooms/input/room_input_page.dart';
import 'package:fortune_client/view/pages/rooms/input/room_input_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'room_input_view_model.g.dart';

@riverpod
class RoomInputViewModel extends _$RoomInputViewModel {
  @override
  RoomInputState build(RoomInputPageArguments arguments) {
    return RoomInputState(
      id: arguments.roomId,
      title: arguments.title,
      explanation: arguments.explanation,
      ageGroup: arguments.ageGroup,
      membersNum: arguments.membersNum,
      tags: arguments.tags,
      address: arguments.address,
    );
  }

  /// タグ以外はNull非許容
  bool isPossibleToCreate() {
    return state.title != null &&
        state.title!.isNotEmpty &&
        state.membersNum != null &&
        state.ageGroup != null &&
        state.address != null;
  }

  changeTitle(String value) {
    state = state.copyWith(title: value);
  }

  changeMembersNum(int? value) {
    state = state.copyWith(membersNum: value);
  }

  changeAgeGroup(AgeGroup? value) {
    state = state.copyWith(ageGroup: value);
  }

  changeAddress(Address value) {
    state = state.copyWith(address: value);
  }

  changeTags(List<Tag>? value) {
    state = state.copyWith(tags: value);
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
      address: state.address!,
      tagIds: state.tags,
      explanation: state.explanation!,
    );
  }

  Future<String?> update() async {
    return "";
  }
}
