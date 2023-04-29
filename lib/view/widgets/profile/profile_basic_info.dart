import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/addresses/address/address.dart';
import 'package:fortune_client/data/model/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/enum/drink_frequency.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/common/input/input_text_page.dart';
import 'package:fortune_client/view/routes/route_navigator.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/container/view_state_container.dart';
import 'package:fortune_client/view/widgets/picker/address_picker.dart';
import 'package:fortune_client/view/widgets/picker/enum_picker.dart';
import 'package:fortune_client/view/widgets/picker/number_picker.dart';
import 'package:fortune_client/view/widgets/profile/profile_view_item.dart';
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
    this.onEditedName,
    this.onEditedAddress,
    this.onEditedHeight,
    this.onEditedDrinkFrequency,
    this.onEditedCigaretteFrequency,
  }) : super(key: key);

  final String name;
  final Address address;
  final int? height;
  final DrinkFrequency? drinkFrequency;
  final CigaretteFrequency? cigaretteFrequency;

  final Function(String)? onEditedName;
  final Function(Address)? onEditedAddress;
  final Function(int)? onEditedHeight;
  final Function(DrinkFrequency?)? onEditedDrinkFrequency;
  final Function(CigaretteFrequency?)? onEditedCigaretteFrequency;

  bool get isEditable =>
      onEditedName != null ||
      onEditedAddress != null ||
      onEditedHeight != null ||
      onEditedDrinkFrequency != null ||
      onEditedCigaretteFrequency != null;

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
        if (onEditedName != null)
          ViewStateContainer(
            isEdit: true,
            title: "名前",
            format: name,
            onTapped: () {
              navigator.navigateTo(
                RoutePath.inputText,
                arguments: InputTextPageArguments(
                  title: "名前",
                  initialValue: name,
                  onChanged: onEditedName,
                ),
              );
            },
          ),

        /// 住所
        ViewStateContainer(
          isEdit: onEditedAddress != null,
          title: LocaleKeys.data_profile_address_title.tr(),
          format: address.prefecture,
          onTapped: () async {
            await AddressPicker().show(
              context: context,
              theme: theme,
              address: address,
              onChanged: onEditedAddress,
            );
          },
        ),

        /// 身長
        /// nullの場合は表示しない
        ViewStateContainer(
          isEdit: onEditedHeight != null,
          title: LocaleKeys.data_profile_stature_title.tr(),
          format: LocaleKeys.data_profile_stature_data.tr(),
          args: [height.toString()],
          hasValue: height?.isNegative == false,
          onTapped: () async {
            await NumberPicker.height().show(
              context: context,
              onChanged: onEditedHeight,
            );
          },
        ),

        /// お酒
        ViewStateContainer(
          isEdit: onEditedDrinkFrequency != null,
          title: LocaleKeys.data_profile_drinkFrequency_title.tr(),
          format: drinkFrequency?.text,
          onTapped: () async {
            EnumPicker<DrinkFrequency>.drinkFrequency().show(
              context: context,
              onConvert: DrinkFrequencyEx.fromText,
              onChanged: (drinkFrequency) {
                onEditedDrinkFrequency?.call(drinkFrequency);
              },
            );
          },
        ),

        /// タバコ
        ViewStateContainer(
          isEdit: onEditedCigaretteFrequency != null,
          title: LocaleKeys.data_profile_cigaretteFrequency_title.tr(),
          format: cigaretteFrequency?.text,
          hasValue: cigaretteFrequency?.text != null,
          onTapped: () {
            EnumPicker<CigaretteFrequency>.cigaretteFrequency().show(
              context: context,
              onConvert: CigaretteFrequencyEx.fromText,
              onChanged: (cigaretteFrequency) {
                onEditedCigaretteFrequency?.call(cigaretteFrequency);
              },
            );
          },
        ),
      ]),
    );
  }
}
