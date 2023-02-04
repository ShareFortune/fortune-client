import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/tags/create/components/tag_creation_text_field.dart';
import 'package:fortune_client/view/pages/tags/create/components/tag_creation_transition_tile.dart';
import 'package:fortune_client/view/pages/tags/create/create_tag_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:fortune_client/view/widgets/dialog/toast.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CreateTagPage extends HookConsumerWidget {
  CreateTagPage({super.key});

  final tagNameController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(createTagViewModelProvider);
    final viewModel = ref.watch(createTagViewModelProvider.notifier);

    ///
    /// タグネーム
    ///
    final nameWidget = _inputFieldContainer(
      theme,
      title: LocaleKeys.create_tag_page_name_title.tr(),
      explanation: "作成するタグの名前を入力しましょう",
      content: TagCreationTextField(
        theme: theme,
        controller: tagNameController,
        hintText: LocaleKeys.create_tag_page_name_hint.tr(),
        clearCallBack: () => viewModel.changeName(""),
        onChanged: (value) => viewModel.changeName(value),
        onEditingComplete: () => FocusScope.of(context).unfocus(),
      ),
    );

    ///
    /// 詳細説明
    ///
    final descriptionWidget = _inputFieldContainer(
      theme,
      title: LocaleKeys.create_tag_page_description_title.tr(),
      explanation: "作成するタグに関する説明を書きましょう",
      content: state.description?.isNotEmpty == true
          ? descriptionContainer(
              theme: theme,
              description: state.description!,
              onTap: viewModel.navigateToEntryDescription,
            )
          : TagCreationTransitionTile(
              title: LocaleKeys.create_tag_page_description_hint.tr(),
              onTap: () => viewModel.navigateToEntryDescription(),
            ),
    );

    return Scaffold(
      backgroundColor: theme.appColors.onBackground,
      appBar: BackAppBar(
        title: LocaleKeys.create_tag_page_title.tr(),
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
              child: Text(LocaleKeys.create_tag_page_create.tr()),
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
              nameWidget,
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

  descriptionContainer({
    required AppTheme theme,
    required String description,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
        decoration: BoxDecoration(
          color: theme.appColors.textFieldBackground,
          border: Border(
            top: BorderSide(color: theme.appColors.border1, width: 1),
            bottom: BorderSide(color: theme.appColors.border1, width: 1),
          ),
        ),
        child: Text(
          description,
          style: theme.textTheme.h40,
        ),
      ),
    );
  }

  _showFailedToCreateToast(BuildContext context, AppTheme theme) {
    showErrorToast(context, theme, "タグを作成できませんでした。");
  }
}
