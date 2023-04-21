import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/core/base/address/address.dart';
import 'package:flutter_japanese_address_picker/flutter_japanese_address_picker.dart'
    hide Address;
import 'package:fortune_client/data/model/core/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/core/enum/drink_frequency.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/common/input/input_text.dart';
import 'package:fortune_client/view/routes/route_navigator.dart';
import 'package:fortune_client/view/routes/route_path.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/picker/base_bottom_picker.dart';
import 'package:fortune_client/view/widgets/profile/profile_view_item.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 基本情報
class ProfileBasicInfoWidget extends ConsumerWidget {
  const ProfileBasicInfoWidget({
    Key? key,
    required this.name,
    required this.address,
    required this.height,
    required this.drinkFrequency,
    required this.cigaretteFrequency,
    this.changeName,
    this.changeAddress,
    this.changeHeight,
    this.changeDrinkFrequency,
    this.changeCigaretteFrequency,
  }) : super(key: key);

  final String name;
  final Address address;
  final int? height;
  final DrinkFrequency? drinkFrequency;
  final CigaretteFrequency? cigaretteFrequency;

  final Function(String)? changeName;
  final Function(Address)? changeAddress;
  final Function(int)? changeHeight;
  final Function(DrinkFrequency)? changeDrinkFrequency;
  final Function(CigaretteFrequency)? changeCigaretteFrequency;

  bool get isEditable =>
      changeName != null ||
      changeAddress != null ||
      changeHeight != null ||
      changeDrinkFrequency != null ||
      changeCigaretteFrequency != null;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return ProfileItemContainer(
      title: "基本情報",
      isEditable: isEditable,
      border: BorderSide.none,
      isArrow: false,
      child: Column(children: [
        /// 名前
        if (changeName != null)
          _Item(
            isEdit: true,
            title: "名前",
            value: name,
            onTapped: () {
              navigator.navigateTo(
                RoutePath.inputText,
                arguments: InputTextPageArguments(
                  title: "名前",
                  initialValue: name,
                  onChanged: (value) {
                    changeName?.call(value);
                  },
                ),
              );
            },
          ),

        /// 住所
        _Item(
          isEdit: changeAddress != null,
          title: LocaleKeys.data_profile_address_title.tr(),
          value: address.prefecture,
          onTapped: () async {
            await JapaneseAddressPicker.showBottomSheet(
              context,
              theme: JapaneseAddressPickerTheme(
                headerCanselStyle:
                    theme.textTheme.h30.paint(theme.appColors.subText2),
                headerSaveStyle:
                    theme.textTheme.h30.paint(theme.appColors.linkColor),
                headerColor: theme.appColors.background,
              ),
              initialValue: AddressValue(
                cityName: address.city,
                prefectureName: address.prefecture,
              ),
              onChanged: (address) {
                final newAddress = Address(
                  country: '日本',
                  prefecture: address.prefecture.name,
                  city: address.city.name,
                );
                changeAddress?.call(newAddress);
              },
            );
          },
        ),

        /// 身長
        /// nullの場合は表示しない
        _Item(
          isEdit: changeHeight != null,
          title: LocaleKeys.data_profile_stature_title.tr(),
          format: LocaleKeys.data_profile_stature_data.tr(),
          args: [height.toString()],
          onTapped: () async {
            await showModalBottomSheet(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.3,
              ),
              context: context,
              builder: (BuildContext context) {
                return BaseBottomPicker(
                  items: List.generate(71, (index) {
                    return LocaleKeys.data_profile_stature_data.tr(
                      args: [(index + 130).toString()],
                    );
                  }).toList(),
                  onChanged: (index) {
                    changeHeight?.call(index + 130);
                  },
                );
              },
            );
          },
        ),

        /// お酒
        _Item(
          isEdit: changeDrinkFrequency != null,
          title: LocaleKeys.data_profile_drinkFrequency_title.tr(),
          value: drinkFrequency?.text,
          onTapped: () async {
            await showModalBottomSheet(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.3,
              ),
              context: context,
              builder: (BuildContext context) {
                return BaseBottomPicker(
                  items: DrinkFrequency.values.map((e) => e.text).toList(),
                  onChanged: (index) {
                    changeDrinkFrequency?.call(DrinkFrequency.values[index]);
                  },
                );
              },
            );
          },
        ),

        /// タバコ
        _Item(
          isEdit: changeCigaretteFrequency != null,
          title: LocaleKeys.data_profile_cigaretteFrequency_title.tr(),
          value: cigaretteFrequency?.text,
          onTapped: () async {
            await showModalBottomSheet(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.3,
              ),
              context: context,
              builder: (BuildContext context) {
                return BaseBottomPicker(
                  items: CigaretteFrequency.values.map((e) => e.text).toList(),
                  onChanged: (index) {
                    changeCigaretteFrequency
                        ?.call(CigaretteFrequency.values[index]);
                  },
                );
              },
            );
          },
        ),
      ]),
    );
  }
}

class _Item extends HookConsumerWidget {
  const _Item({
    required this.title,
    this.value,
    this.format,
    this.args = const [],
    this.isEdit = false,
    this.onTapped,
  });

  final String title;
  final String? value;
  final String? format;
  final List<String> args;
  final bool isEdit;
  final VoidCallback? onTapped;

  String get _value {
    if (format == null) return value ?? "未設定";
    return format!.tr(args: args);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return GestureDetector(
      onTap: onTapped,
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
                  const Gap(20),
                  Icon(Icons.chevron_right, color: theme.appColors.iconBtn1),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
