import 'package:fortune_client/view/core/view_model.dart';
import 'package:fortune_client/view/pages/common/home/home_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homeViewModelProvider = HomeViewModel(const HomeState()).provider();

class HomeViewModel extends BaseViewModel<HomeState> {
  HomeViewModel(super.state);

  /// PageIndexを更新する
  updatePageIndex(int index) => update(state.copyWith(pageIndex: index));

  @override
  StateNotifierProvider<HomeViewModel, HomeState> provider() {
    return StateNotifierProvider<HomeViewModel, HomeState>(
      (ref) => HomeViewModel(state),
    );
  }
}
