// ignore_for_file: invalid_annotation_target

import 'package:fortune_client/data/model/core/base/message/message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_v1_message_rooms_id_messages.freezed.dart';
part 'get_v1_message_rooms_id_messages.g.dart';

@freezed
class GetV1MessageRoomsIdMessagesResponse
    with _$GetV1MessageRoomsIdMessagesResponse {
  const factory GetV1MessageRoomsIdMessagesResponse({
    @JsonKey(name: "nextToken") required String nextToken,
    @JsonKey(name: "messages") required List<Message> data,
  }) = _GetV1MessageRoomsIdMessagesResponse;

  factory GetV1MessageRoomsIdMessagesResponse.fromJson(
          Map<String, dynamic> json) =>
      _$GetV1MessageRoomsIdMessagesResponseFromJson(json);
}
