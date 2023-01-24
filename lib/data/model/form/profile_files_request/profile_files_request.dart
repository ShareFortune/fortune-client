// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_files_request.freezed.dart';
part 'profile_files_request.g.dart';

///
/// プロフィール画像
@freezed
class ProfileFilesRequest with _$ProfileFilesRequest {
  factory ProfileFilesRequest({
    @JsonKey(name: 'mainImage') required String mainImage,
    @JsonKey(name: 'secondImage', nullable: true) String? secondImage,
    @JsonKey(name: 'thirdImage', nullable: true) String? thirdImage,
    @JsonKey(name: 'fourthImage', nullable: true) String? fourthImage,
    @JsonKey(name: 'fifthImage', nullable: true) String? fifthImage,
    @JsonKey(name: 'sixthImage', nullable: true) String? sixthImage,
  }) = _ProfileFilesRequest;

  factory ProfileFilesRequest.fromJson(Map<String, dynamic> json) =>
      _$ProfileFilesRequestFromJson(json);
}
