import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/tags/create/components/tag_creation_text_field.dart';
import 'package:fortune_client/view/pages/tags/create/components/tag_creation_transition_tile.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TagCreationPage extends HookConsumerWidget {
  TagCreationPage({super.key});

  final tagNameController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    ///
    /// タグネーム
    ///
    final titleWidget = _inputFieldContainer(
      theme,
      title: "タグの名前",
      explanation: "作成するタグの名前を入力しましょう",
      content: TagCreationTextField(
        theme: theme,
        controller: tagNameController,
        hintText: "タイトルを入力する",
        clearCallBack: () {},
        onChanged: (value) {},
        onEditingComplete: () => FocusScope.of(context).unfocus(),
      ),
    );

    ///
    /// 詳細説明
    ///
    final descriptionWidget = _inputFieldContainer(
      theme,
      title: "説明",
      explanation: "作成するタグに関する説明を書きましょう",
      content: descriptionContainer(
          theme, "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト"),
    );
    // final descriptionWidget = _inputFieldContainer(
    //   theme,
    //   title: "説明",
    //   explanation: "作成するタグに関する説明を書きましょう",
    //   content: TagCreationTransitionTile(
    //     title: "タグの説明を入力しましょう",
    //     value: null,
    //     onTap: () {},
    //   ),
    // );

    return Scaffold(
      backgroundColor: theme.appColors.onBackground,
      appBar: BackAppBar(
        title: "新しいタグを作る",
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
              titleWidget,
              const Gap(30),
              descriptionWidget,
              const Gap(30),
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

  descriptionContainer(AppTheme theme, String description) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: theme.appColors.border2, width: 1),
          bottom: BorderSide(color: theme.appColors.border2, width: 1),
        ),
      ),
      child: Text(
        description,
        style: theme.textTheme.h40,
      ),
    );
  }
}
