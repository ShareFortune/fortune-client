import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:gap/gap.dart';

class RoomStateInputField extends StatelessWidget {
  final AppTheme theme;
  final bool required;
  final String title;
  final Widget content;

  const RoomStateInputField({
    super.key,
    required this.theme,
    required this.title,
    required this.content,
    this.required = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(title, style: theme.textTheme.h30.bold()),
            const Gap(10),
            Container(child: required ? null : annotation())
          ],
        ),
        const Gap(10),
        content,
      ],
    );
  }

  annotation() {
    return Container(
      color: theme.appColors.disable,
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
      child: Text(
        "任意",
        style: theme.textTheme.h10.paint(theme.appColors.subText1),
      ),
    );
  }
}
