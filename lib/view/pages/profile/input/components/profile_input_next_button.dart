import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileInputNextButton extends HookConsumerWidget {
  const ProfileInputNextButton(this.callback, {super.key});

  final VoidCallback? callback;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: MaterialButton(
        onPressed: callback,
        color: theme.appColors.primary,
        textColor: theme.appColors.onPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          alignment: Alignment.center,
          height: 50,
          width: double.infinity,
          child: Text("次へ", style: theme.textTheme.h40.bold()),
        ),
      ),
    );
  }
}
