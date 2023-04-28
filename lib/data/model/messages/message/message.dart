import 'package:fortune_client/data/model/messages/message_from_user/message_from_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
  const factory Message({
    required String id,
    required DateTime sentAt,
    required String text,
    required String? messageIamageURL,
    required MessageFromUser fromUser,
    required int readCount,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
