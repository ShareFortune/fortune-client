import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/util/converter/datetime_converter.dart';
import 'package:fortune_client/view/pages/account/create/components/date_picker.dart';
import 'package:fortune_client/view/pages/account/create/entry_basic_profile/basic_profile_entry_view_model.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/basic_app_bar.dart';
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
    const birthdayFormater = DateTimeConverter.convertDateTimeYYYYMMDD;
    if (state.birthday != null) birthdayStr = birthdayFormater(state.birthday!);

    return Scaffold(
      backgroundColor: theme.appColors.onBackground,
      appBar: BasicAppBar(
        title: LocaleKeys.basic_profile_entry_page_title.tr(),
        action: [_nextButton(theme, state.isEntered(), viewModel.onCreate)],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
          children: [
            TextFormField(
              maxLength: 20,
              decoration: InputDecoration(
                labelText: LocaleKeys.basic_profile_entry_page_hint_name.tr(),
              ),
              onChanged: viewModel.changeName,
            ),
            const Gap(10),
            TextFormField(
              readOnly: true,
              controller: TextEditingController(text: birthdayStr),
              decoration: InputDecoration(
                labelText:
                    LocaleKeys.basic_profile_entry_page_hint_birthday.tr(),
              ),
              onTap: () async =>
                  viewModel.changeBirthday(await datePicker(context)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _nextButton(AppTheme theme, bool clickable, Function() onPressed) {
    final onBg = theme.appColors.primary;
    final offBg = theme.appColors.disable;
    final onTextColor = theme.appColors.onPrimary;
    final offTextColor = theme.appColors.subText2;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: clickable ? onBg : offBg,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      onPressed: () {
        if (clickable) onPressed();
      },
      child: Text(
        LocaleKeys.basic_profile_entry_page_next.tr(),
        style: TextStyle(
          fontSize: 16,
          color: clickable ? onTextColor : offTextColor,
        ),
      ),
    );
  }
}
