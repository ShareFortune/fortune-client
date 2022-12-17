import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/common/basic_app_bar/basic_app_bar.dart';
import 'package:fortune_client/view/pages/profile/create/entry_basic_profile/components/gender_selection_bottom_sheet.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BasicProfileEntryPage extends HookConsumerWidget {
  const BasicProfileEntryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Scaffold(
      appBar: _appBar(),
      body: _body(context),
    );
  }

  PreferredSizeWidget _appBar() {
    return const BasicAppbar(
      widget: Text(
        "はじめる",
        style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: false,
    );
  }

  Widget _body(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      child: Column(
        children: [
          TextFormField(
            maxLength: 20,
            obscureText: false,
            decoration: const InputDecoration(
              labelText: '名前',
            ),
            validator: (value) {},
            onSaved: (value) {},
          ),
          const Gap(10),
          TextFormField(
            readOnly: true,
            obscureText: false,
            decoration: const InputDecoration(
              hintText: '性別',
            ),
            validator: (value) {},
            onSaved: (value) {},
            onTap: () {
              GenderSelectionBottomSheet().show(context);
            },
          ),
          const Gap(30),
          TextFormField(
            obscureText: false,
            decoration: const InputDecoration(
              labelText: '住所',
            ),
            validator: (value) {},
            onSaved: (value) {},
          ),
        ],
      ),
    );
  }
}
