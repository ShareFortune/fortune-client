import 'package:freezed_annotation/freezed_annotation.dart';

part 'join_requests_response.freezed.dart';
part 'join_requests_response.g.dart';

@freezed
class JoinRequestIdResponse with _$JoinRequestIdResponse {
  const factory JoinRequestIdResponse({
    required String id,
  }) = _JoinRequestIdResponse;

  factory JoinRequestIdResponse.fromJson(Map<String, dynamic> json) =>
      _$JoinRequestIdResponseFromJson(json);
}

@freezed
class JoinRequestsResponse with _$JoinRequestsResponse {
  const factory JoinRequestsResponse({
    required String nextToken,
    required List<RoomJoinRequest> joinRequests,
  }) = _JoinRequestsResponse;

  factory JoinRequestsResponse.fromJson(Map<String, dynamic> json) =>
      _$JoinRequestsResponseFromJson(json);
}

@freezed
class RoomJoinRequest with _$RoomJoinRequest {
  const factory RoomJoinRequest({
    required String id,
    required String name,
    required String userId,
    required String userImageURL,
  }) = _RoomJoinRequest;

  factory RoomJoinRequest.fromJson(Map<String, dynamic> json) =>
      _$RoomJoinRequestFromJson(json);
}
