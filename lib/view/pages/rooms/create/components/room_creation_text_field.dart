import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/form_field/base_text_field.dart';

class RoomCreationTextField extends StatelessWidget {
  const RoomCreationTextField({
    Key? key,
    required this.theme,
    required this.controller,
    required this.hintText,
    this.onChanged,
    this.onTap,
    this.onEditingComplete,
    this.clearCallBack,
  }) : super(key: key);

  final AppTheme theme;
  final TextEditingController controller;
  final String hintText;
  final Function(String)? onChanged;
  final VoidCallback? onTap;
  final VoidCallback? onEditingComplete;
  final VoidCallback? clearCallBack;

  @override
  Widget build(BuildContext context) {
    return BaseTextField(
      controller: controller,
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.next,
      hintText: hintText,
      style: theme.textTheme.h40,
      hintStyle: theme.textTheme.h40,
      onChanged: onChanged,
      onTap: onTap,
      onEditingComplete: onEditingComplete,
      clearCallBack: clearCallBack,
      fillColor: theme.appColors.onBackground,
      contentPadding: const EdgeInsets.symmetric(vertical: 15),
      enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: theme.appColors.border2)),
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: theme.appColors.primary)),
    );
  }
}
