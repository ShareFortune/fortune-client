// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'members_num.freezed.dart';
part 'members_num.g.dart';

@freezed
class MembersNum with _$MembersNum {
  factory MembersNum({
    @JsonKey(name: "maxMenNum") required int maxMenNum,
    @JsonKey(name: "menNum") required int menNum,
    @JsonKey(name: "maxWomenNum") required int maxWomenNum,
    @JsonKey(name: "womenNum") required int womenNum,
  }) = _MembersNum;

  factory MembersNum.fromJson(Map<String, dynamic> json) =>
      _$MembersNumFromJson(json);
}
