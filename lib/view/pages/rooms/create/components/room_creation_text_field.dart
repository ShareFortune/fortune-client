import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/form_field/base_text_field.dart';

class RoomCreationTextField extends StatelessWidget {
  const RoomCreationTextField({
    Key? key,
    required this.theme,
    required this.controller,
    required this.hintText,
    this.maxLength,
    this.minLines,
    this.onChanged,
    this.onTap,
    this.onEditingComplete,
    this.clearCallBack,
  }) : super(key: key);

  final AppTheme theme;
  final TextEditingController controller;
  final String hintText;
  final int? maxLength;
  final int? minLines;
  final Function(String)? onChanged;
  final VoidCallback? onTap;
  final VoidCallback? onEditingComplete;
  final VoidCallback? clearCallBack;

  @override
  Widget build(BuildContext context) {
    return BaseTextField(
      maxLength: maxLength,
      minLines: minLines,
      controller: controller,
      textInputAction: TextInputAction.next,
      hintText: hintText,
      style: theme.textTheme.h40,
      hintStyle: theme.textTheme.h40,
      onChanged: onChanged,
      onTap: onTap,
      onClear: clearCallBack,
      onEditingComplete: onEditingComplete,
      fillColor: theme.appColors.onBackground,
      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: theme.appColors.border1),
      ),
    );
  }
}
