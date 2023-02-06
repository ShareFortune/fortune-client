import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_icon_image_entry_state.freezed.dart';

@freezed
class ProfileIconImageEntryState with _$ProfileIconImageEntryState {
  const factory ProfileIconImageEntryState({
    @Default(null) File? imageFile,
  }) = _ProfileIconImageEntryState;
}
