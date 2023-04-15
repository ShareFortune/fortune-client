import 'package:easy_localization/easy_localization.dart';
import 'package:fortune_client/data/model/core/base/tag/tag.dart';
import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/my_page/my_page/my_page_state.dart';
import 'package:fortune_client/view/routes/route_navigator.dart';
import 'package:fortune_client/view/routes/route_path.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final myPageViewModelProvider =
    StateNotifierProvider<MyPageViewModel, MyPageState>((_) {
  return MyPageViewModel(
    const MyPageState(profile: AsyncLoading()),
  )..initialize();
});

class MyPageViewModel extends StateNotifier<MyPageState> {
  MyPageViewModel(super.state);

  Future<void> initialize() async => await fetch();

  Future fetch() async {
    state = state.copyWith(
      profile: await AsyncValue.guard(() async {
        return await Repository.profile.get();
      }),
    );
  }

  /// 設定ページへ
  navigateToSettingPage() {
    routeNavigator.navigateTo(RoutePath.setting);
  }

  /// 自己紹介を編集
  navigateToEntrySelfIntroduction() async {
    final data = state.profile.value;
    if (data == null) return;

    /// 自己紹介取得
    // final result = await getIt<AppRouter>().push(
    //   EntryDescriptionRoute(
    //     title: LocaleKeys.myPage_profiles_selfIntroduction_editTitle.tr(),
    //     value: data.selfIntroduction,
    //   ),
    // ) as String?;

    /// 更新
    // if (result != null) {
    //   Repository.profile
    //       .updateSelfIntroduction(result)
    //       .whenComplete(() => fetch());
    // }
  }

  /// タグを編集
  navigateToTagsSelection() async {
    final data = state.profile.value;
    if (data == null) return;

    /// タグ取得
    // final result = await getIt<AppRouter>().push(
    //   SelectTagsRoute(beingSet: data.tags ?? List.empty()),
    // ) as List<Tag>?;

    // /// 更新
    // if (result != null) {
    //   Repository.profile.updateTags(result).whenComplete(() => fetch());
    // }
  }

  /// 基本情報を編集
  navigateToUpdateBasic() async {
    // getIt<AppRouter>()
    //     .push(const ProfileUpdateRoute())
    //     .whenComplete(() => fetch());
  }

  navigateToEditProfilePicture() async {
    // getIt<AppRouter>().push(
    //   const BottomSheetRouter(children: [EditProfilePicture()]),
    // );
  }
}
