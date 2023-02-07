import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fortune_client/gen/assets.gen.dart';
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
      appBar: const BackAppBar(title: "写真編集"),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("アイコン写真", style: theme.textTheme.h40.bold()),
            const Gap(10),
            Row(
              children: [
                const CircleAvatar(radius: 40),
                const Gap(20),
                SpeechBubble(
                  color: theme.appColors.primary,
                  nipLocation: NipLocation.LEFT,
                  child: Text(
                    "アイコン写真では、\nあなただとわかる写真を登録しましょう！",
                    style: theme.textTheme.h20
                        .paint(theme.appColors.onPrimary)
                        .bold(),
                  ),
                ),
              ],
            ),
            const Gap(50),
            Text("プロフィール写真", style: theme.textTheme.h40.bold()),
            const Gap(20),
            SpeechBubble(
              width: double.infinity,
              color: theme.appColors.primary,
              nipLocation: NipLocation.BOTTOM,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "自分の活動や趣味などの写真を登録して、\nお相手にあなたのことを知ってもらいましょう！",
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
                "追加",
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
