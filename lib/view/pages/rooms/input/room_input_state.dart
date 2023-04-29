import 'package:fortune_client/data/model/addresses/address/address.dart';
import 'package:fortune_client/data/model/tags/tag/tag.dart';
import 'package:fortune_client/data/model/enum/age_group.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_input_state.freezed.dart';

@freezed
class RoomInputState with _$RoomInputState {
  const factory RoomInputState({
    String? title,
    List<Tag>? tags,
    Address? address,
    int? membersNum,
    AgeGroup? ageGroup,
    String? explanation,
  }) = _RoomInputState;
}
