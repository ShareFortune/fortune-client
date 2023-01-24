// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'join_requests.freezed.dart';
part 'join_requests.g.dart';

@freezed
class JoinRequestsResponse with _$JoinRequestsResponse {
  const factory JoinRequestsResponse({
    @JsonKey(name: 'nextToken') required String nextToken,
    @JsonKey(name: 'joinRequests') required List<JoinRequest> joinRequests,
  }) = _JoinRequestsResponse;

  factory JoinRequestsResponse.fromJson(Map<String, dynamic> json) =>
      _$JoinRequestsResponseFromJson(json);
}

@freezed
class JoinRequest with _$JoinRequest {
  const factory JoinRequest({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'userId') required String userId,
    @JsonKey(name: 'userImageURL') required String userImageUrl,
  }) = _JoinRequest;

  factory JoinRequest.fromJson(Map<String, dynamic> json) =>
      _$JoinRequestFromJson(json);
}
