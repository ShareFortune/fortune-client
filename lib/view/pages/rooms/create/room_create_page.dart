import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:gap/gap.dart';

class RoomCreatePage extends ConsumerWidget {
  const RoomCreatePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: theme.appColors.background,
        title: Text(
          "ルーム作成",
          style: theme.textTheme.h40
              .merge(TextStyle(color: theme.appColors.headline1))
              .bold(),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(30),

              /// タイトル
              _inputField(theme, "タイトル（必須）", 1, null),
              const Gap(30),

              /// 募集人数
              _inputFieldContainer(
                theme,
                title: "募集人数",
                explanation: "募集したい人数を設定して下さい。\n設定可能な人数は4名から10名です。",
                content: _inputField(
                  theme,
                  "募集人数（必須）",
                  1,
                  () {},
                ),
              ),
              const Gap(30),

              /// 対象年齢
              _inputFieldContainer(
                theme,
                title: "対象年齢",
                explanation: "募集したい年齢を選択して下さい。\n未選択でも問題ありません。",
                content: _inputField(
                  theme,
                  "年齢",
                  1,
                  () {},
                ),
              ),
              const Gap(30),

              /// 場所
              _inputField(theme, "場所（必須）", 1, null),
              const Gap(30),

              /// タグ
              _inputFieldContainer(
                theme,
                title: "対象年齢",
                explanation: "募集したい年齢を選択して下さい。\n未選択でも問題ありません。",
                content: _tagSelectionButton(theme),
              ),
              const Gap(30),

              /// 詳細説明
              _inputField(theme, "詳細説明", 10, null),
            ],
          ),
        ),
      ),
    );
  }

  Widget _inputFieldContainer(
    AppTheme theme, {
    required String title,
    required String explanation,
    required Widget content,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: theme.textTheme.h40,
        ),
        const Gap(5),

        /// 説明
        Text(
          explanation,
          style: theme.textTheme.h30.merge(
            TextStyle(color: theme.appColors.explanation),
          ),
        ),
        const Gap(15),

        /// インプットフィールド
        content,
      ],
    );
  }

  Widget _inputField(
    AppTheme theme,
    String hint,
    int maxLines,
    void Function()? onPressed,
  ) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        suffixIcon: onPressed != null
            ? IconButton(
                icon: const Icon(
                  size: 18,
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ),
                onPressed: onPressed,
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(
            width: 1,
            color: theme.appColors.textFieldBorderSide,
          ),
        ),
      ),
    );
  }

  Widget _tagSelectionButton(AppTheme theme) {
    return ElevatedButton.icon(
      icon: const Icon(
        Icons.add,
        color: Colors.white,
      ),
      label: const Text('タグを追加'),
      style: ElevatedButton.styleFrom(
        backgroundColor: theme.appColors.primary,
      ),
      onPressed: () {},
    );
  }
}
