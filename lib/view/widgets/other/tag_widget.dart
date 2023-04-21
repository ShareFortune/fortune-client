import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TagWidget extends ConsumerWidget {
  final String value;
  final Color? backGraundColor;
  final Color? borderColor;
  final Color? textColor;
  final VoidCallback? onTap;

  const TagWidget({
    super.key,
    required this.value,
    this.backGraundColor,
    this.borderColor,
    this.textColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: backGraundColor ?? theme.appColors.onBackground,
          border: Border.all(
            width: 1,
            color: borderColor ?? theme.appColors.border1,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
          child: Text(
            "# $value",
            style: theme.textTheme.h20.paint(
              textColor ?? theme.appColors.subText2,
            ),
          ),
        ),
      ),
    );
  }
}
