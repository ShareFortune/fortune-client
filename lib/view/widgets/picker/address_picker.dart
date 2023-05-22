import 'package:flutter/material.dart';
import 'package:flutter_japanese_address_picker/flutter_japanese_address_picker.dart';
import 'package:fortune_client/data/model/addresses/address/address.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/picker/base_bottom_picker.dart';

/// 住所選択
/// 日本限定
class AddressPicker extends BasePicker {
  /// [jp.Address]を[Address]に変換
  Address? convertAddress(AddressModel? address) {
    if (address == null) return null;
    return Address(
      country: '日本',
      prefecture: address.prefecture,
      city: address.city ?? '',
    );
  }

  Future<Address?> show({
    required BuildContext context,
    required AppTheme theme,
    Address? address,
    Function(Address)? onChanged,
  }) async {
    return convertAddress(
      await JapaneseAddressPicker.show(
        context,
        initialValue: address?.prefecture != null
            ? AddressModel(
                city: address?.city,
                prefecture: address?.prefecture ?? '',
              )
            : null,
        theme: JapaneseAddressPickerTheme(
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
