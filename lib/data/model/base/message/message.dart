// ignore_for_file: invalid_annotation_target

import 'package:fortune_client/data/model/base/message_from_user/message_from_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
  const factory Message({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "sentAt") required DateTime sendAt,
    @JsonKey(name: "text") required String text,
    @JsonKey(name: "messageIamageURL") required String? messageIamageURL,
    @JsonKey(name: "fromUser") required MessageFromUser fromUser,
    @JsonKey(name: "readCount") required int readCount,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
