import '../../entities/const/types.dart';
import '../../entities/models/message/message.dart';
import '../core/usecases/usecase.dart';

abstract class MessageFetchAllUseCase
    implements UseCase<MessageFetchAllParams, MessageFetchAllResults> {}

class MessageFetchAllParams {
  final MessageRoomID id;

  MessageFetchAllParams({
    required this.id,
  });
}

class MessageFetchAllResults {
  final List<Message> messages;

  MessageFetchAllResults({
    required this.messages,
  });
}
