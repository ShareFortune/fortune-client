import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EmptyImageContainer extends HookConsumerWidget {
  const EmptyImageContainer({
    super.key,
    required this.onTap,
    this.imageSize = 100,
  });

  final double imageSize;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return InkWell(
      onTap: onTap,
      child: DottedBorder(
        color: theme.appColors.border1,
        borderType: BorderType.RRect,
        radius: const Radius.circular(10),
        child: SizedBox(
          height: imageSize,
          width: imageSize,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Assets.icons.iconCamera.path,
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
