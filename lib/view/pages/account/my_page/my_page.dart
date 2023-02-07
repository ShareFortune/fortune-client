import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/account/my_page/components/my_page_header.dart';
import 'package:fortune_client/view/pages/account/my_page/components/my_profile_basic_info_container.dart';
import 'package:fortune_client/view/pages/account/my_page/components/my_profile_self_introduction_container.dart';
import 'package:fortune_client/view/pages/account/my_page/components/my_profile_tags_container.dart';
import 'package:fortune_client/view/pages/account/my_page/my_page_view_model.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:fortune_client/view/widgets/other/loading_widget.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyPage extends HookConsumerWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(myPageViewModelProvider);
    final viewModel = ref.watch(myPageViewModelProvider.notifier);

    return Scaffold(
      backgroundColor: theme.appColors.onBackground,
      appBar: BackAppBar(
        title: LocaleKeys.myPage_title.tr(),
        action: [
          IconButton(
            onPressed: () => viewModel.navigateToSettingPage(),
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: state.profile.maybeWhen(
        orElse: () => loadingWidget(),
        data: (profile) {
          return SingleChildScrollView(
            child: Column(
              children: [
                const Gap(30),

                /// ヘッダー
                MyPageHeader(
                  theme: theme,
                  iconUrl: profile.mainImageURL,
                  name: profile.name,
                  age: 22,
                  gender: profile.gender,
                  // onSave: viewModel.updateIcon,
                  onSave: () => viewModel.navigateToEditProfilePicture(),
                ),
                const Gap(30),

                /// 広告
                Container(
                  color: Colors.blueGrey[100],
                  height: 120,
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: const Text("広告"),
                  ),
                ),

                /// 自己紹介
                MyProfileSelfIntroductionContainer(
                  theme: theme,
                  selfIntroduction: profile.selfIntroduction ?? "",
                  onTap: () => viewModel.navigateToEntrySelfIntroduction(),
                ),
                const Divider(height: 1),

                /// タグ
                MyProfileTagsContainer(
                  theme: theme,
                  tags: profile.tags ?? List.empty(),
                  onTap: () => viewModel.navigateToTagsSelection(),
                ),
                const Divider(height: 1),

                /// 基本情報
                MyProfileBasicInfoContainer(
                  theme: theme,
                  address: profile.address,
                  stature: profile.height,
                  drinkFrequency: profile.drinkFrequency,
                  cigaretteFrequency: profile.cigaretteFrequency,
                  onUpdate: () => viewModel.navigateToUpdateBasic(),
                ),
                const Gap(100),
              ],
            ),
          );
        },
      ),
    );
  }
}
