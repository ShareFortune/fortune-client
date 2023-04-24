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
      child: Column(
        children: items.map((e) {
          return AnimationConfiguration.staggeredList(
            position: items.indexOf(e),
            duration: const Duration(milliseconds: 175),
            child: SlideAnimation(
              verticalOffset: 50.0,
              child: FadeInAnimation(
                child: Container(
                  color: theme.appColors.onBackground,
                  padding: EdgeInsets.only(bottom: spacing),
                  child: container(e),
                ),
              ),
            ),
          );
        }).toList(),
      ),

      // child: ListView.builder(
      //   shrinkWrap: true,
      //   itemCount: items.length,
      //   physics: const NeverScrollableScrollPhysics(),
      //   itemBuilder: (BuildContext context, int index) {
      //     return AnimationConfiguration.staggeredList(
      //       position: index,
      //       duration: const Duration(milliseconds: 175),
      //       child: SlideAnimation(
      //         verticalOffset: 50.0,
      //         child: FadeInAnimation(
      //           child: Container(
      //             color: theme.appColors.onBackground,
      //             padding: EdgeInsets.only(bottom: spacing),
      //             child: container(items[index]),
      //           ),
      //         ),
      //       ),
      //     );
      //   },
      // ),
    );
  }
}
