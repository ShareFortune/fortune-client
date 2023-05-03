import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/form_field/base_text_field.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileInputListTile extends HookConsumerWidget {
  const ProfileInputListTile({
    super.key,
    required this.controller,
    required this.labelText,
    this.hintText,
    this.onTap,
  });

  final String labelText;
  final String? hintText;
  final TextEditingController controller;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: BaseTextField(
        readOnly: onTap != null,
        controller: controller,
        labelText: labelText,
        labelStyle: theme.textTheme.h30.paint(theme.appColors.subText1),
        hintText: hintText,
        hintStyle: theme.textTheme.h30.paint(theme.appColors.subText2),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 1, color: theme.appColors.primary),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 1, color: theme.appColors.border1),
        ),
        onTap: onTap,
      ),
    );
  }
}
