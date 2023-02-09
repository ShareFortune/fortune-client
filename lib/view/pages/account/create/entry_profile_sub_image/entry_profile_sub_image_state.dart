import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'entry_profile_sub_image_state.freezed.dart';

@freezed
class EntryProfileSubImageState with _$EntryProfileSubImageState {
  const factory EntryProfileSubImageState({
    File? firstImageFile,
    File? secondImageFile,
    File? thirdImageFile,
    File? fourthImageFile,
  }) = _EntryProfileSubImageState;
}
