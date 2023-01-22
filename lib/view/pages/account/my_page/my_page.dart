import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/tag/tag.dart';
import 'package:fortune_client/util/logger/logger.dart';
import 'package:fortune_client/view/pages/account/my_page/my_page_state.dart';
import 'package:fortune_client/view/pages/account/my_page/my_page_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:fortune_client/view/widgets/other/loading_widget.dart';
import 'package:fortune_client/view/widgets/other/tag_widget.dart';
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
    final profile = state.maybeWhen(
      data: (profile) => _profileView(theme, profile),
      orElse: () => loadingWidget(),
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
      body: SingleChildScrollView(child: profile),
    );
  }

  _profileView(AppTheme theme, MyPageState profile) {
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
    final selfIntroduction = _profileSelfIntroduction(
      theme,
      profile.selfIntroduction,
    );

    /// タグ
    final tags = _profileTags(theme, profile.tags);

    /// 詳細
    final detail = _profileDetail(
      theme,
      address: profile.adress,
      height: profile.height,
      drinkFrequency: profile.drinkFrequency,
      cigaretteFrequency: profile.cigaretteFrequency,
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
        detail,
        const Gap(100),
      ],
    );
  }

  Widget _profileDetail(
    AppTheme theme, {
    required String address,
    required int height,
    required String drinkFrequency,
    required String cigaretteFrequency,
  }) {
    return _profileContainer(
      theme,
      "プロフィール",
      Column(
        children: [
          _profileDetailItem(theme, "居住地", address),
          _profileDetailItem(theme, "身長", "${height}cm"),
          _profileDetailItem(theme, "お酒", drinkFrequency),
          _profileDetailItem(theme, "タバコ", cigaretteFrequency),
        ],
      ),
    );
  }

  Widget _profileDetailItem(AppTheme theme, String title, String value) {
    final titleTextColor = theme.appColors.subText2;
    final titleTextStyle = theme.textTheme.h30.paint(titleTextColor);

    final valueTextColor = theme.appColors.primary;
    final valueTextStyle = theme.textTheme.h30.paint(valueTextColor);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(color: theme.appColors.border2, width: 1)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: titleTextStyle),
          Text(value, style: valueTextStyle),
        ],
      ),
    );
  }

  Widget _profileTags(AppTheme theme, List<Tag> tags) {
    return _profileContainer(
      theme,
      "設定しているタグ",
      Wrap(
        spacing: 10,
        runSpacing: 10,
        children: tags.map((e) {
          return TagWidget(value: e.name);
        }).toList(),
      ),
    );
  }

  Widget _profileSelfIntroduction(AppTheme theme, String selfIntroduction) {
    /// テキスト
    Widget text;

    if (selfIntroduction.isEmpty) {
      text = Text(
        "自己紹介文を入力しましょう",
        style: theme.textTheme.h30.paint(theme.appColors.subText3),
      );
    } else {
      text = Text(
        selfIntroduction,
        style: theme.textTheme.h30.paint(theme.appColors.subText1),
      );
    }

    return _profileContainer(
      theme,
      "自己紹介",
      Container(
        padding:
            EdgeInsets.symmetric(vertical: selfIntroduction.isEmpty ? 30 : 10),
        child: text,
      ),
    );
  }

  Widget _profileContainer(AppTheme theme, String title, Widget child) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: theme.textTheme.h30.bold()),
          const Gap(15),
          Container(child: child),
        ],
      ),
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
