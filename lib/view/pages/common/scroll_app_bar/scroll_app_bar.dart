import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/common/scroll_app_bar/scroll_app_bar_view_model.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ScrollAppBar extends HookConsumerWidget implements PreferredSizeWidget {
  const ScrollAppBar({
    super.key,
    required this.title,
    this.isBorder = true,
    this.hieght = 140,
  });

  final String title;
  final double hieght;
  final bool isBorder;

  /// アイコンサイズ 半径
  final double iconSize = 12;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(scrollAppBarViewModelProvider);

    /// タイトル
    final titleTextStyle =
        theme.textTheme.h60.paint(theme.appColors.subText1).bold();
    Widget titleWidget = Text(title, style: titleTextStyle);

    /// アイコン
    // Widget iconWidget = state.maybeWhen(
    //   data: _icon,
    //   orElse: () => Skeleton.circular(iconSize),
    // );

    /// 下部ウィジェット
    Widget bottomWidget = isBorder ? _divider() : Container();

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
                titleWidget,
                InkWell(
                  onTap: () => sl<AppRouter>().push(const MyRoute()),
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
            bottomWidget,
          ],
        ),
      ),
    );
  }

  _divider() {
    return const Divider(
      height: 0.1,
      thickness: 1,
      color: Color(0xFFF3F3F3),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(hieght);
}
