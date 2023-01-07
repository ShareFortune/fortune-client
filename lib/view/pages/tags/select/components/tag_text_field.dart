import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/base_text_field.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TagTextField extends HookConsumerWidget {
  const TagTextField({
    Key? key,
    required this.emailCtrl,
    required this.hintText,
    this.onChanged,
    this.onTap,
    this.onEditingComplete,
    this.validator,
    this.isError,
    this.clearCallBack,
  }) : super(key: key);

  final TextEditingController emailCtrl;
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
      controller: emailCtrl,
      validator: (validator == null) ? null : (email) => validator!(email),
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      hintText: hintText,
      onChanged: onChanged,
      onTap: onTap,
      onEditingComplete: onEditingComplete,
      borderside: isError ?? false ? const BorderSide(color: Colors.red) : null,
      clearCallBack: clearCallBack,
    );
  }
}
