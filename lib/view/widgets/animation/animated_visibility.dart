import 'package:flutter/material.dart';

/// 透過時にタップを無効にする
class AnimatedVisibility extends StatelessWidget {
  /// 表示するかどうか
  /// trueの場合は透過しない
  final bool visible;
  final Widget child;

  static const _animationDuration = Duration(milliseconds: 200);

  const AnimatedVisibility({
    super.key,
    required this.visible,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !visible,
      child: AnimatedOpacity(
        duration: _animationDuration,
        opacity: visible ? 1 : 0,
        child: Container(child: child),
      ),
    );
  }
}
