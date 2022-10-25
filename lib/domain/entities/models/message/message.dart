import 'package:fortune_client/domain/entities/const/types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
  const factory Message({
    required MessageID id,
    required MessageRoomID messageRoomId,
    required UserID userId,
    required String text,
    required bool isDeleted,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
