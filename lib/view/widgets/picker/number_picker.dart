import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/widgets/picker/base_bottom_picker.dart';

class NumberPicker extends BasePicker {
  /// 最小の値
  final int minValue;

  /// 最大の値
  final int maxValue;

  /// フォーマット
  final String format;

  /// フォーマットの引数
  final List<String> Function(int)? args;

  /// 表示する値の数
  int get count => maxValue - minValue + 1;

  /// 未選択かどうか判定
  @override
  bool isUnselected(int value) => value < minValue;

  /// Indexから値を取得
  int getValue(int index) {
    final value = minValue + index;
    return isUnselected(value) ? unselected : value;
  }

  int? getValidValue(int index) {
    final value = getValue(index);
    if (value < minValue) return null;
    if (value > maxValue) return null;
    return value;
  }

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
      args: (int? value) => [value.toString()],
    );
  }

  /// 身長を選択するピッカー
  factory NumberPicker.height() {
    return NumberPicker._(
      minValue: 130,
      maxValue: 200,
      format: LocaleKeys.data_profile_stature_data.tr(),
      args: (int? value) => [value.toString()],
    );
  }

  Future<void> show({
    required BuildContext context,
    Function(int?)? onChanged,
  }) async {
    await showModalBottomSheet(
      context: context,
      constraints: BoxConstraints(maxHeight: height),
      builder: (BuildContext context) {
        return BaseBottomPicker(
          items: List.generate(count, (index) {
            return format.tr(args: args?.call(getValue(index)));
          }).toList(),
          onChanged: (index) => onChanged?.call(getValidValue(index)),
        );
      },
    );
  }
}
