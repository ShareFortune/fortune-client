import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_theme.dart';

class BottomSheetContainer extends StatelessWidget {
  const BottomSheetContainer({
    Key? key,
    required this.theme,
    required this.child,
    this.backgroundColor,
    this.borderRadius,
  }) : super(key: key);

  final AppTheme theme;
  final Widget child;

  final Color? backgroundColor;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: theme.appColors.onBackground,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ).copyWith(
        color: backgroundColor,
        // borderRadius: borderRadius,
      ),
      child: child,
    );
  }
}
