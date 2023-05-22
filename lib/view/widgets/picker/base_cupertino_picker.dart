import 'package:flutter/cupertino.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BaseCupertinoPicker extends HookConsumerWidget {
  const BaseCupertinoPicker({
    super.key,
    required this.items,
    this.height = 100,
    this.textColor,
    this.textStyle,
    this.backgroundColor,
    this.itemExtent = 30,
    required this.onSelectedItemChanged,
  });

  final List<String> items;

  /// 高さ
  final double height;

  /// テキストカラー
  final Color? textColor;

  /// テキストスタイル
  final TextStyle? textStyle;

  final Color? backgroundColor;

  /// 初期値 30
  final double itemExtent;

  final Function(int) onSelectedItemChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return SizedBox(
      height: height,
      child: CupertinoPicker(
        backgroundColor: backgroundColor ?? theme.appColors.onBackground,
        itemExtent: itemExtent,
        onSelectedItemChanged: onSelectedItemChanged,
        children: items
            .map((itemText) => Text(
                  itemText,
                  style: _textStyle(
                    textStyle,
                    textColor,
                    theme.textTheme.h40,
                    theme.appColors.subText2,
                  ),
                ))
            .toList(),
      ),
    );
  }

  TextStyle _textStyle(
    TextStyle? textStyle,
    Color? color,
    TextStyle defaultTextStyle,
    Color defaultColor,
  ) {
    return textStyle ?? defaultTextStyle.paint(color ?? defaultColor);
  }
}
