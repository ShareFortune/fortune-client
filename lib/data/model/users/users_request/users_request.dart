import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_request.freezed.dart';
part 'users_request.g.dart';

@freezed
class UsersCreateRequest with _$UsersCreateRequest {
  const factory UsersCreateRequest({
    required String firebaseId,
    required String username,
    required String birthday,
  }) = _UsersCreateRequest;

  factory UsersCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$UsersCreateRequestFromJson(json);
}

@freezed
class PostV1UsersResponse with _$PostV1UsersResponse {
  const factory PostV1UsersResponse({
    required String id,
  }) = _PostV1UsersResponse;

  factory PostV1UsersResponse.fromJson(Map<String, dynamic> json) =>
      _$PostV1UsersResponseFromJson(json);
}
