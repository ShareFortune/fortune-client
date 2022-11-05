import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/view/common/app_bar/app_bar_state.dart';

final fortuneAppBarViewmodelProvider = StateNotifierProvider<
    FortuneAppBarViewmodel, AsyncValue<FortuneAppBarState>>((ref) {
  return FortuneAppBarViewmodel(ref)..initialize();
});

class FortuneAppBarViewmodel
    extends StateNotifier<AsyncValue<FortuneAppBarState>> {
  FortuneAppBarViewmodel(this._ref)
      : super(const AsyncValue<FortuneAppBarState>.loading());

  final Ref _ref;

  initialize() async {
    state = await AsyncValue.guard(() => fetch());
  }

  Future<FortuneAppBarState> fetch() async {
    const iconPath =
        "https://gws-ug.jp/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png";
    return const FortuneAppBarState(myIcon: iconPath);
  }

  /// マイアカウントのアイコンボタンがプレスされた時の関数
  /// クリック時はマイアカウントページへ移動
  onPressedMyIconButton() {}

  /// マイアカウントのアイコンボタンがプレスされた時の関数
  /// クリック時はマイアカウントページへ移動
  onPressedAddButton() {}
}
