import '../../entities/const/types.dart';
import '../../entities/models/message.dart';
import '../core/usecase.dart';

abstract class MessageFetchAllUseCase
    implements UseCase<MessageFetchAllParams, MessageFetchAllResults> {}

class MessageFetchAllParams {
  final MessageRoomID id;

  MessageFetchAllParams({
    required this.id,
  });
}

class MessageFetchAllResults {
  final List<Message> Messages;

  MessageFetchAllResults({
    required this.Messages,
  });
}
