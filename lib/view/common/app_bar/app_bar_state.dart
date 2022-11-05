import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_bar_state.freezed.dart';

@freezed
class FortuneAppBarState with _$FortuneAppBarState {
  const factory FortuneAppBarState({
    required String myIcon,
  }) = _FortuneAppBarState;
}
