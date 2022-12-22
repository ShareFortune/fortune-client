import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'basic_app_bar_state.freezed.dart';

@freezed
class BasicAppBarState with _$BasicAppBarState {
  const factory BasicAppBarState({
    required ImageProvider image,
  }) = _BasicAppBarState;
}
