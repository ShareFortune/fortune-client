import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ListAnimationWidget<T> extends HookConsumerWidget {
  const ListAnimationWidget({
    super.key,
    required this.items,
    required this.container,
    required this.spacing,
  });

  final List<T> items;
  final Widget Function(T) container;
  final double spacing;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return AnimationLimiter(
      child: SliverList(
        delegate: SliverChildBuilderDelegate(
          childCount: items.length,
          (context, index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 175),
              child: SlideAnimation(
                verticalOffset: 50.0,
                child: FadeInAnimation(
                  child: _content(theme, container(items[index])),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  _content(AppTheme theme, Widget child) {
    return Container(
      color: theme.appColors.onBackground,
      padding: EdgeInsets.only(bottom: spacing),
      child: child,
    );
  }
}