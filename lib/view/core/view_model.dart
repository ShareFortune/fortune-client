import 'package:hooks_riverpod/hooks_riverpod.dart';

class BaseViewModel<X> extends StateNotifier<X> {
  BaseViewModel(super.state);

  void initialize() {}

  /// State更新
  void update(X state) => state = state;

  /// StateNotifierProviderを生成する
  StateNotifierProvider<BaseViewModel, X> provider() {
    return StateNotifierProvider<BaseViewModel<X>, X>(
      (ref) => BaseViewModel(state),
    );
  }
}
