import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:fortune_client/data/model/base/tag/tag.dart';
import 'package:fortune_client/data/repository/profile/profile_repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/account/my_page/my_page_state.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:fortune_client/view/routes/route_path.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final myPageViewModelProvider =
    StateNotifierProvider<MyPageViewModel, MyPageState>((_) {
  return MyPageViewModel(sl())..initialize();
});

class MyPageViewModel extends StateNotifier<MyPageState> {
  MyPageViewModel(this._repository)
      : super(const MyPageState(
          profile: AsyncLoading(),
        ));

  final ProfileRepository _repository;

  Future<void> initialize() async => await fetch();

  Future fetch() async {
    state = state.copyWith(
      profile: await AsyncValue.guard(() async {
        return await _repository.get();
      }),
    );
  }

  /// アイコン編集
  updateIcon(File file) async {
    _repository
        .updateProfileImages(mainImage: file)
        .whenComplete(() => fetch());
  }

  /// 設定ページへ
  navigateToSettingPage() {
    sl<AppRouter>().push(const SettingsRoute());
  }

  /// 自己紹介を編集
  navigateToEntrySelfIntroduction() async {
    final data = state.profile.value;
    if (data == null) return;

    /// 自己紹介取得
    final result = await sl<AppRouter>().push(
      EntryDescriptionRoute(
        title: LocaleKeys.myPage_profiles_selfIntroduction_editTitle.tr(),
        value: data.selfIntroduction,
      ),
    ) as String?;

    /// 更新
    if (result != null) {
      _repository.updateSelfIntroduction(result).whenComplete(() => fetch());
    }
  }

  /// タグを編集
  navigateToTagsSelection() async {
    final data = state.profile.value;
    if (data == null) return;

    /// タグ取得
    final result = await sl<AppRouter>().push(
      SelectTagsRoute(beingSet: data.tags ?? List.empty()),
    ) as List<Tag>?;

    /// 更新
    if (result != null) {
      _repository.updateTags(result).whenComplete(() => fetch());
    }
  }

  /// 基本情報を編集
  navigateToUpdateBasic() async {
    sl<AppRouter>()
        .push(const ProfileUpdateRoute())
        .whenComplete(() => fetch());
  }

  navigateToEditProfilePicture() async {
    sl<AppRouter>().push(
      const BottomSheetRouter(children: [EditProfilePicture()]),
    );
  }
}
