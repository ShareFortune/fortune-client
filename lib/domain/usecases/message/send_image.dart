import '../core/usecase.dart';

abstract class MessageSendImageUseCase
    implements UseCase<MessageSendImageParams, MessageSendImageResults> {}

class MessageSendImageParams {
  final String filePath;

  MessageSendImageParams({
    required this.filePath,
  });
}

class MessageSendImageResults {}
