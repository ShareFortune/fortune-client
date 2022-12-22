import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'entry_profile_sub_image_state.freezed.dart';

@freezed
class EntryProfileSubImageState with _$EntryProfileSubImageState {
  const factory EntryProfileSubImageState({
    @Default(null) File? firstImageFile,
    @Default(null) File? secondImageFile,
    @Default(null) File? thirdImageFile,
    @Default(null) File? fourthImageFile,
  }) = _EntryProfileSubImageState;
}
