import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BaseTextField extends StatefulHookConsumerWidget {
  const BaseTextField({
    Key? key,
    required this.controller,
    this.autofocus,
    this.focusNode,
    this.validator,
    this.hintText,
    this.hintStyle,
    this.keyboardType,
    this.cursorColor,
    this.textInputAction,
    this.style,
    this.onChanged,
    this.onTap,
    this.onEditingComplete,
    this.obscureText,
    this.prefixIcon,
    this.prefixIconColor,
    this.suffixIcon,
    this.borderside,
    this.clearCallBack,
    this.inputFormatters,
    this.maxLength,
    this.fillColor,
    this.border,
    this.enabledBorder,
    this.focusedBorder,
    this.contentPadding,
  }) : super(key: key);

  final bool? autofocus;
  final FocusNode? focusNode;
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final Color? cursorColor;
  final String? hintText;
  final TextStyle? hintStyle;
  final TextInputAction? textInputAction;
  final TextStyle? style;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;
  final VoidCallback? onEditingComplete;
  final bool? obscureText;
  final Widget? prefixIcon;
  final Color? prefixIconColor;
  final Widget? suffixIcon;
  final BorderSide? borderside;
  final VoidCallback? clearCallBack;
  final List<TextInputFormatter>? inputFormatters;
  final Color? fillColor;
  final InputBorder? border;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final EdgeInsetsGeometry? contentPadding;

  final int? maxLength;

  @override
  ConsumerState<BaseTextField> createState() => _BaseTextFieldState();
}

class _BaseTextFieldState extends ConsumerState<BaseTextField> {
  String get value => widget.controller.text;

  bool get isNotEmpty => value.isNotEmpty;

  bool get isDisplayFirstSuffixIcon =>
      ((isNotEmpty || _isNotEmpty) && _showingKeyboard);

  bool get isDisplaySecondSuffixIcon =>
      ((widget.suffixIcon != null) && (_isNotEmpty || _isNotEmpty));

  late final FocusNode _focusNode;

  bool _showingKeyboard = false;

  bool _isNotEmpty = false;

  @override
  void initState() {
    super.initState();
    _focusNode = widget.focusNode ?? FocusNode();

    _focusNode.addListener(() {
      if (mounted) {
        setState(() {
          _showingKeyboard = _focusNode.hasFocus;
        });
      }
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
      autofocus: widget.autofocus ?? false,
      focusNode: _focusNode,
      controller: widget.controller,
      validator: widget.validator,
      keyboardType: widget.keyboardType,
      inputFormatters: widget.inputFormatters,
      maxLength: widget.maxLength,
      cursorColor: widget.cursorColor,
      textInputAction: widget.textInputAction,
      style:
          widget.style ?? theme.textTheme.h30.paint(theme.appColors.subText1),
      onTap: widget.onTap,
      onEditingComplete: widget.onEditingComplete,
      decoration: InputDecoration(
        fillColor: theme.appColors.textFieldBackground,
        filled: true,
        hintText: widget.hintText,
        hintStyle: theme.textTheme.h30.paint(theme.appColors.subText2),
        prefixIcon: widget.prefixIcon,
        prefixIconColor: widget.prefixIconColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:
              widget.borderside ?? BorderSide(color: theme.appColors.onError),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              widget.borderside ?? BorderSide(color: theme.appColors.primary),
        ),
        contentPadding: const EdgeInsets.all(10),
        errorMaxLines: 2,
        suffixIcon: (!_isNotEmpty && !isNotEmpty)
            ? null
            : SizedBox(
                width: widget.suffixIcon != null ? 110 : 55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    isDisplayFirstSuffixIcon
                        ? InkWell(
                            onTap: () {
                              widget.controller.clear();
                              setState(() => _isNotEmpty = false);
                              if (widget.clearCallBack != null) {
                                widget.clearCallBack!();
                              }
                            },
                            child: IconButton(
                              onPressed: widget.clearCallBack,
                              icon: const Icon(Icons.close),
                            ),
                          )
                        : Container(),
                    if (isDisplaySecondSuffixIcon) ...[
                      const Gap(20),
                      widget.suffixIcon!
                    ],
                  ],
                ),
              ),
      ).copyWith(
        fillColor: widget.fillColor,
        contentPadding: widget.contentPadding,
        border: widget.border,
        enabledBorder: widget.enabledBorder,
        focusedBorder: widget.focusedBorder,
        labelStyle: widget.style,
        hintStyle: widget.hintStyle,
      ),
      obscureText: widget.obscureText ?? false,
      onChanged: (text) {
        if (text.isNotEmpty && !_isNotEmpty) setState(() => _isNotEmpty = true);
        if (text.isEmpty && _isNotEmpty) setState(() => _isNotEmpty = false);
        if (widget.onChanged == null) return;
        widget.onChanged!(text);
      },
    );
  }
}
