import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AnimatedStickyTabBar extends HookConsumerWidget {
  final TabController? controller;
  final List<Widget> tabs;
  final Color? indicatorColor;
  final Color? labelColor;
  final TextStyle? labelStyle;
  final Color? unselectedLabelColor;
  final TextStyle? unselectedLabelStyle;

  const AnimatedStickyTabBar({
    Key? key,
    this.controller,
    required this.tabs,
    this.indicatorColor,
    this.labelColor,
    this.labelStyle,
    this.unselectedLabelColor,
    this.unselectedLabelStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return SliverPersistentHeader(
      delegate: _StickyTabBarDelegate(
        theme: theme,
        tabBar: TabBar(
          controller: controller,
          indicatorColor: indicatorColor ?? Colors.transparent,
          labelColor: labelColor ?? theme.appColors.onPrimary,
          labelStyle: labelStyle ?? theme.textTheme.h20.bold(),
          unselectedLabelColor: unselectedLabelColor ?? theme.appColors.primary,
          unselectedLabelStyle:
              unselectedLabelStyle ?? theme.textTheme.h20.bold(),
          tabs: tabs,
        ),
      ),
    );
  }
}

//SliverPersistentHeaderDelegateを継承したTabBarを作る
class _StickyTabBarDelegate extends SliverPersistentHeaderDelegate {
  const _StickyTabBarDelegate({
    required this.theme,
    required this.tabBar,
  });

  final AppTheme theme;
  final TabBar tabBar;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  double get maxExtent => tabBar.preferredSize.height;

  TabController? get controller => tabBar.controller;

  /// PageViewのスクロール量を[0~1]で取得する
  double get animationValue => controller?.animation?.value ?? 0;

  /// [0~1]で生成されるデータを[-1~1]に変換する
  double get indicatorPosition => animationValue * 2 - 1;

  /// 現在表示されているWidget
  Widget get currentWidget => tabBar.tabs[controller?.index ?? 0];

  @override
  Widget build(context, shrinkOffset, overlapsContent) {
    return Container(
      color: theme.appColors.onBackground,
      child: Stack(
        children: [
          AnimatedAlign(
            alignment: Alignment(indicatorPosition, 0),
            duration: const Duration(milliseconds: 1),
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 8),
              width: MediaQuery.of(context).size.width / 2,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: theme.appColors.primary,
                ),
                child: Opacity(opacity: 0, child: currentWidget),
              ),
            ),
          ),
          Container(color: Colors.transparent, child: tabBar),
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(_StickyTabBarDelegate oldDelegate) {
    return tabBar != oldDelegate.tabBar;
  }
}
