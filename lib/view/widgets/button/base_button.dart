import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';

class BaseButton extends StatelessWidget {
  const BaseButton({
    super.key,
    required this.theme,
    required this.title,
    this.titleColor,
    this.onPressed,
    this.backgroundColor,
    this.style,
  });

  final AppTheme theme;
  final String title;
  final Color? titleColor;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return backgroundColor?.withOpacity(0.9) ??
                    theme.appColors.primary.withOpacity(0.5);
              } else if (states.contains(MaterialState.disabled)) {
                return theme.appColors.disable;
              } else {
                return backgroundColor ?? theme.appColors.primary;
              }
            },
          ),
          shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        child: Text(
          title,
          style: style ??
              theme.textTheme.h30.paint(theme.appColors.onPrimary).bold(),
        ),
      ),
    );
  }
}
