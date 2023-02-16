// ignore_for_file: invalid_annotation_target

import 'package:fortune_client/data/model/core/enum/gender.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fortune_user.freezed.dart';
part 'fortune_user.g.dart';

@freezed
class FortuneUser with _$FortuneUser {
  const factory FortuneUser({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: "gender") @GenderConverter() required Gender gender,
    @JsonKey(name: 'mainImageURL') required String mainImageURL,
  }) = _FortuneUser;

  factory FortuneUser.fromJson(Map<String, dynamic> json) =>
      _$FortuneUserFromJson(json);
}
