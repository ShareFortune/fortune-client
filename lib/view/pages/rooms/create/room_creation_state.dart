import 'package:fortune_client/data/model/address/address.dart';
import 'package:fortune_client/data/model/enum/age_group.dart';
import 'package:fortune_client/data/model/tag/tag.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_creation_state.freezed.dart';

@freezed
class RoomCreationState with _$RoomCreationState {
  const factory RoomCreationState({
    String? title,
    List<Tag>? tags,
    Address? address,
    int? membersNum,
    AgeGroup? ageGroup,
    String? explanation,
  }) = _RoomCreationState;
}
