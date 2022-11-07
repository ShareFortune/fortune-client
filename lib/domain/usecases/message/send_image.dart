import '../core/usecases/usecase.dart';

abstract class MessageSendImageUseCase
    implements UseCase<MessageSendImageResults, MessageSendImageParams> {}

class MessageSendImageParams {
  final String filePath;

  MessageSendImageParams({
    required this.filePath,
  });
}

class MessageSendImageResults {}
