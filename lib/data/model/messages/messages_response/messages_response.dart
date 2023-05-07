import 'package:fortune_client/data/model/messages/message/message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'messages_response.freezed.dart';
part 'messages_response.g.dart';

@freezed
class MessageIdResponse with _$MessageIdResponse {
  const factory MessageIdResponse({
    required String id,
  }) = _MessageIdResponse;

  factory MessageIdResponse.fromJson(Map<String, dynamic> json) =>
      _$MessageIdResponseFromJson(json);
}

@freezed
class ImageMessageIdResponse with _$ImageMessageIdResponse {
  const factory ImageMessageIdResponse({
    required String id,
  }) = _ImageMessageIdResponse;

  factory ImageMessageIdResponse.fromJson(Map<String, dynamic> json) =>
      _$ImageMessageIdResponseFromJson(json);
}

@freezed
class MessagesResponse with _$MessagesResponse {
  const factory MessagesResponse({
    required String nextToken,
    required List<Message> messages,
  }) = _MessagesResponse;

  factory MessagesResponse.fromJson(Map<String, dynamic> json) =>
      _$MessagesResponseFromJson(json);
}
