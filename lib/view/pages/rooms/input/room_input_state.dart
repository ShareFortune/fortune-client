import 'package:fortune_client/data/model/addresses/address/address.dart';
import 'package:fortune_client/data/model/tags/tag/tag.dart';
import 'package:fortune_client/data/model/enum/age_group.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_input_state.freezed.dart';

@freezed
class RoomInputState with _$RoomInputState {
  const factory RoomInputState({
    /// 部屋名
    required String? title,

    /// 部屋の説明
    required String? explanation,

    /// 年齢層
    required AgeGroup? ageGroup,

    /// 人数
    required int? membersNum,

    /// タグ
    required List<Tag>? tags,

    /// 場所
    required Address? address,
  }) = _RoomInputState;
}
