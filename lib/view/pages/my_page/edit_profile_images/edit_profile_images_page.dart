import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/data/model/enum/profile_images_type.dart';
import 'package:fortune_client/view/pages/my_page/edit_profile_images/components/edit_image_container.dart';
import 'package:fortune_client/view/pages/my_page/edit_profile_images/components/edit_image_controller.dart';
import 'package:fortune_client/view/pages/my_page/edit_profile_images/edit_profile_images_state.dart';
import 'package:fortune_client/view/pages/my_page/edit_profile_images/edit_profile_images_view_model.dart';
import 'package:fortune_client/view/routes/app_router.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:fortune_client/view/widgets/other/loading_widget.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:speech_bubble/speech_bubble.dart';

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
        action: [
          Container(
            padding: const EdgeInsets.only(right: 10),
            child: TextButton(
              onPressed: () {
                viewModel.navigateToProfile();
              },
              child: Text(
                "プレビュー",
                style: theme.textTheme.h30.bold(),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            _editIconContainer(
              theme,
              state,
              viewModel,
            ),
            const Gap(50),
            _editProfileImagesContainer(
              context,
              theme,
              state,
              viewModel,
            ),
          ],
        ),
      ),
    );
  }

  /// アイコン編集コンテナ
  _editIconContainer(
    AppTheme theme,
    AsyncValue<EditProfileImagesState> state,
    EditProfileImagesViewModel viewModel,
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
                return EditImageController(
                  theme: theme,
                  width: 80,
                  height: 80,
                  borderRadius: BorderRadius.circular(50),
                  data: data.image(ProfileImagesType.mainImage),
                  onChange: (file) {
                    viewModel.updateImage(
                      ProfileImagesType.mainImage,
                      file,
                    );
                  },
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
    BuildContext context,
    AppTheme theme,
    AsyncValue<EditProfileImagesState> state,
    EditProfileImagesViewModel viewModel,
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
            const spacing = 15.0;

            /// Padding分を引く
            final width = (MediaQuery.of(context).size.width - 40);

            return Container(
              alignment: Alignment.center,
              child: Wrap(
                spacing: spacing,
                runSpacing: spacing,
                children: ProfileImagesTypeEx.subImages.map((imageType) {
                  return EditImageContainer(
                    theme: theme,
                    data: data.image(imageType),
                    sideLength: (width - (spacing * 3)) / 3,
                    onChange: (file) async {
                      viewModel.updateImage(imageType, file);
                    },
                    onClear: () async => viewModel.updateImage(imageType, null),
                  );
                }).toList(),
              ),
            );
          },
        ),
      ],
    );
  }
}
