import '../const/types.dart';

class Message {
  final MessageID id;
  final MessageRoomID messageRoomId;
  final UserID userId;
  final String text;
  final bool isDeleted;

  Message({
    required this.id,
    required this.messageRoomId,
    required this.userId,
    required this.text,
    required this.isDeleted,
  });
}
