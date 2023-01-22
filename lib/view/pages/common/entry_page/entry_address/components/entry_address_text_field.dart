import 'package:flutter/material.dart';
import 'package:fortune_client/view/widgets/form_field/base_text_field.dart';

class EntryAddressTextField extends StatelessWidget {
  const EntryAddressTextField({
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
  Widget build(BuildContext context) {
    return BaseTextField(
      controller: controller,
      validator: (validator == null) ? null : (value) => validator!(value),
      keyboardType: TextInputType.streetAddress,
      textInputAction: TextInputAction.next,
      hintText: hintText,
      onChanged: onChanged,
      onTap: onTap,
      onEditingComplete: onEditingComplete,
      clearCallBack: clearCallBack,
    );
  }
}
