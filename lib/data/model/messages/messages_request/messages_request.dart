import 'package:freezed_annotation/freezed_annotation.dart';

part 'messages_request.freezed.dart';
part 'messages_request.g.dart';

@freezed
class MessagesRequest with _$MessagesRequest {
  const factory MessagesRequest({
    required String text,
  }) = _MessagesRequest;

  factory MessagesRequest.fromJson(Map<String, dynamic> json) =>
      _$MessagesRequestFromJson(json);
}

@freezed
class ImageMessagesRequest with _$ImageMessagesRequest {
  const factory ImageMessagesRequest({
    required String file,
  }) = _ImageMessagesRequest;

  factory ImageMessagesRequest.fromJson(Map<String, dynamic> json) =>
      _$ImageMessagesRequestFromJson(json);
}
