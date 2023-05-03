import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/tags/input/tag_input_view_model.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:fortune_client/view/widgets/button/app_bar_action_button.dart';
import 'package:fortune_client/view/widgets/container/text_input_container.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TagInputPage extends HookConsumerWidget {
  const TagInputPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final viewModel = ref.watch(tagInputViewModelProvider.notifier);

    final nameController = useTextEditingController();
    final descriptionController = useTextEditingController();
    useListenable(nameController);
    useListenable(descriptionController);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: theme.appColors.onBackground,
        appBar: BackAppBar(
          title: LocaleKeys.create_tag_page_title.tr(),
          action: [
            AppBarActionButton.create(
              clickable: nameController.text.isNotEmpty,
              callback: () => viewModel.create(
                name: nameController.text,
                description: descriptionController.text,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(30),
                TextInputContainer.short(
                  title: LocaleKeys.create_tag_page_name_title.tr(),
                  controller: nameController,
                  hintText: LocaleKeys.create_tag_page_name_hint.tr(),
                ),
                const Gap(30),
                TextInputContainer.long(
                  required: false,
                  title: LocaleKeys.create_tag_page_description_title.tr(),
                  controller: descriptionController,
                  hintText: LocaleKeys.create_tag_page_description_hint.tr(),
                ),
                const Gap(30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
