// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'profiles_files.freezed.dart';
part 'profiles_files.g.dart';

@freezed
class ProfilesFiles with _$ProfilesFiles {
  factory ProfilesFiles({
    @JsonKey(name: 'mainImage') required String mainImage,
    @JsonKey(name: 'secondImage', nullable: true) String? secondImage,
    @JsonKey(name: 'thirdImage', nullable: true) String? thirdImage,
    @JsonKey(name: 'fourthImage', nullable: true) String? fourthImage,
    @JsonKey(name: 'fifthImage', nullable: true) String? fifthImage,
    @JsonKey(name: 'sixthImage', nullable: true) String? sixthImage,
  }) = _ProfilesFiles;

  factory ProfilesFiles.fromJson(Map<String, dynamic> json) =>
      _$ProfilesFilesFromJson(json);
}
