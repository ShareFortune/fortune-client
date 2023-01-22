// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag_create_request.freezed.dart';
part 'tag_create_request.g.dart';

@freezed
class TagCreateRequest with _$TagCreateRequest {
  const factory TagCreateRequest({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "explanation") required String explanation,
  }) = _CreateUserForm;

  factory TagCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$TagCreateRequestFromJson(json);
}
