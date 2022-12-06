// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'fortune_user.freezed.dart';
part 'fortune_user.g.dart';

@freezed
class FortuneUser with _$FortuneUser {
  const factory FortuneUser({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'gender') required String gender,
    @JsonKey(name: 'mainImageURL') required String mainImageURL,
    @JsonKey(name: 'name') required String name,
  }) = _FortuneUser;

  factory FortuneUser.fromJson(Map<String, dynamic> json) =>
      _$FortuneUserFromJson(json);
}
