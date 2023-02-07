import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/routes/app_router.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:speech_bubble/speech_bubble.dart';
import 'package:dotted_border/dotted_border.dart';

class EditProfilePicturePage extends HookConsumerWidget {
  const EditProfilePicturePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              LocaleKeys.edit_profile_picture_page_icon_title.tr(),
              style: theme.textTheme.h40.bold(),
            ),
            const Gap(10),
            Row(
              children: [
                const CircleAvatar(radius: 40),
                const Gap(20),
                SpeechBubble(
                  color: theme.appColors.primary,
                  nipLocation: NipLocation.LEFT,
                  child: Text(
                    LocaleKeys.edit_profile_picture_page_icon_guide.tr(),
                    style: theme.textTheme.h20
                        .paint(theme.appColors.onPrimary)
                        .bold(),
                  ),
                ),
              ],
            ),
            const Gap(50),
            Text(
              LocaleKeys.edit_profile_picture_page_profile_title.tr(),
              style: theme.textTheme.h40.bold(),
            ),
            const Gap(20),
            SpeechBubble(
              width: double.infinity,
              color: theme.appColors.primary,
              nipLocation: NipLocation.BOTTOM,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    LocaleKeys.edit_profile_picture_page_profile_guide.tr(),
                    style: theme.textTheme.h20
                        .paint(theme.appColors.onPrimary)
                        .bold(),
                  ),
                ],
              ),
            ),
            const Gap(20),
            Container(
              alignment: Alignment.center,
              child: Wrap(
                spacing: 15,
                runSpacing: 15,
                children: [
                  imageInputField(theme),
                  imageInputField(theme),
                  imageInputField(theme),
                  imageInputField(theme),
                  imageInputField(theme),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  imageInputField(AppTheme theme) {
    return InkWell(
      onTap: () {},
      child: DottedBorder(
        color: theme.appColors.border1,
        borderType: BorderType.RRect,
        radius: const Radius.circular(10),
        child: SizedBox(
          width: 110,
          height: 110,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Assets.images.icons.iconCamera.path,
                fit: BoxFit.contain,
              ),
              const Gap(5),
              Text(
                LocaleKeys.edit_profile_picture_page_add.tr(),
                style:
                    theme.textTheme.h20.paint(theme.appColors.subText3).bold(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
