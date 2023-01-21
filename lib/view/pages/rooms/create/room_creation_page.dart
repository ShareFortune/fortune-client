import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/rooms/create/components/room_creation_text_field.dart';
import 'package:fortune_client/view/pages/rooms/create/components/room_creation_selective_form.dart';
import 'package:fortune_client/view/pages/rooms/create/components/room_creation_transition_tile.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:fortune_client/view/widgets/form_field/base_transition_tile.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RoomCreationPage extends HookConsumerWidget {
  const RoomCreationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: theme.appColors.onBackground,
        appBar: BackAppBar(
          title: "新しいルームを作る",
          action: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("作成"),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(30),

                /// タイトル
                _inputFieldContainer(
                  theme,
                  title: "タイトル（必須）",
                  explanation: "募集したいルームのタイトルです。",
                  content: RoomCreationTextField(
                    theme: theme,
                    controller: TextEditingController(),
                    hintText: "タイトルを入力する",
                    clearCallBack: () {},
                    onChanged: (p0) {},
                    onEditingComplete: () {},
                  ),
                ),
                const Gap(30),

                /// 募集人数
                _inputFieldContainer(
                  theme,
                  title: "募集人数（必須）",
                  explanation: "募集したい人数を設定して下さい。\n設定可能な人数は4名から10名です。",
                  content: RoomCreationSelectiveForm(
                    title: "募集人数を選択する",
                    value: null,
                    items: List.generate(100, (index) => "${index + 100}")
                        .toList(),
                    onSelect: (value) {},
                  ),
                ),
                const Gap(30),

                /// 対象年齢
                _inputFieldContainer(
                  theme,
                  title: "募集する年齢",
                  explanation: "募集したい年齢を選択して下さい。\n未選択でも問題ありません。",
                  content: RoomCreationSelectiveForm(
                    title: "募集する年齢を選択する",
                    value: null,
                    items: List.generate(100, (index) => "${index + 100}")
                        .toList(),
                    onSelect: (value) {},
                  ),
                ),
                const Gap(30),

                /// 場所
                _inputFieldContainer(
                  theme,
                  title: "開催場所（必須）",
                  explanation: "ルームを開催する場所を選択しましょう。",
                  content: BaseTransitionTile(
                    title: "開催する場所を選択する",
                    value: null,
                    textWhenUnsetStyle: theme.textTheme.h30.paint(
                      theme.appColors.subText3,
                    ),
                    onTap: () {},
                  ),
                ),
                const Gap(30),

                /// タグ
                _inputFieldContainer(
                  theme,
                  title: "タグ",
                  explanation: "関連するタグを設定しましょう。\nタグを設定すると参加してもらいやすくなります。",
                  content: RoomCreationTransitionTile(
                    title: "タグを選択する",
                    value: null,
                    onTap: () {},
                  ),
                ),

                const Gap(30),

                /// 詳細説明
                _inputFieldContainer(
                  theme,
                  title: "説明",
                  explanation: "作成するルームに関する説明を書きましょう",
                  content: RoomCreationTransitionTile(
                    title: "ルームの説明を入力しましょう",
                    value: null,
                    onTap: () {},
                  ),
                ),
                const Gap(150),
              ],
            ),
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
        Text(title, style: theme.textTheme.h40),
        const Gap(5),
        Text(
          explanation,
          style: theme.textTheme.h30.paint(theme.appColors.subText1),
        ),
        const Gap(15),
        content,
      ],
    );
  }
}
