import 'package:flutter/material.dart';

import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/other/tag_widget.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RoomInfoContainer extends HookConsumerWidget {
  const RoomInfoContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// テキスト
          _explanation(theme),

          const Gap(50),

          /// タグ
          _tags(theme),

          const Gap(30),
          const Divider(),
          const Gap(30),

          /// 詳細
          _detailList(theme),
        ],
      ),
    );
  }

  Widget _explanation(AppTheme theme) {
    return Text(
      "テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキストテキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト",
      maxLines: null,
      style: theme.textTheme.h40,
    );
  }

  Widget _tags(AppTheme theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "設定されたタグ",
          style: theme.textTheme.h40.bold(),
        ),
        const Gap(15),
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
    );
  }

  _detailList(AppTheme theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _detail(theme, "開催場所", "東京都・横浜市"),
        const Gap(20),
        _detail(theme, "募集人数", "4人"),
        const Gap(20),
        _detail(theme, "禁止事項", "テキスト・テキスト・テキスト・テキスト・"),
      ],
    );
  }

  _detail(AppTheme theme, String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: theme.textTheme.h30.bold(),
        ),
        const Gap(5),
        Text(value),
      ],
    );
  }
}
