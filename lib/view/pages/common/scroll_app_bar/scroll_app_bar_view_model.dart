import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/common/scroll_app_bar/scroll_app_bar_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final scrollAppBarViewModelProvider =
    StateNotifierProvider<ScrollAppBarViewModel, AsyncValue<ScrollAppBarState>>(
  (ref) => ScrollAppBarViewModel()..init(),
);

class ScrollAppBarViewModel
    extends StateNotifier<AsyncValue<ScrollAppBarState>> {
  ScrollAppBarViewModel() : super(const AsyncValue.loading());

  init() => fetch();

  fetch() async {
    state = await AsyncValue.guard(() async {
      await Future.delayed(const Duration(seconds: 5));
      return const ScrollAppBarState(
          image: NetworkImage(
        'https://firebasestorage.googleapis.com/v0/b/flutter-labo.appspot.com/o/setting%2Fflutterlabo_sns_image.png?alt=media&token=31f2e8aa-7dae-445e-b673-63286506d661',
      ));
    });
  }
}
