import 'package:fortune_client/view/pages/common/home/home_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homeViewModelProvider = StateNotifierProvider<HomeViewModel, HomeState>(
  (ref) => HomeViewModel(const HomeState()),
);

class HomeViewModel extends StateNotifier<HomeState> {
  HomeViewModel(super.state);

  /// PageIndexを更新する
  updatePageIndex(int index) => state = state.copyWith(pageIndex: index);
}
