import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/common/scroll_app_bar/scroll_app_bar_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ScrollAppBar extends HookConsumerWidget implements PreferredSizeWidget {
  const ScrollAppBar({
    super.key,
    required this.title,
    this.hieght = 140,
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
      backgroundColor: theme.appColors.onBackground,
      expandedHeight: hieght,
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
                          Assets.images.icons.iconArrowDropDown.path,
                          fit: BoxFit.contain,
                          width: 20,
                          color: theme.appColors.iconBtn1,
                        ),
                    ],
                  ),
                ),
                InkWell(
                  // onTap: () => getIt<AppRouter>().push(const MyRoute()),
                  onTap: () {},
                  child: SvgPicture.asset(
                    Assets.images.icons.iconProfile.path,
                    fit: BoxFit.contain,
                    width: 24,
                    height: 24,
                  ),
                ),
              ],
            ),
            const Gap(15),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(hieght);
}
