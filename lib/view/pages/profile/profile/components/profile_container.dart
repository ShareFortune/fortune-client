import 'package:flutter/material.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/circle_icon.dart';
import 'package:fortune_client/view/widgets/tag_widget.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileContainer extends HookConsumerWidget {
  const ProfileContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _title(theme),
          const Gap(10),
          const Divider(),
          _selfIntroduction(theme),
          const Divider(),
          _basicInfo(theme),
          const Divider(),
          _tags(theme),
        ],
      ),
    );
  }

  Widget _title(AppTheme theme) {
    return Row(
      children: [
        circleIcon(
          radius: 30.0,
          isMan: false,
          image: Assets.images.insta2.provider(),
        ),
        const Gap(30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "miho",
              style: theme.textTheme.h50.bold(),
            ),
            Text(
              "23歳・東京",
              style: theme.textTheme.h40,
            ),
          ],
        )
      ],
    );
  }

  Widget _selfIntroduction(AppTheme theme) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "自己紹介",
            style: theme.textTheme.h40.bold(),
          ),
          const Gap(30),
          Text(
            "素晴らしいインターネットサービスを創るためにはお客様の行動心理を深く深く理解する必要があると考えています。私達は、 お客様の行動心理を理解するための努力 を惜しみません。日本一お客様の行動心理を理解しているチームになること は私達の大切な目標の一つです。そのために私達が取り組んでいる様々なアプローチはとってもユニークなものでありそこで働くメンバーには多くの成長機会があります。顧客体験設計 を一緒に極めませんか？サービスの創り手としての次の成長ステージがwithにあることをお約束します。",
            style: theme.textTheme.h40,
          ),
        ],
      ),
    );
  }

  Widget _tags(AppTheme theme) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "設定されたタグ",
            style: theme.textTheme.h40.bold(),
          ),
          const Gap(30),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: const [
              TagWidget(value: "テスト"),
              TagWidget(value: "ゲーム"),
              TagWidget(value: "大学生"),
              TagWidget(value: "大学生"),
              TagWidget(value: "プログラミング"),
              TagWidget(value: "読書"),
              TagWidget(value: "映画"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _basicInfo(AppTheme theme) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "基本情報",
            style: theme.textTheme.h40.bold(),
          ),
          const Gap(30),
          _basicInfoItem(theme, "名前", "miho"),
          _basicInfoItem(theme, "身長", "177"),
          _basicInfoItem(theme, "職業", "看護師"),
          _basicInfoItem(theme, "居住地", "東京"),
          _basicInfoItem(theme, "出身地", "千葉"),
          _basicInfoItem(theme, "お酒", "時々飲む"),
          _basicInfoItem(theme, "タバコ", "吸わない"),
        ],
      ),
    );
  }

  Widget _basicInfoItem(AppTheme theme, String key, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              key,
              style: theme.textTheme.h40,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: theme.textTheme.h40.merge(
                TextStyle(color: theme.appColors.primary),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
