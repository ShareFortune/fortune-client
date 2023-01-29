// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_v1_users.freezed.dart';
part 'post_v1_users.g.dart';

@freezed
class PostV1UsersRequest with _$PostV1UsersRequest {
  const factory PostV1UsersRequest({
    @JsonKey(name: "firebaseId") required String firebaseId,
    @JsonKey(name: "username") required String username,
    @JsonKey(name: "birthday") required String birthday,
  }) = _PostV1UsersRequest;

  factory PostV1UsersRequest.fromJson(Map<String, dynamic> json) =>
      _$PostV1UsersRequestFromJson(json);
}

@freezed
class PostV1UsersResponse with _$PostV1UsersResponse {
  const factory PostV1UsersResponse({
    @JsonKey(name: 'id') required String id,
  }) = _PostV1UsersResponse;

  factory PostV1UsersResponse.fromJson(Map<String, dynamic> json) =>
      _$PostV1UsersResponseFromJson(json);
}
