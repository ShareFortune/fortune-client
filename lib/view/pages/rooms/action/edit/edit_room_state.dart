import 'package:fortune_client/data/model/address/address.dart';
import 'package:fortune_client/data/model/enum/age_group.dart';
import 'package:fortune_client/data/model/tag/tag.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_room_state.freezed.dart';

@freezed
class EditRoomState with _$EditRoomState {
  const factory EditRoomState({
    String? title,
    List<Tag>? tags,
    Address? address,
    int? membersNum,
    AgeGroup? ageGroup,
    String? explanation,
  }) = _EditRoomState;
}
