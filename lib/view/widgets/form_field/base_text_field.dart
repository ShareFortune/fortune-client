import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BaseTextField extends StatefulHookConsumerWidget {
  const BaseTextField({
    Key? key,
    required this.controller,
    this.focusNode,
    this.keyboardType,
    this.textInputAction,
    this.style,
    this.autofocus = false,
    this.readOnly = false,
    this.expands,
    this.maxLines = 1,
    this.minLines,
    this.maxLength,
    this.onChanged,
    this.onTap,
    this.onClear,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.onSaved,
    this.validator,
    this.icon,
    this.iconColor,
    this.label,
    this.labelText,
    this.labelStyle,
    this.hintText,
    this.hintStyle,
    this.hintMaxLines,
    this.errorText,
    this.errorStyle,
    this.errorMaxLines,
    this.isDense,
    this.contentPadding,
    this.filled,
    this.fillColor,
    this.focusColor,
    this.hoverColor,
    this.errorBorder,
    this.focusedBorder,
    this.focusedErrorBorder,
    this.disabledBorder,
    this.enabledBorder,
    this.border,
    this.isDisplaySuffixIcon = true,
  }) : super(key: key);

  /// TextFormField
  final TextEditingController controller;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextStyle? style;
  final bool autofocus;
  final bool readOnly;
  final int? maxLines;
  final int? minLines;
  final bool? expands;
  final int? maxLength;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final void Function()? onClear;
  final void Function()? onEditingComplete;
  final void Function(String)? onFieldSubmitted;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;

  /// InputDecoration
  final Widget? icon;
  final Color? iconColor;
  final Widget? label;
  final String? labelText;
  final TextStyle? labelStyle;
  final String? hintText;
  final TextStyle? hintStyle;
  final int? hintMaxLines;
  final String? errorText;
  final TextStyle? errorStyle;
  final int? errorMaxLines;
  final bool? isDense;
  final EdgeInsetsGeometry? contentPadding;
  final bool? filled;
  final Color? fillColor;
  final Color? focusColor;
  final Color? hoverColor;
  final InputBorder? errorBorder;
  final InputBorder? focusedBorder;
  final InputBorder? focusedErrorBorder;
  final InputBorder? disabledBorder;
  final InputBorder? enabledBorder;
  final InputBorder? border;

  /// Others
  final bool isDisplaySuffixIcon;

  @override
  ConsumerState<BaseTextField> createState() => _BaseTextFieldState();
}

class _BaseTextFieldState extends ConsumerState<BaseTextField> {
  /// フォーカス制御
  late final FocusNode _focusNode;

  /// SuffixIconを表示するか
  bool _valueIsNotEmpty = false;
  bool _showingKeyboard = false;
  bool get isDisplaySuffixIcon {
    return widget.isDisplaySuffixIcon && _valueIsNotEmpty && _showingKeyboard;
  }

  @override
  void initState() {
    super.initState();
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(() {
      setState(() => _showingKeyboard = _focusNode.hasFocus);
    });
    widget.controller.addListener(() {
      setState(() => _valueIsNotEmpty = widget.controller.text.isNotEmpty);
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(appThemeProvider);

    return TextFormField(
      controller: widget.controller,
      focusNode: _focusNode,
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      style: widget.style,
      autofocus: widget.autofocus,
      readOnly: widget.readOnly,
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      maxLength: widget.maxLength,
      onChanged: widget.onChanged,
      onTap: widget.onTap,
      onEditingComplete: widget.onEditingComplete,
      onFieldSubmitted: widget.onFieldSubmitted,
      onSaved: widget.onSaved,
      validator: widget.validator,
      decoration: InputDecoration(
        filled: true,
        iconColor: Colors.red,
        labelStyle: theme.textTheme.h30.paint(theme.appColors.subText2),
        hintStyle: theme.textTheme.h30.paint(theme.appColors.subText3),
        errorStyle: theme.textTheme.h10.paint(theme.appColors.error),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 13,
        ),
        suffixIcon: isDisplaySuffixIcon
            ? IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  widget.controller.clear();
                  if (widget.onClear != null) widget.onClear!();
                },
              )
            : null,
        fillColor: theme.appColors.onBackground,
        focusColor: Colors.red,
        hoverColor: Colors.red,
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: theme.appColors.error),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: theme.appColors.primary),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: theme.appColors.error),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: theme.appColors.border1),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: theme.appColors.border1),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: theme.appColors.border1),
        ),
      ).copyWith(
        icon: widget.icon,
        iconColor: widget.iconColor,
        label: widget.label,
        labelText: widget.labelText,
        labelStyle: widget.labelStyle,
        hintText: widget.hintText,
        hintStyle: widget.hintStyle,
        hintMaxLines: widget.hintMaxLines,
        errorText: widget.errorText,
        errorStyle: widget.errorStyle,
        errorMaxLines: widget.errorMaxLines,
        isDense: widget.isDense,
        contentPadding: widget.contentPadding,
        filled: widget.filled,
        fillColor: widget.fillColor,
        focusColor: widget.focusColor,
        hoverColor: widget.hoverColor,
        errorBorder: widget.errorBorder,
        focusedBorder: widget.focusedBorder,
        focusedErrorBorder: widget.focusedErrorBorder,
        disabledBorder: widget.disabledBorder,
        enabledBorder: widget.enabledBorder,
        border: widget.border,
      ),
    );
  }
}
