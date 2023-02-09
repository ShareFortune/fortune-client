import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/tags/create/components/create_tag_input_field.dart';
import 'package:fortune_client/view/pages/tags/create/create_tag_view_model.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:fortune_client/view/widgets/dialog/toast.dart';
import 'package:fortune_client/view/widgets/form_field/base_text_field.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CreateTagPage extends HookConsumerWidget {
  CreateTagPage({super.key});

  final tagNameController = TextEditingController();
  final tagDescriptionController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(createTagViewModelProvider);
    final viewModel = ref.watch(createTagViewModelProvider.notifier);

    ///
    /// タグネーム
    ///
    final nameWidget = CreateTagInputField(
      theme: theme,
      title: LocaleKeys.create_tag_page_name_title.tr(),
      content: BaseTextField(
        controller: tagNameController,
        maxLength: 20,
        onClear: () => viewModel.changeName(""),
        onChanged: (value) => viewModel.changeName(value),
        hintText: LocaleKeys.create_tag_page_name_hint.tr(),
      ),
    );

    ///
    /// 詳細説明
    ///
    final descriptionWidget = CreateTagInputField(
      theme: theme,
      required: false,
      title: LocaleKeys.create_tag_page_description_title.tr(),
      content: BaseTextField(
        controller: tagDescriptionController,
        maxLength: 50,
        minLines: 5,
        maxLines: 100,
        isDisplaySuffixIcon: false,
        onChanged: (value) => viewModel.changeDescription(value),
        hintText: LocaleKeys.create_tag_page_description_hint.tr(),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
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

  _showFailedToCreateToast(BuildContext context, AppTheme theme) {
    showErrorToast(context, theme, "タグを作成できませんでした。");
  }
}
