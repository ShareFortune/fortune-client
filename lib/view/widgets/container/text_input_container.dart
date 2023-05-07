import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/form_field/base_text_field.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TextInputContainer extends HookConsumerWidget {
  final bool required;
  final String title;
  final Widget inputField;

  const TextInputContainer({
    super.key,
    required this.title,
    required this.inputField,
    this.required = true,
  });

  factory TextInputContainer.short({
    required String title,
    bool required = true,
    required TextEditingController controller,
    Function()? onClear,
    Function(String)? onChanged,
    String? hintText,
  }) {
    return TextInputContainer(
      title: title,
      required: required,
      inputField: BaseTextField(
        controller: controller,
        maxLength: 20,
        onClear: onClear,
        onChanged: onChanged,
        hintText: hintText,
      ),
    );
  }

  factory TextInputContainer.long({
    required String title,
    bool required = true,
    required TextEditingController controller,
    Function(String)? onChanged,
    String? hintText,
  }) {
    return TextInputContainer(
      title: title,
      required: required,
      inputField: BaseTextField(
        controller: controller,
        maxLength: 500,
        minLines: 6,
        maxLines: 100,
        isDisplaySuffixIcon: false,
        onChanged: onChanged,
        hintText: hintText,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(title, style: theme.textTheme.h30),
            const Gap(10),
            if (!required)
              Container(
                color: theme.appColors.disable,
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                child: Text(
                  '任意',
                  style: theme.textTheme.h10.paint(theme.appColors.subText1),
                ),
              )
          ],
        ),
        const Gap(10),
        inputField,
      ],
    );
  }
}
