import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/enum/age_group.dart';
import 'package:fortune_client/view/pages/rooms/create/components/room_creation_text_field.dart';
import 'package:fortune_client/view/pages/rooms/create/components/room_creation_selective_form.dart';
import 'package:fortune_client/view/pages/rooms/create/components/room_creation_transition_tile.dart';
import 'package:fortune_client/view/pages/rooms/create/room_creation_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:fortune_client/view/widgets/dialog/toast.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RoomCreationPage extends HookConsumerWidget {
  RoomCreationPage({super.key});

  final titleController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(roomCreationViewModelProvider);
    final viewModel = ref.watch(roomCreationViewModelProvider.notifier);

    ///
    /// タイトル
    ///
    final titleWidget = _inputFieldContainer(
      theme,
      title: "タイトル（必須）",
      explanation: "募集したいルームのタイトルです。",
      content: RoomCreationTextField(
        theme: theme,
        controller: titleController,
        hintText: "タイトルを入力する",
        clearCallBack: () => viewModel.changeTitle(""),
        onChanged: (value) => viewModel.changeTitle(value),
        onEditingComplete: () => FocusScope.of(context).unfocus(),
      ),
    );

    ///
    /// 募集人数
    ///
    final membersNumWidget = _inputFieldContainer(
      theme,
      title: "募集人数（必須）",
      explanation: "募集したい人数を設定して下さい。\n設定可能な人数は4名から10名です。",
      content: RoomCreationSelectiveForm(
        title: "募集人数を選択する",
        value: state.membersNum != null ? "${state.membersNum}人" : null,
        separator: "人",
        items: List.generate(7, (index) => "${index + 4}").toList(),
        onSelect: (value) {
          viewModel.changeMembersNum(int.parse(value));
        },
      ),
    );

    ///
    /// 対象年齢
    ///
    final ageGroupWidget = _inputFieldContainer(
      theme,
      title: "募集する年齢",
      explanation: "募集したい年齢を選択して下さい。\n未選択でも問題ありません。",
      content: RoomCreationSelectiveForm(
        title: "募集する年齢を選択する",
        value: state.ageGroup?.text,
        items: AgeGroup.values.map((e) => e.text).toList(),
        onSelect: (value) {
          viewModel.changeAgeGroup(
            AgeGroup.values.firstWhere((e) => e.text == value),
          );
        },
      ),
    );

    ///
    /// 場所
    ///
    final addressWidget = _inputFieldContainer(
      theme,
      title: "開催場所（必須）",
      explanation: "ルームを開催する場所を選択しましょう。",
      content: RoomCreationTransitionTile(
        title: "開催する場所を選択する",
        value: state.address?.text,
        onTap: () => viewModel.navigateToEntryAddress(),
      ),
    );

    ///
    /// タグ
    ///
    final tagsWidget = _inputFieldContainer(
      theme,
      title: "タグ",
      explanation: "関連するタグを設定しましょう。\nタグを設定すると参加してもらいやすくなります。",
      content: RoomCreationTransitionTile(
        title: "タグを選択する",
        value: state.tags?.map((e) => e.name).join("、"),
        onTap: () => viewModel.navigateToTagsSelection(),
      ),
    );

    ///
    /// 詳細説明
    ///
    final explanationWidget = _inputFieldContainer(
      theme,
      title: "説明",
      explanation: "作成するルームに関する説明を書きましょう",
      content: RoomCreationTransitionTile(
        title: "ルームの説明を入力しましょう",
        value: state.explanation,
        onTap: () => viewModel.navigateToEntryDescription(),
      ),
    );

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
                onPressed: viewModel.isPossibleToCreate()
                    ? () async {
                        if (!await viewModel.create()) {
                          _showFailedToCreateToast(context, theme);
                        }
                      }
                    : null,
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
                titleWidget,
                const Gap(30),
                membersNumWidget,
                const Gap(30),
                ageGroupWidget,
                const Gap(30),
                addressWidget,
                const Gap(30),
                tagsWidget,
                const Gap(30),
                explanationWidget,
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

  _showFailedToCreateToast(BuildContext context, AppTheme theme) {
    showErrorToast(context, theme, "ルームを作成できませんでした。");
  }
}
