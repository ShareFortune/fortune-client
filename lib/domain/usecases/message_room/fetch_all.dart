import '../../entities/models/message_room/message_room.dart';
import '../core/usecase.dart';

abstract class MessageMessageRoomFetchAllUseCase
    implements UseCase<MessageRoomFetchAllParams, MessageRoomFetchAllResults> {}

class MessageRoomFetchAllParams {}

class MessageRoomFetchAllResults {
  final List<MessageRoom> messageRooms;

  MessageRoomFetchAllResults({
    required this.messageRooms,
  });
}
