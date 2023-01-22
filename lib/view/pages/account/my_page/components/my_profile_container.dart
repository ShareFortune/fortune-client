import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:gap/gap.dart';

class MyProfileContainer extends StatelessWidget {
  const MyProfileContainer({
    super.key,
    required this.theme,
    required this.title,
    required this.trailing,
    required this.child,
    required this.onTapContainer,
  });

  final AppTheme theme;
  final String title;
  final Widget? trailing;
  final Widget? child;
  final VoidCallback? onTapContainer;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: theme.textTheme.h30.bold()),
              Container(child: trailing),
            ],
          ),
          const Gap(30),
          Container(child: child),
        ],
      ),
    );
  }
}
