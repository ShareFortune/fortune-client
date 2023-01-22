import 'package:flutter/material.dart';
import 'package:fortune_client/util/logger/logger.dart';
import 'package:fortune_client/view/pages/account/my_page/components/my_profile_basic_info_container.dart';
import 'package:fortune_client/view/pages/account/my_page/components/my_profile_self_introduction_container.dart';
import 'package:fortune_client/view/pages/account/my_page/components/my_profile_tags_container.dart';
import 'package:fortune_client/view/pages/account/my_page/my_page_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
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

    /// プロフィール
    final profileWidgetAsync = state.maybeWhen(
      orElse: () => loadingWidget(),
      data: (profile) {
        /// ヘッダー
        final header = _profileHeader(
          theme,
          image: profile.mainImageURL,
          name: profile.name,
          age: 22,
          gender: profile.gender,
        );

        /// 広告
        final ad = _adContainer();

        /// 自己紹介
        final selfIntroduction = MyProfileSelfIntroductionContainer(
          theme: theme,
          selfIntroduction: profile.selfIntroduction,
        );

        /// タグ
        final tags = MyProfileTagsContainer(theme: theme, tags: profile.tags);

        /// 基本情報
        final basicInfo = MyProfileBasicInfoContainer(
          theme: theme,
          address: profile.adress,
          stature: profile.height,
          drinkFrequency: profile.drinkFrequency,
          cigaretteFrequency: profile.cigaretteFrequency,
          onUpdate: () {},
        );

        return Column(
          children: [
            const Gap(30),
            header,
            const Gap(30),
            ad,
            selfIntroduction,
            const Divider(height: 1),
            tags,
            const Divider(height: 1),
            basicInfo,
            const Gap(100),
          ],
        );
      },
    );

    return Scaffold(
      backgroundColor: theme.appColors.onBackground,
      appBar: BackAppBar(
        title: "マイページ",
        action: [
          IconButton(
            onPressed: () => viewModel.navigateToSettingPage(),
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: SingleChildScrollView(child: profileWidgetAsync),
    );
  }

  Widget _adContainer() {
    return Container(
      color: Colors.blueGrey[100],
      height: 120,
      padding: const EdgeInsets.all(10),
      child: Container(
        width: double.infinity,
        color: Colors.white,
        child: const Text("広告"),
      ),
    );
  }

  Widget _profileHeader(
    AppTheme theme, {
    required String image,
    required String name,
    required int age,
    required String gender,
  }) {
    /// 名前
    final nameTextStyle = theme.textTheme.h50.bold();

    /// サブテキスト
    final subTitleColor = theme.appColors.subText3;
    final subTitleStyle = theme.textTheme.h30.paint(subTitleColor);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ClipOval(
            child: Image.network(
              image,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                logger.e(error);
                return const CircleAvatar(radius: 40);
              },
            ),
          ),
          const Gap(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: nameTextStyle),
              const Gap(5),
              Text("$age歳 $gender", style: subTitleStyle),
            ],
          ),
        ],
      ),
    );
  }
}
