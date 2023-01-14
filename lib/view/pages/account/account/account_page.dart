import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/account/account/account_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/tag_widget.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AccountPage extends HookConsumerWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(accountViewModelProvider);
    final viewModel = ref.watch(accountViewModelProvider.notifier);

    return Scaffold(
      appBar: _appBar(
        theme,
        () => viewModel.navigateToSettingPage(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Gap(30),
            _header(theme),
            const Gap(30),
            _adContainer(),
            _profileSelfIntroduction(theme),
            const Divider(height: 1),
            _profileTags(theme),
            const Divider(height: 1),
            _profileDetail(theme),
            const Gap(100),
          ],
        ),
      ),
    );
  }

  Widget _profileDetail(AppTheme theme) {
    return _profileContainer(
      theme,
      "プロフィール",
      Column(
        children: [
          _profileDetailItem(theme, "居住地", "東京都"),
          _profileDetailItem(theme, "身長", "177cm"),
          _profileDetailItem(theme, "職業", "東京都"),
          _profileDetailItem(theme, "お酒", "東京都"),
          _profileDetailItem(theme, "タバコ", "東京都"),
        ],
      ),
    );
  }

  Widget _profileDetailItem(AppTheme theme, String title, String value) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xFFF3F3F3), width: 1)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(color: Color(0xFF969696))),
          Row(
            children: [
              Text(value),
              const Gap(10),
              const Icon(
                size: 16,
                Icons.arrow_forward_ios,
                color: Color(0xFF969696),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _profileTags(AppTheme theme) {
    return _profileContainer(
      theme,
      "設定しているタグ",
      Wrap(
        spacing: 10,
        runSpacing: 10,
        children: List.generate(7, (index) {
          String buf = "";
          List.generate(index, (index) => buf += index.toString());
          return tagWidget("タグ$buf");
        }).toList(),
      ),
    );
  }

  Widget _profileSelfIntroduction(AppTheme theme) {
    return _profileContainer(
      theme,
      "自己紹介",
      Container(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: const Text(
          "自己紹介文を入力しましょう",
          style: TextStyle(color: Color(0xFF969696)),
        ),
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
          Text(title, style: theme.textTheme.h40.bold()),
          const Gap(15),
          Container(child: child),
        ],
      ),
    );
  }

  Widget _adContainer() {
    return Container(
      color: Colors.blueGrey[100],
      height: 150,
      padding: const EdgeInsets.all(20),
      child: Container(
        width: double.infinity,
        color: Colors.white,
        child: const Text("広告"),
      ),
    );
  }

  Widget _header(AppTheme theme) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          const CircleAvatar(radius: 45),
          const Gap(20),
          _headerTitle(theme)
        ],
      ),
    );
  }

  Widget _headerTitle(AppTheme theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Takahashi",
          style: theme.textTheme.h60.bold(),
        ),
        const Gap(5),
        Text(
          "22歳・女性",
          style: theme.textTheme.h40
              .merge(const TextStyle(color: Color(0xFF6C6C6C))),
        ),
      ],
    );
  }

  AppBar _appBar(AppTheme theme, Function() settingBtnOnTap) {
    const color = Colors.black;

    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Text(
        "アカウント",
        style: theme.textTheme.h60.bold().merge(const TextStyle(color: color)),
      ),
      leading: const BackButton(color: color),
      actions: [
        IconButton(
          onPressed: settingBtnOnTap,
          icon: const Icon(Icons.settings, size: 28, color: color),
        ),
      ],
    );
  }
}
