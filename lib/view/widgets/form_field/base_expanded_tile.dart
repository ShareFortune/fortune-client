import 'package:flutter/material.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BaseExpandedTile extends StatefulHookConsumerWidget {
  const BaseExpandedTile({
    super.key,
    required this.title,
    this.titleColor,
    this.titleStyle,
    required this.content,
    this.isDisplayValue = true,
    this.value,
    this.valueColor,
    this.valueStyle,
    this.controller,
    this.isExpanded,
    this.onTap,
    this.headerColor,
    this.contentBackgroundColor,
    this.textWhenUnset = "未設定",
    this.textWhenUnsetColor,
    this.textWhenUnsetStyle,
    this.trailingRotation = 90,
    this.trailingColor,
    this.expansionDuration = const Duration(milliseconds: 200),
  });

  /// タイトル
  final String title;

  /// タイトルテキストカラー
  final Color? titleColor;

  /// タイトルテキストスタイル
  final TextStyle? titleStyle;

  /// タイルクリック時に表示されるコンテンツ
  /// 選択された値は[value]に設定される
  final Widget content;

  /// [value]を表示するか
  final bool isDisplayValue;

  /// コンテントによって選択された値
  /// [isDisplayValue]がfalseの場合は表示しない
  final String? value;

  /// [value]のテキストカラー
  final Color? valueColor;

  /// [value] のテキストスタイル
  final TextStyle? valueStyle;

  /// ヘッダーの背景色
  final Color? headerColor;

  /// コンテンツの背景色
  final Color? contentBackgroundColor;

  /// タイルタップ時の処理
  final VoidCallback? onTap;

  /// [value]未設定時のテキスト
  /// [isDisplayValue]がfalseの場合は表示しない
  final String textWhenUnset;

  /// [value]未設定時のテキストカラー
  final Color? textWhenUnsetColor;

  /// [value]未設定時のテキストスタイル
  final TextStyle? textWhenUnsetStyle;
  final double? trailingRotation;
  final ExpandedTileController? controller;

  final bool? isExpanded;

  /// [trailing]のカラー
  final Color? trailingColor;
  final Duration? expansionDuration;

  @override
  ConsumerState<BaseExpandedTile> createState() => _BaseExpandedTileState();
}

class _BaseExpandedTileState extends ConsumerState<BaseExpandedTile> {
  late final ExpandedTileController _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ??
        ExpandedTileController(
          isExpanded: widget.isExpanded ?? false,
        );
  }

  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(appThemeProvider);

    /// デフォルトテキストスタイル
    /// pt14
    final defaultTextStyle = theme.textTheme.h30;

    return ExpandedTile(
      controller: _controller,
      theme: ExpandedTileThemeData(
        headerColor: widget.headerColor ?? theme.appColors.onBackground,
        contentBackgroundColor:
            widget.contentBackgroundColor ?? theme.appColors.onBackground,
        titlePadding: EdgeInsets.zero,
        contentPadding: EdgeInsets.zero,
        trailingPadding: const EdgeInsets.only(left: 5),
        headerPadding: const EdgeInsets.symmetric(vertical: 15),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            style: _textStyle(
              widget.titleStyle,
              widget.titleColor,
              defaultTextStyle,
              theme.appColors.subText1,
            ),
          ),
          if (widget.isDisplayValue)
            widget.value != null
                ? Text(
                    widget.value!,
                    style: _textStyle(
                      widget.valueStyle,
                      widget.valueColor,
                      defaultTextStyle,
                      theme.appColors.primary,
                    ),
                  )
                : Text(
                    widget.textWhenUnset,
                    style: _textStyle(
                      widget.textWhenUnsetStyle,
                      widget.textWhenUnsetColor,
                      defaultTextStyle,
                      theme.appColors.subText3,
                    ),
                  ),
        ],
      ),
      trailing: Icon(
        Icons.chevron_right,
        color: widget.trailingColor ?? theme.appColors.iconBtn2,
      ),
      content: widget.content,
      onTap: widget.onTap,
      trailingRotation: widget.trailingRotation,
      expansionDuration: widget.expansionDuration,
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
