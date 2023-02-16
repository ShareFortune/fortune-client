import 'package:fortune_client/data/model/core/base/address/address.dart';
import 'package:fortune_client/data/model/core/base/address_with_id/address_with_id.dart';
import 'package:fortune_client/data/model/core/base/tag/tag.dart';
import 'package:fortune_client/data/model/core/enum/age_group.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_room_state.freezed.dart';

@freezed
class CreateRoomState with _$CreateRoomState {
  const factory CreateRoomState({
    String? title,
    List<Tag>? tags,
    AddressWithId? addressWithId,
    int? membersNum,
    AgeGroup? ageGroup,
    String? explanation,
  }) = _CreateRoomState;
}
