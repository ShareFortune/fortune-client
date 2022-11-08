import '../../entities/models/message_room/message_room.dart';
import '../../../core/usecases/usecase.dart';

abstract class MessageMessageRoomFetchAllUseCase
    implements UseCase<MessageRoomFetchAllResults, MessageRoomFetchAllParams> {}

class MessageRoomFetchAllParams {}

class MessageRoomFetchAllResults {
  final List<MessageRoom> messageRooms;

  MessageRoomFetchAllResults({
    required this.messageRooms,
  });
}
