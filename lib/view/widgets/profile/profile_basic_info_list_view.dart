import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileBasicInfoListViewItem extends HookConsumerWidget {
  const ProfileBasicInfoListViewItem({
    super.key,
    required this.title,
    this.value,
    this.format,
    this.args = const [],
  });

  final String title;
  final String? value;
  final String? format;
  final List<String> args;

  String get _value {
    if (format == null) return value ?? "未設定";
    return format!.tr(args: args);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: Text(title, style: theme.textTheme.h30),
          ),
          Expanded(
            child: Text(
              _value,
              style: theme.textTheme.h30.paint(theme.appColors.primary),
            ),
          ),
        ],
      ),
    );
  }
}
