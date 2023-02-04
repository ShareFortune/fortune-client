import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/basic_app_bar.dart';
import 'package:fortune_client/view/pages/profile/create/entry_profile_icon_image/profile_icon_image_entry_view_model.dart';
import 'package:fortune_client/view/pages/profile/create/components/next_button.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileIconImageEntryPage extends HookConsumerWidget {
  const ProfileIconImageEntryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(profileIconImageEntryViewModelProvider);
    final viewModel =
        ref.watch(profileIconImageEntryViewModelProvider.notifier);

    return Scaffold(
      backgroundColor: theme.appColors.onBackground,
      appBar: BasicAppBar(
        title: LocaleKeys.profile_icon_image_entry_page_title.tr(),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.fromLTRB(60, 50, 60, 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  _iconImageInputField(
                    file: state.imageFile,
                    onTap: () async {
                      await viewModel.pickImage();
                    },
                  ),
                  const Gap(80),
                  Text(LocaleKeys.profile_icon_image_entry_page_guide.tr()),
                ],
              ),
              nextButton(
                state.imageFile != null,
                () => viewModel.onTapNextBtn(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _iconImageInputField({
    required File? file,
    required Function()? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          image: file != null
              ? DecorationImage(
                  image: Image.file(file, fit: BoxFit.cover).image,
                )
              : null,
          color: const Color(0xFFF5F5F5),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
