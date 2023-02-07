import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/account/edit_profile_images/components/edit_image_container.dart';
import 'package:fortune_client/view/pages/account/edit_profile_images/edit_profile_images_state.dart';
import 'package:fortune_client/view/pages/account/edit_profile_images/edit_profile_images_view_model.dart';
import 'package:fortune_client/view/routes/app_router.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:fortune_client/view/widgets/other/loading_widget.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:speech_bubble/speech_bubble.dart';
import 'package:dotted_border/dotted_border.dart';

class EditProfileImagesPage extends HookConsumerWidget {
  const EditProfileImagesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(editProfilePictureViewModelProvider);
    final viewModel = ref.watch(editProfilePictureViewModelProvider.notifier);

    return Scaffold(
      backgroundColor: theme.appColors.onBackground,
      appBar: BackAppBar(
        title: LocaleKeys.edit_profile_picture_page_title.tr(),
        leading: IconButton(
          onPressed: sl<AppRouter>().pop,
          icon: const Icon(Icons.close),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            _editIconContainer(theme, state),
            const Gap(50),
            _editProfileImagesContainer(theme, state),
          ],
        ),
      ),
    );
  }

  /// アイコン編集コンテナ
  _editIconContainer(
    AppTheme theme,
    AsyncValue<EditProfileImagesState> state,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LocaleKeys.edit_profile_picture_page_icon_title.tr(),
          style: theme.textTheme.h40.bold(),
        ),
        const Gap(10),
        Row(
          children: [
            state.maybeWhen(
              orElse: () => const CircleAvatar(radius: 40),
              data: (data) {
                return EditImageContainer(
                  theme: theme,
                  width: 80,
                  height: 80,
                  borderRadius: BorderRadius.circular(50),
                  data: data.mainImage,
                  onChange: (p0) {},
                );
              },
            ),
            const Gap(20),
            SpeechBubble(
              color: theme.appColors.primary,
              nipLocation: NipLocation.LEFT,
              child: Text(
                LocaleKeys.edit_profile_picture_page_icon_guide.tr(),
                style: theme.textTheme.h20.bold().paint(
                      theme.appColors.onPrimary,
                    ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  /// プロフィール画像編集コンテナ
  _editProfileImagesContainer(
    AppTheme theme,
    AsyncValue<EditProfileImagesState> state,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LocaleKeys.edit_profile_picture_page_profile_title.tr(),
          style: theme.textTheme.h40.bold(),
        ),
        const Gap(10),
        SpeechBubble(
          width: double.infinity,
          color: theme.appColors.primary,
          nipLocation: NipLocation.BOTTOM,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              LocaleKeys.edit_profile_picture_page_profile_guide.tr(),
              style: theme.textTheme.h20.bold().paint(
                    theme.appColors.onPrimary,
                  ),
            ),
          ),
        ),
        const Gap(20),
        state.maybeWhen(
          orElse: () => loadingWidget(),
          data: (data) {
            return Container(
              alignment: Alignment.center,
              child: Wrap(
                spacing: 15,
                runSpacing: 15,
                children: [
                  profileImageInputField(theme, data.secondImage),
                  profileImageInputField(theme, data.thirdImage),
                  profileImageInputField(theme, data.fourthImage),
                  profileImageInputField(theme, data.fifthImage),
                  profileImageInputField(theme, data.sixthImage),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  /// プロフィール画像入力フィールド
  profileImageInputField(AppTheme theme, EditProfileImagesStateItem data) {
    return InkWell(
      onTap: () {},
      child: DottedBorder(
        color: theme.appColors.border1,
        borderType: BorderType.RRect,
        radius: const Radius.circular(10),
        child: EditImageContainer(
          theme: theme,
          width: 110,
          height: 110,
          borderRadius: BorderRadius.circular(10),
          data: data,
          onChange: (p0) {},
        ),
      ),
    );
  }
}
