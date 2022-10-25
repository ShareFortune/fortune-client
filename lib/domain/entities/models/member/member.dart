import 'package:fortune_client/domain/entities/enum/gender.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// class Member {
//   final String id;
//   final String name;
//   final Gender gender;
//   final String mainImageUrl;

//   Member({
//     required this.id,
//     required this.name,
//     required this.gender,
//     required this.mainImageUrl,
//   });
// }
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
