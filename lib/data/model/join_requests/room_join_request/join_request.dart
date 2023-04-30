import 'package:freezed_annotation/freezed_annotation.dart';

part 'join_request.freezed.dart';
part 'join_request.g.dart';

@freezed
class JoinRequest with _$JoinRequest {
  const factory JoinRequest({
    required String id,
    required String name,
    required String userId,
    required String userImageURL,
  }) = _JoinRequest;

  factory JoinRequest.fromJson(Map<String, dynamic> json) =>
      _$JoinRequestFromJson(json);
}
