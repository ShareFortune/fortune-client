import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/widgets/picker/base_bottom_picker.dart';

class NumberPicker {
  /// 最小の値
  final int minValue;

  /// 最大の値
  final int maxValue;

  /// 表示する値の数
  int get count => maxValue - minValue + 1;

  /// Indexから値を取得
  int getValue(int index) => minValue + index;

  /// フォーマット
  final String format;

  /// フォーマットの引数
  final List<String> Function(int)? args;

  NumberPicker._({
    required this.minValue,
    required this.maxValue,
    required this.format,
    this.args,
  });

  /// 人数を選択するピッカー
  factory NumberPicker.participants() {
    return NumberPicker._(
      minValue: 4,
      maxValue: 10,
      format: LocaleKeys.data_room_membersNum_data_all.tr(),
      args: (int value) => [value.toString()],
    );
  }

  /// 身長を選択するピッカー
  factory NumberPicker.height() {
    return NumberPicker._(
      minValue: 130,
      maxValue: 200,
      format: LocaleKeys.data_profile_stature_data.tr(),
      args: (int value) => [value.toString()],
    );
  }

  Future<void> show({
    required BuildContext context,
    Function(int)? onChanged,
  }) async {
    await showModalBottomSheet(
      context: context,
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.3,
      ),
      builder: (BuildContext context) {
        return BaseBottomPicker(
          items: List.generate(count, (index) {
            return format.tr(args: args?.call(getValue(index)));
          }).toList(),
          onChanged: (index) => onChanged?.call(getValue(index)),
        );
      },
    );
  }
}
