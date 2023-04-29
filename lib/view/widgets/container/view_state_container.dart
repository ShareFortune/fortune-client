import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ViewStateContainer extends HookConsumerWidget {
  const ViewStateContainer({
    super.key,
    required this.title,
    this.hasValue = true,
    this.format,
    this.args = const [],
    this.isEdit = false,
    this.onTapped,
  });

  /// タイトル
  final String title;

  /// 表示テキスト
  final String? format;

  /// formatの引数
  final List<String> args;

  /// 編集可能か
  final bool isEdit;

  /// 編集時にタップされた時の処理
  final VoidCallback? onTapped;

  /// 値が存在するか
  final bool hasValue;

  String get _value {
    if (!hasValue) return "未設定";
    final text = format?.tr(args: args);
    return text ?? "未設定";
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return GestureDetector(
      onTap: isEdit ? onTapped : null,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: isEdit ? 12 : 10),
        child: Row(
          children: [
            Expanded(
              child: Text(title, style: theme.textTheme.h30),
            ),
            Expanded(
              flex: isEdit ? 0 : 1,
              child: Text(
                _value,
                style: theme.textTheme.h30.paint(
                  isEdit ? theme.appColors.subText1 : theme.appColors.primary,
                ),
              ),
            ),
            if (isEdit)
              Row(
                children: [
                  const Gap(15),
                  Icon(Icons.chevron_right, color: theme.appColors.iconBtn1),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
