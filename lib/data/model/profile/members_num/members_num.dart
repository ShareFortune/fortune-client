// ignore_for_file: invalid_annotation_target

import 'package:easy_localization/easy_localization.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'members_num.freezed.dart';
part 'members_num.g.dart';

@freezed
class MembersNum with _$MembersNum {
  const MembersNum._();
  factory MembersNum({
    @JsonKey(name: "maxMenNum") required int maxMenNum,
    @JsonKey(name: "menNum") required int menNum,
    @JsonKey(name: "maxWomenNum") required int maxWomenNum,
    @JsonKey(name: "womenNum") required int womenNum,
  }) = _MembersNum;

  /// 総参加人数
  String get textAll => LocaleKeys.data_room_membersNum_data_all.tr(
        args: [(maxMenNum + maxWomenNum).toString()],
      );

  /// 男性の参加人数
  String get textMen => LocaleKeys.data_room_membersNum_data_men.tr(
        args: [menNum.toString(), maxMenNum.toString()],
      );

  /// 女性の参加人数
  String get textWomen => LocaleKeys.data_room_membersNum_data_women.tr(
        args: [womenNum.toString(), maxWomenNum.toString()],
      );

  factory MembersNum.fromJson(Map<String, dynamic> json) =>
      _$MembersNumFromJson(json);
}
