import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'scroll_app_bar_state.freezed.dart';

@freezed
class ScrollAppBarState with _$ScrollAppBarState {
  const factory ScrollAppBarState({
    required ImageProvider image,
  }) = _ScrollAppBarState;
}
