// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'join_requests.freezed.dart';
part 'join_requests.g.dart';

@freezed
class JoinRequests with _$JoinRequests {
  const factory JoinRequests({
    @JsonKey(name: 'nextToken') required String nextToken,
    @JsonKey(name: 'joinRequests') required List<JoinRequest> joinRequests,
  }) = _JoinRequests;

  factory JoinRequests.fromJson(Map<String, dynamic> json) =>
      _$JoinRequestsFromJson(json);
}

@freezed
class JoinRequest with _$JoinRequest {
  const factory JoinRequest({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'userId') required String userId,
    @JsonKey(name: 'userImageUrl') required String userImageUrl,
  }) = _JoinRequest;

  factory JoinRequest.fromJson(Map<String, dynamic> json) =>
      _$JoinRequestFromJson(json);
}
