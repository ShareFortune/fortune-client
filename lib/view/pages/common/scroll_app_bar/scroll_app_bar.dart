import 'package:flutter/material.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/common/scroll_app_bar/scroll_app_bar_state.dart';
import 'package:fortune_client/view/pages/common/scroll_app_bar/scroll_app_bar_view_model.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/skeleton.dart';
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
    final viewModel = ref.watch(scrollAppBarViewModelProvider.notifier);

    /// タイトル
    final titleTextStyle = theme.textTheme.h60.bold().merge(
          TextStyle(color: theme.appColors.subText1),
        );
    Widget titleWidget = Text(title, style: titleTextStyle);

    /// アイコン
    Widget iconWidget = state.maybeWhen(
      data: _icon,
      orElse: () => Skeleton.circular(iconSize),
    );

    /// 下部ウィジェット
    Widget bottomWidget = isBorder ? _divider() : Container();

    return SliverAppBar(
      backgroundColor: Colors.transparent,
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
                iconWidget,
              ],
            ),
            const Gap(15),
            bottomWidget,
          ],
        ),
      ),
      // bottom: bottomWidget,
    );
  }

  Widget _icon(ScrollAppBarState data) {
    return InkWell(
      onTap: () => sl<AppRouter>().push(const AccountRoute()),
      child: CircleAvatar(
        radius: iconSize,
        backgroundImage: data.image,
      ),
    );
  }

  PreferredSizeWidget _divider() {
    return const PreferredSize(
      preferredSize: Size(double.infinity, 1),
      child: Divider(thickness: 1, color: Color(0xFFF3F3F3)),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(hieght);
}