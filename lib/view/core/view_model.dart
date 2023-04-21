import 'package:hooks_riverpod/hooks_riverpod.dart';

class BaseViewModel<X> extends StateNotifier<X> {
  BaseViewModel(super.state);

  void childMethod() {}

  /// StateNotifierProviderを生成する
  StateNotifierProvider<BaseViewModel<X>, X> createProvider() {
    return StateNotifierProvider<BaseViewModel<X>, X>((ref) => this);
  }
}

/// parentMethodは使えない
final textViewModelProvider = TextViewModel().createProvider();

class TextViewModel extends BaseViewModel<String> {
  TextViewModel() : super('');

  void parentMethod() {}
}
