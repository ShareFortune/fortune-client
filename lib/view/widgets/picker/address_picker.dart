import 'package:flutter/material.dart';
import 'package:flutter_japanese_address_picker/flutter_japanese_address_picker.dart'
    as jp;
import 'package:fortune_client/data/model/core/base/address/address.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/picker/base_bottom_picker.dart';

/// 住所選択
/// 日本限定
class AddressPicker extends BasePicker {
  /// [jp.Address]を[Address]に変換
  Address? convertAddress(jp.Address? address) {
    if (address == null) return null;
    return Address(
      country: '日本',
      prefecture: address.prefecture.name,
      city: address.city.name,
    );
  }

  Future<Address?> show({
    required BuildContext context,
    required AppTheme theme,
    required Address? address,
    Function(Address)? onChanged,
  }) async {
    return convertAddress(
      await jp.JapaneseAddressPicker.showBottomSheet(
        context,
        initialValue: jp.AddressValue(
          cityName: address?.city,
          prefectureName: address?.prefecture,
        ),
        theme: jp.JapaneseAddressPickerTheme(
          containerHeight: height - 80,
          headerCanselStyle:
              theme.textTheme.h30.paint(theme.appColors.subText2),
          headerSaveStyle: theme.textTheme.h30.paint(theme.appColors.linkColor),
          headerColor: theme.appColors.background,
        ),
        onChanged: (address) => onChanged?.call(convertAddress(address)!),
      ),
    );
  }
}
