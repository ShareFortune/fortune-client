import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/widgets/picker/base_bottom_picker.dart';

class HeightPicker {
  /// 最小の身長
  static const int _minHeight = 130;

  /// 最大の身長
  static const int _maxHeight = 200;

  /// 表示する身長の数
  static const int _heightCount = _maxHeight - _minHeight + 1;

  /// indexから身長を取得
  static int _getHeight(int index) => _minHeight + index;

  static Future<void> show({
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
          items: List.generate(_heightCount, (index) {
            return LocaleKeys.data_profile_stature_data.tr(
              args: [(_getHeight(index)).toString()],
            );
          }).toList(),
          onChanged: (index) {
            onChanged?.call(_getHeight(index));
          },
        );
      },
    );
  }
}
