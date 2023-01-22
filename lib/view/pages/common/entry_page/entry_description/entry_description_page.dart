import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EntryDescriptionPage extends HookConsumerWidget {
  const EntryDescriptionPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Scaffold(
      backgroundColor: theme.appColors.onBackground,
      appBar: BackAppBar(
        title: "ルームの説明を入力",
        action: [
          TextButton(
            onPressed: () {},
            child: Text("保存", style: theme.textTheme.h40.bold()),
          )
        ],
      ),
      body: TextFormField(
        autofocus: true,
        maxLines: null,
        controller: TextEditingController(),
        keyboardType: TextInputType.multiline,
        style: theme.textTheme.h40,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.all(30),
          border: InputBorder.none,
        ),
        // suffixIcon: Container(),
      ),
    );
  }
}
