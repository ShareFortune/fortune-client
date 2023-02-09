import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BaseTransitionTile extends HookConsumerWidget {
  const BaseTransitionTile({
    super.key,
    required this.title,
    this.titleColor,
    this.titleStyle,
    this.isDisplayValue = true,
    this.value,
    this.valueColor,
    this.valueStyle,
    this.decoration,
    required this.onTap,
    this.padding = const EdgeInsets.symmetric(vertical: 15),
    this.textWhenUnset,
    this.textWhenUnsetColor,
    this.textWhenUnsetStyle,
    this.trailingColor,
  });

  /// タイトル
  final String title;

  /// タイトルテキストカラー
  final Color? titleColor;

  /// タイトルテキストスタイル
  final TextStyle? titleStyle;

  /// [value]を表示するか
  final bool isDisplayValue;

  /// コンテントによって選択された値
  /// [isDisplayValue]がfalseの場合は表示しない
  final String? value;

  /// [value]のテキストカラー
  final Color? valueColor;

  /// [value] のテキストスタイル
  final TextStyle? valueStyle;

  final Decoration? decoration;

  /// タイルタップ時の処理
  final VoidCallback? onTap;

  /// Padding
  final EdgeInsetsGeometry? padding;

  /// [value]未設定時のテキスト
  /// [isDisplayValue]がfalseの場合は表示しない
  final String? textWhenUnset;

  /// [value]未設定時のテキストカラー
  final Color? textWhenUnsetColor;

  /// [value]未設定時のテキストスタイル
  final TextStyle? textWhenUnsetStyle;

  /// [trailing]のカラー
  final Color? trailingColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return InkWell(
      onTap: onTap,
      child: Container(
        padding: padding,
        decoration: decoration,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: titleStyle ??
                  theme.textTheme.h40.paint(theme.appColors.subText2),
            ),
            Row(
              children: [
                if (isDisplayValue)
                  value != null
                      ? Text(
                          value!,
                          style: valueStyle ??
                              theme.textTheme.h40
                                  .paint(theme.appColors.primary),
                        )
                      : Text(
                          textWhenUnset ?? LocaleKeys.data_empty.tr(),
                          style: textWhenUnsetStyle ??
                              theme.textTheme.h40
                                  .paint(theme.appColors.subText3),
                        ),
                const Gap(5),
                Icon(
                  Icons.chevron_right,
                  color: trailingColor ?? theme.appColors.iconBtn2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
