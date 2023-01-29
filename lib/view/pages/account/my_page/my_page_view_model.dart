import 'package:fortune_client/data/model/base/tag/tag.dart';
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

  navigateToEntrySelfIntroduction() async {
    final data = state.value;
    if (data == null) return;

    /// 自己紹介取得
    final result = await sl<AppRouter>().push(
      EntryDescriptionRoute(title: "自己紹介", value: data.selfIntroduction),
    ) as String?;

    /// 更新
    if (result != null) _repository.updateSelfIntroduction(result);

    /// ステータス更新
    state = await AsyncValue.guard(() async {
      return data.copyWith(selfIntroduction: result ?? data.selfIntroduction);
    });
  }

  navigateToTagsSelection() async {
    final data = state.value;
    if (data == null) return;

    /// タグ取得
    final result = await sl<AppRouter>().push(
      TagsSelectionRoute(beingSet: data.tags ?? List.empty()),
    ) as List<Tag>?;

    /// 更新
    if (result != null) _repository.updateTags(result);

    /// ステータス更新
    state = await AsyncValue.guard(() async {
      return data.copyWith(tags: result ?? data.tags);
    });
  }

  navigateToUpdateBasic() async {
    sl<AppRouter>().push(const ProfileUpdateRoute()).whenComplete(() async {
      state = await AsyncValue.guard(() async {
        final result = _repository.getCache();
        return MyPageState.from(result);
      });
    });
  }
}
