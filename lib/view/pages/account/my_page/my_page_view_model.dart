import 'package:fortune_client/data/repository/profile/profile_repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/account/my_page/my_page_state.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final myPageViewModelProvider =
    StateNotifierProvider<MyPageViewModel, AsyncValue<MyPageState>>((_) {
  return MyPageViewModel(sl())..initialize();
});

class MyPageViewModel extends StateNotifier<AsyncValue<MyPageState>> {
  MyPageViewModel(this._repository) : super(const AsyncLoading());

  final ProfileRepository _repository;

  Future<void> initialize() async => await fetch();

  Future fetch() async {
    state = await AsyncValue.guard(() async {
      final result = await _repository.get();
      return MyPageState.from(result);
    });
  }

  navigateToSettingPage() {
    sl<AppRouter>().push(const SettingsRoute());
  }
}
