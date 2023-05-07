import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/view/routes/route_navigator.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BasePicker {
  /// 高さ
  double get height => 350;

  /// 未選択の値
  final int unselected = -1;

  /// 未選択かどうか判定
  bool isUnselected(int index) => index == unselected;
}

class BaseBottomPicker extends StatefulHookConsumerWidget {
  const BaseBottomPicker({
    super.key,
    required this.items,
    required this.onChanged,
    this.initialIndex = 0,
    this.hasUnselected = true,
  });

  /// 選択肢
  final List<String> items;

  /// [index]選択された値のIndex
  /// 未選択の場合は[-1]
  final Function(int index)? onChanged;

  /// 初期選択インデックス
  final int initialIndex;

  /// 未選択の項目を表示するかどうか
  final bool hasUnselected;

  @override
  ConsumerState<BaseBottomPicker> createState() => _BaseBottomPickerState();
}

class _BaseBottomPickerState extends ConsumerState<BaseBottomPicker> {
  /// スクロールコントローラー
  late FixedExtentScrollController scrollController;

  /// アイテム
  List<String> get items => widget.hasUnselected
      ? ['未選択', ...widget.items] //
      : widget.items;

  /// アイテム数
  int get itemCount => widget.hasUnselected
      ? widget.items.length + 1 //
      : widget.items.length;

  /// 選択された値
  int get selectedIndex => widget.hasUnselected
      ? scrollController.selectedItem - 1 //
      : scrollController.selectedItem;

  @override
  void initState() {
    scrollController = FixedExtentScrollController(
      initialItem: widget.initialIndex,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BottomSheetPickerHeader(
          onSaved: () {
            widget.onChanged?.call(selectedIndex);
            navigator.goBack();
          },
        ),
        Expanded(
          child: CupertinoPicker.builder(
            itemExtent: 35.0,
            useMagnifier: true,
            backgroundColor: Colors.white,
            scrollController: scrollController,
            onSelectedItemChanged: null,
            childCount: itemCount,
            itemBuilder: (context, index) {
              return Container(
                alignment: Alignment.center,
                child: Text(
                  items[index],
                  textAlign: TextAlign.start,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

/// BottomSheetPickerのHeader
class BottomSheetPickerHeader extends HookConsumerWidget {
  const BottomSheetPickerHeader({
    super.key,
    this.height = 45,
    required this.onSaved,
  });

  final double height;
  final Function() onSaved;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Container(
      height: height,
      color: theme.appColors.background,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: navigator.goBack,
            child: Text(
              'キャンセル',
              style: theme.textTheme.h30.paint(theme.appColors.subText2),
            ),
          ),
          TextButton(
            onPressed: onSaved,
            child: Text(
              '保存',
              style: theme.textTheme.h30.paint(theme.appColors.linkColor),
            ),
          ),
        ],
      ),
    );
  }
}
