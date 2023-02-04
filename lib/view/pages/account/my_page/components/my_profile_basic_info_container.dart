import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/base/address/address.dart';
import 'package:fortune_client/data/model/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/enum/drink_frequency.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/account/my_page/components/my_profile_container.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';

class MyProfileBasicInfoContainer extends StatelessWidget {
  const MyProfileBasicInfoContainer({
    super.key,
    required this.theme,
    required this.address,
    required this.stature,
    required this.drinkFrequency,
    required this.cigaretteFrequency,
    required this.onUpdate,
  });

  final AppTheme theme;
  final Address address;
  final int? stature;
  final DrinkFrequency? drinkFrequency;
  final CigaretteFrequency? cigaretteFrequency;
  final VoidCallback onUpdate;

  @override
  Widget build(BuildContext context) {
    final emptyText = LocaleKeys.data_profile_empty.tr();

    return MyProfileContainer(
      theme: theme,
      title: LocaleKeys.myPage_profiles_detail_title.tr(),
      trailing: editButton(),
      onTap: null,
      child: Column(
        children: [
          /// 居住地
          basicInfoTile(
            theme,
            LocaleKeys.data_profile_address_title.tr(),
            address.text,
          ),

          /// 身長
          basicInfoTile(
            theme,
            LocaleKeys.data_profile_stature_title.tr(),
            stature != null
                ? LocaleKeys.data_profile_stature_data.tr(
                    namedArgs: {"stature": stature.toString()},
                  )
                : emptyText,
          ),

          /// お酒
          basicInfoTile(
            theme,
            LocaleKeys.data_profile_drinkFrequency_title.tr(),
            drinkFrequency?.text ?? emptyText,
          ),

          /// タバコ
          basicInfoTile(
            theme,
            LocaleKeys.data_profile_cigaretteFrequency_title.tr(),
            cigaretteFrequency?.text ?? emptyText,
          ),
        ],
      ),
    );
  }

  Widget editButton() {
    final textColor = theme.appColors.primary;
    final textStyle = theme.textTheme.h30.paint(textColor);

    return TextButton(
      onPressed: onUpdate,
      child: Text("編集する", style: textStyle),
    );
  }

  Widget basicInfoTile(AppTheme theme, String title, String value) {
    final titleTextColor = theme.appColors.subText2;
    final titleTextStyle = theme.textTheme.h30.paint(titleTextColor);

    final valueTextColor = theme.appColors.subText1;
    final valueTextStyle = theme.textTheme.h30.paint(valueTextColor);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: theme.appColors.border2, width: 1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: titleTextStyle),
          Text(value, style: valueTextStyle),
        ],
      ),
    );
  }
}
