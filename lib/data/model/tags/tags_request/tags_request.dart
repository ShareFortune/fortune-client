import 'package:freezed_annotation/freezed_annotation.dart';

part 'tags_request.freezed.dart';
part 'tags_request.g.dart';

@freezed
class TagsRequest with _$TagsRequest {
  const factory TagsRequest({
    required String name,
    required String explanation,
  }) = _TagsRequest;

  factory TagsRequest.fromJson(Map<String, dynamic> json) =>
      _$TagsRequestFromJson(json);
}
