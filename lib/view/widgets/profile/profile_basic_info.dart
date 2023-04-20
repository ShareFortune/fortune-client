import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/core/base/address/address.dart';
import 'package:fortune_client/data/model/core/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/core/enum/drink_frequency.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/profile/profile_view_item.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 基本情報
class ProfileBasicInfoWidget extends StatelessWidget {
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

  final VoidCallback? changeName;
  final VoidCallback? changeAddress;
  final VoidCallback? changeHeight;
  final VoidCallback? changeDrinkFrequency;
  final VoidCallback? changeCigaretteFrequency;

  bool get isEditable =>
      changeName != null ||
      changeAddress != null ||
      changeHeight != null ||
      changeDrinkFrequency != null ||
      changeCigaretteFrequency != null;

  @override
  Widget build(BuildContext context) {
    return ProfileItemContainer(
      title: "基本情報",
      isEditable: isEditable,
      isArrow: false,
      child: Column(children: [
        /// 名前
        if (changeName != null)
          _Item(
            isEdit: true,
            title: "名前",
            value: name,
            onTapped: () {},
          ),

        /// 住所
        _Item(
          isEdit: changeAddress != null,
          title: LocaleKeys.data_profile_address_title.tr(),
          value: address.prefecture,
          onTapped: () {},
        ),

        /// 身長
        /// nullの場合は表示しない
        _Item(
          isEdit: changeHeight != null,
          title: LocaleKeys.data_profile_stature_title.tr(),
          format: LocaleKeys.data_profile_stature_data.tr(),
          args: [height.toString()],
          onTapped: () {},
        ),

        /// お酒
        _Item(
          isEdit: changeDrinkFrequency != null,
          title: LocaleKeys.data_profile_drinkFrequency_title.tr(),
          value: drinkFrequency?.text,
          onTapped: () {},
        ),

        /// タバコ
        _Item(
          isEdit: changeCigaretteFrequency != null,
          title: LocaleKeys.data_profile_cigaretteFrequency_title.tr(),
          value: cigaretteFrequency?.text,
          onTapped: () {},
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

    return Container(
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
    );
  }
}
