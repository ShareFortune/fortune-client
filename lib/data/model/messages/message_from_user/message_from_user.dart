import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_from_user.freezed.dart';
part 'message_from_user.g.dart';

@freezed
class MessageFromUser with _$MessageFromUser {
  const factory MessageFromUser({
    required String id,
    required String name,
    required String mainImageURL,
  }) = _MessageFromUser;

  factory MessageFromUser.fromJson(Map<String, dynamic> json) =>
      _$MessageFromUserFromJson(json);
}
