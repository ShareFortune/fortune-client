// ignore_for_file: invalid_annotation_target

import 'package:fortune_client/data/model/enum/gender.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'participating_user.freezed.dart';
part 'participating_user.g.dart';

@freezed
class ParticipatingUser with _$ParticipatingUser {
  const factory ParticipatingUser({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: "gender") @GenderConverter() required Gender gender,
    @JsonKey(name: 'mainImageURL') required String mainImageURL,
  }) = _ParticipatingUser;

  factory ParticipatingUser.fromJson(Map<String, dynamic> json) =>
      _$ParticipatingUserFromJson(json);
}
