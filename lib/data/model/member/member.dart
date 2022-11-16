import 'package:fortune_client/data/model/enum/gender.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'member.freezed.dart';
part 'member.g.dart';

@freezed
class Member with _$Member {
  const factory Member({
    required String id,
    required String name,
    required Gender gender,
    required String mainImageUrl,
  }) = _Member;

  factory Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);
}
