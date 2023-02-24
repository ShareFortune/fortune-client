import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/common/entry_description/entry_description_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EntryDescriptionPage extends HookConsumerWidget {
  EntryDescriptionPage({
    required this.title,
    required this.value,
    super.key,
  }) {
    controller.text = value ?? "";
  }

  final String title;
  final String? value;
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final viewModel = ref.watch(entryDescriptionViewModelProvider.notifier);

    return Scaffold(
      backgroundColor: theme.appColors.onBackground,
      appBar: BackAppBar(
        // title: "ルームの説明を入力",
        title: title,
        action: [
          TextButton(
            onPressed: () => viewModel.save(),
            child: Text("保存", style: theme.textTheme.h40.bold()),
          )
        ],
      ),
      body: TextFormField(
        autofocus: true,
        maxLines: null,
        controller: controller,
        keyboardType: TextInputType.multiline,
        style: theme.textTheme.h40,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.all(30),
          border: InputBorder.none,
        ),
        onChanged: (value) => viewModel.changeDescription(value),
      ),
    );
  }
}
