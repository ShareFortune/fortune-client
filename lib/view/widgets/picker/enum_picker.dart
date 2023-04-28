import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/enum/drink_frequency.dart';
import 'package:fortune_client/view/widgets/picker/base_bottom_picker.dart';

class EnumPicker<T> extends BasePicker {
  final List<String> items;

  EnumPicker._(this.items);

  /// 飲酒頻度を選択するピッカー
  factory EnumPicker.drinkFrequency() {
    return EnumPicker._(DrinkFrequency.values.map((e) => e.text).toList());
  }

  /// タバコの吸い方を選択するピッカー
  factory EnumPicker.cigaretteFrequency() {
    return EnumPicker._(CigaretteFrequency.values.map((e) => e.text).toList());
  }

  show({
    required BuildContext context,
    required T? Function(String) onConvert,
    required Function(T?)? onChanged,
  }) async {
    await showModalBottomSheet(
      context: context,
      constraints: BoxConstraints(maxHeight: height),
      builder: (BuildContext context) {
        return BaseBottomPicker(
          items: items,
          onChanged: (index) {
            isUnselected(index)
                ? onChanged?.call(null)
                : onChanged?.call(onConvert(items[index]));
          },
        );
      },
    );
  }
}
