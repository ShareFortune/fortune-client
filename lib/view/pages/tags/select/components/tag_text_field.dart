import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/form_field/base_text_field.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TagTextField extends HookConsumerWidget {
  const TagTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.onChanged,
    this.onTap,
    this.onEditingComplete,
    this.validator,
    this.isError,
    this.clearCallBack,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final Function(String)? onChanged;
  final VoidCallback? onTap;
  final VoidCallback? onEditingComplete;
  final Function(String?)? validator;
  final bool? isError;
  final VoidCallback? clearCallBack;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return BaseTextField(
      controller: controller,
      validator: (validator == null) ? null : (value) => validator!(value),
      textInputAction: TextInputAction.next,
      hintText: hintText,
      onChanged: onChanged,
      onTap: onTap,
      onClear: clearCallBack,
      onEditingComplete: onEditingComplete,
      // border: isError ?? false ? const BorderSide(color: Colors.red) : null,
    );
  }
}
