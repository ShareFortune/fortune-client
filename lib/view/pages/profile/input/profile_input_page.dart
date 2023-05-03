import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/form_field/base_text_field.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileInputPage extends HookConsumerWidget {
  const ProfileInputPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    final nameController = useTextEditingController();
    final birthdayController = useTextEditingController();
    useListenable(nameController);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: theme.appColors.onBackground,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: double.infinity,
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "はじめる",
                style:
                    theme.textTheme.h70.paint(theme.appColors.subText1).bold(),
              ),
            ),
            const Gap(50),
            _NameInputField(nameController),
            const Gap(20),
            _BirthDayInputField(birthdayController),
            const Spacer(),
            _NextButton(() {}),
            const Gap(100),
          ],
        ),
      ),
    );
  }
}

class _NextButton extends HookConsumerWidget {
  const _NextButton(this.callback);

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

class _NameInputField extends HookConsumerWidget {
  const _NameInputField(this.controller);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: BaseTextField(
        controller: controller,
        labelText: "名前",
        labelStyle: theme.textTheme.h30.paint(theme.appColors.subText1),
        hintText: "名前を入力してください",
        hintStyle: theme.textTheme.h30.paint(theme.appColors.subText2),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 1, color: theme.appColors.primary),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 1, color: theme.appColors.border1),
        ),
      ),
    );
  }
}

/// 生年月日を入力するWidget
class _BirthDayInputField extends HookConsumerWidget {
  const _BirthDayInputField(this.controller);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: BaseTextField(
        controller: controller,
        readOnly: true,
        labelText: "生年月日",
        labelStyle: theme.textTheme.h30.paint(theme.appColors.subText1),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 1, color: theme.appColors.border1),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 1, color: theme.appColors.border1),
        ),
        onTap: () async {
          final date = await DatePicker.showDatePicker(
            context,
            showTitleActions: true,
            minTime: DateTime(1900, 1, 1),
            maxTime: DateTime(2049, 12, 31),
            currentTime: DateTime.now(),
            locale: LocaleType.jp,
          );
          if (date != null) {
            controller.text = "${date.year}/${date.month}/${date.day}";
          }
        },
      ),
    );
  }
}
