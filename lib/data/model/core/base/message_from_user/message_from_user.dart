// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_from_user.freezed.dart';
part 'message_from_user.g.dart';

@freezed
class MessageFromUser with _$MessageFromUser {
  const factory MessageFromUser({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "mainImageURL") required String mainImageURL,
  }) = _MessageFromUser;

  factory MessageFromUser.fromJson(Map<String, dynamic> json) =>
      _$MessageFromUserFromJson(json);
}
