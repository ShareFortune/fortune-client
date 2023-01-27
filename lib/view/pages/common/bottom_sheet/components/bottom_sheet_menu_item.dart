import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';

class BottomSheetMenuItem extends StatelessWidget {
  final AppTheme theme;
  final String title;
  final String iconPath;
  final Color? color;
  final VoidCallback onPressed;
  final BorderRadiusGeometry? borderRadius;
  final BoxBorder? border;

  const BottomSheetMenuItem({
    super.key,
    required this.theme,
    required this.title,
    required this.iconPath,
    this.color,
    required this.onPressed,
    this.borderRadius,
    this.border,
  });

  factory BottomSheetMenuItem.first({
    required AppTheme theme,
    required String title,
    required String iconPath,
    required VoidCallback onPressed,
    Color? color,
  }) {
    return BottomSheetMenuItem(
      theme: theme,
      title: title,
      iconPath: iconPath,
      color: color,
      onPressed: onPressed,
      border: Border(
        bottom: BorderSide(width: 1, color: theme.appColors.border2),
      ),
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(10),
        bottom: Radius.circular(0),
      ),
    );
  }
  factory BottomSheetMenuItem.middle({
    required AppTheme theme,
    required String title,
    required String iconPath,
    required VoidCallback onPressed,
    Color? color,
  }) {
    return BottomSheetMenuItem(
      theme: theme,
      title: title,
      iconPath: iconPath,
      color: color,
      onPressed: onPressed,
      border: Border(
        bottom: BorderSide(width: 1, color: theme.appColors.border2),
      ),
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(0),
        bottom: Radius.circular(0),
      ),
    );
  }
  factory BottomSheetMenuItem.last({
    required AppTheme theme,
    required String title,
    required String iconPath,
    required VoidCallback onPressed,
    Color? color,
  }) {
    return BottomSheetMenuItem(
      theme: theme,
      title: title,
      iconPath: iconPath,
      color: color,
      onPressed: onPressed,
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(0),
        bottom: Radius.circular(10),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(border: border),
      child: ElevatedButton.icon(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(15),
          backgroundColor: theme.appColors.onBackground,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(10),
          ),
        ),
        icon: SvgPicture.asset(
          iconPath,
          fit: BoxFit.contain,
          color: color ?? theme.appColors.iconBtn1,
        ),
        label: Text(
          title,
          style: theme.textTheme.h40.paint(
            color ?? theme.appColors.subText1,
          ),
        ),
      ),
    );
  }
}
