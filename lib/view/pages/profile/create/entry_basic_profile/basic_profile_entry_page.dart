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

// Expanded
  PreferredSizeWidget _appBar() {
    return BasicAppbar(
      widget: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "はじめる",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            nextButton(),
          ],
        ),
      ),
    );
  }

  Widget _body(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 20,
        left: 30,
        right: 30,
        bottom: 50,
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

  Widget nextButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: const Color(0xFFF5F5F5),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      onPressed: () {},
      child: const Text(
        "次へ",
        style: TextStyle(
          fontSize: 16,
          color: Colors.black,
        ),
      ),
    );
  }
}
