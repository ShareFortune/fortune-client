import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/view/routes/route_navigator.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ScrollAppBar extends HookConsumerWidget implements PreferredSizeWidget {
  const ScrollAppBar({
    super.key,
    required this.title,
    this.hieght = 120,
    this.onTapTitle,
  });

  final String title;
  final double hieght;
  final VoidCallback? onTapTitle;

  /// アイコンサイズ 半径
  final double iconSize = 12;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return SliverAppBar(
      floating: true,
      expandedHeight: hieght,
      backgroundColor: theme.appColors.onBackground,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: false,
        titlePadding: const EdgeInsets.symmetric(horizontal: 20),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: onTapTitle,
                  child: Row(
                    children: [
                      Text(
                        title,
                        style: theme.textTheme.h60
                            .paint(theme.appColors.subText1)
                            .bold(),
                      ),
                      if (onTapTitle != null)
                        SvgPicture.asset(
                          Assets.icons.iconArrowDropDown.path,
                          fit: BoxFit.contain,
                          width: 20,
                        ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => navigator.navigateTo(RoutePath.my),
                  child: SvgPicture.asset(
                    Assets.icons.iconProfile.path,
                    fit: BoxFit.contain,
                    width: 24,
                    height: 24,
                  ),
                ),
              ],
            ),
            const Gap(10),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(hieght);
}
