import '../core/usecase.dart';

abstract class MessageSendTextUseCase
    implements UseCase<MessageSendTextParams, MessageSendTextResults> {}

class MessageSendTextParams {
  final String text;

  MessageSendTextParams({
    required this.text,
  });
}

class MessageSendTextResults {}
