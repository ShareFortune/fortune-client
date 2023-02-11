import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/base/address_with_id/address_with_id.dart';
import 'package:fortune_client/data/model/base/tag/tag.dart';
import 'package:fortune_client/data/model/enum/age_group.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_room_state.freezed.dart';

@freezed
class EditRoomState with _$EditRoomState {
  const factory EditRoomState({
    List<Tag>? tags,
    AddressWithId? addressWithId,
    int? membersNum,
    AgeGroup? ageGroup,
    required TextEditingController titleController,
    required TextEditingController explanationController,
  }) = _EditRoomState;
}
