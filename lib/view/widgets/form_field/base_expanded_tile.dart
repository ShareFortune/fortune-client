import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BaseExpandedTile extends StatefulHookConsumerWidget {
  const BaseExpandedTile({
    super.key,
    required this.title,
    this.titleStyle,
    required this.content,
    this.isDisplayValue = true,
    this.value,
    this.valueStyle,
    this.controller,
    this.isExpanded = false,
    this.onTap,
    this.titlePadding,
    this.headerPadding,
    this.headerColor,
    this.contentBackgroundColor,
    this.textWhenUnset,
    this.textWhenUnsetStyle,
    this.trailingRotation = 90,
    this.trailingColor,
    this.expansionDuration = const Duration(milliseconds: 200),
  });

  /// タイトル
  final String title;

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

  /// [value] のテキストスタイル
  final TextStyle? valueStyle;

  /// ヘッダーの背景色
  final Color? headerColor;

  /// コンテンツの背景色
  final Color? contentBackgroundColor;

  /// タイルタップ時の処理
  final VoidCallback? onTap;

  /// Padding
  final EdgeInsetsGeometry? titlePadding;
  final EdgeInsetsGeometry? headerPadding;

  /// [value]未設定時のテキスト
  /// [isDisplayValue]がfalseの場合は表示しない
  final String? textWhenUnset;

  /// [value]未設定時のテキストスタイル
  final TextStyle? textWhenUnsetStyle;
  final double? trailingRotation;
  final ExpandedTileController? controller;

  /// [content]を表示するか
  /// 真の場合表示された状態になる
  final bool isExpanded;

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
        ExpandedTileController(isExpanded: widget.isExpanded);
  }

  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(appThemeProvider);

    return ExpandedTile(
      controller: _controller,
      theme: ExpandedTileThemeData(
        headerColor: widget.headerColor ?? theme.appColors.onBackground,
        contentBackgroundColor:
            widget.contentBackgroundColor ?? theme.appColors.onBackground,
        titlePadding: widget.titlePadding,
        contentPadding: EdgeInsets.zero,
        trailingPadding: const EdgeInsets.only(left: 5),
        headerPadding:
            widget.headerPadding ?? const EdgeInsets.symmetric(vertical: 15),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            style: widget.titleStyle ??
                theme.textTheme.h40.paint(theme.appColors.subText1),
          ),
          if (widget.isDisplayValue)
            widget.value != null
                ? Text(
                    widget.value!,
                    style: widget.valueStyle ??
                        theme.textTheme.h40.paint(theme.appColors.primary),
                  )
                : Text(
                    widget.textWhenUnset ?? LocaleKeys.data_empty.tr(),
                    style: widget.textWhenUnsetStyle ??
                        theme.textTheme.h40.paint(theme.appColors.subText3),
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
}
