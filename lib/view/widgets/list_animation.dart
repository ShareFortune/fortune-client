import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class ListAnimationWidget<T> extends StatelessWidget {
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
  Widget build(BuildContext context) {
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
                  child: _content(container(items[index])),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  _content(Widget child) {
    return Container(
      padding: EdgeInsets.only(bottom: spacing),
      child: child,
    );
  }
}
