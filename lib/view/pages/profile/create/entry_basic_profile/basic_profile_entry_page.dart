import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:fortune_client/util/converter/datetime_format_converter.dart';
import 'package:fortune_client/view/pages/profile/create/components/date_picker.dart';
import 'package:fortune_client/view/pages/profile/create/entry_basic_profile/basic_profile_entry_view_model.dart';
import 'package:fortune_client/data/model/enum/gender_type.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/pages/profile/create/components/bottom_picker.dart';
import 'package:fortune_client/view/widgets/basic_app_bar.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BasicProfileEntryPage extends HookConsumerWidget {
  const BasicProfileEntryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(basicProfileEntryViewModelProvider);
    final viewModel = ref.watch(basicProfileEntryViewModelProvider.notifier);

    /// 誕生日フォーマッター
    String? birthdayStr;
    const birthdayFormater = DateTimeFormatConverter.convertDateTimeYYYYMMDD;
    if (state.birthday != null) birthdayStr = birthdayFormater(state.birthday!);

    return Scaffold(
      appBar: BasicAppBar(
        title: "はじめる",
        action: [
          _nextButton(state.isEntered(),
              () => viewModel.navigateToEntryDetailedProfile()),
        ],
      ),
      body: Container(
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
              decoration: const InputDecoration(labelText: '名前'),
              onChanged: viewModel.changeName,
            ),
            const Gap(10),
            TextFormField(
              readOnly: true,
              controller: TextEditingController(text: state.gender.text),
              decoration: const InputDecoration(labelText: '性別'),
              onTap: () => _genderPicker(context, viewModel.changeGender),
            ),
            const Gap(30),
            TextFormField(
              readOnly: true,
              controller: TextEditingController(text: birthdayStr),
              decoration: const InputDecoration(labelText: '誕生日'),
              onTap: () => birthdayPicker(context, viewModel.changeBirthday),
            ),
          ],
        ),
      ),
    );
  }

  birthdayPicker(BuildContext context, Function(DateTime?) onChange) async {
    onChange(await datePicker(context));
  }

  _genderPicker(BuildContext context, Function(GenderType) onChange) {
    final sheet = bottomPicker(
      items: GenderType.values,
      itemsText: GenderType.values.map((e) => e.text).toList(),
      onChange: onChange,
    );
    sheet.show(context);
  }

  Widget _nextButton(bool clickable, Function() onPressed) {
    final bgColor =
        clickable ? const Color(0xFFC782E4) : const Color(0xFFF5F5F5);
    final textColor = clickable ? Colors.white : Colors.black;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: bgColor,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      onPressed: () {
        if (clickable) onPressed();
      },
      child: Text(
        "次へ",
        style: TextStyle(
          fontSize: 16,
          color: textColor,
        ),
      ),
    );
  }
}
