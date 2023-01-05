import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/back_app_bar.dart';
import 'package:fortune_client/view/widgets/circle_icon.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RequestConfirmationPage extends HookConsumerWidget {
  const RequestConfirmationPage({super.key, @PathParam() required this.id});

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Scaffold(
      appBar: const BackAppBar(title: "リクエスト"),
      body: ListView(
        children: [
          requestTile(theme, "あんな", "22歳・女性", () {}),
          requestTile(theme, "takahashi", "22歳・女性", () {}),
          requestTile(theme, "shimizu", "22歳・女性", () {}),
          requestTile(theme, "takada", "22歳・女性", () {}),
        ],
      ),
    );
  }

  ListTile requestTile(
    AppTheme theme,
    String title,
    String subtitle,
    Function() onTap,
  ) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      leading: const CircleIconWidget(radius: 30, isMan: true),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: theme.appColors.primary,
          textStyle: theme.textTheme.h30.bold(),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        child: Text(
          "許可",
          style: theme.textTheme.h30
              .bold()
              .merge(const TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
