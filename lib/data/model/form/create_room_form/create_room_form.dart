// ignore_for_file: invalid_annotation_target

import 'package:fortune_client/data/model/enum/age_group.dart';
import 'package:fortune_client/data/model/tag/tag.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_room_form.freezed.dart';
part 'create_room_form.g.dart';

@freezed
class CreateRoomForm with _$CreateRoomForm {
  factory CreateRoomForm({
    /// タイトル
    @JsonKey(name: 'roomName') required String roomName,

    /// 締切
    @JsonKey(name: 'applicationDeadline') required String applicationDeadline,

    /// 募集人数
    @JsonKey(name: 'membersNum') required int membersNum,

    /// 募集年齢層
    @JsonKey(name: 'ageGroup') @AgeGroupConverter() required AgeGroup ageGroup,

    /// 開催場所
    /// TOTO: int => Adress
    /// APIできたら変更
    @JsonKey(name: 'addressId') required int addressId,

    /// タグ
    @JsonKey(name: 'tagIds') List<Tag>? tagIds,

    /// 説明
    @JsonKey(name: 'explanation') required String explanation,
  }) = _CreateRoomForm;

  factory CreateRoomForm.fromJson(Map<String, dynamic> json) =>
      _$CreateRoomFormFromJson(json);
}
