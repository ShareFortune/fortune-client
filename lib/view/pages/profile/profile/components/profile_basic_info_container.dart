import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/base/address/address.dart';
import 'package:fortune_client/data/model/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/enum/drink_frequency.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/profile/profile/components/profile_container.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';

class ProfileBasicInfoContainer extends StatelessWidget {
  const ProfileBasicInfoContainer({
    super.key,
    required this.theme,
    required this.address,
    required this.stature,
    required this.drinkFrequency,
    required this.cigaretteFrequency,
    this.onUpdate,
  });

  final AppTheme theme;
  final Address address;
  final int? stature;
  final DrinkFrequency? drinkFrequency;
  final CigaretteFrequency? cigaretteFrequency;
  final VoidCallback? onUpdate;

  @override
  Widget build(BuildContext context) {
    final emptyText = LocaleKeys.data_empty.tr();

    return ProfileContainer(
      theme: theme,
      title: LocaleKeys.myPage_profiles_detail_title.tr(),
      trailing: onUpdate != null ? editButton() : null,
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
                    args: [stature.toString()],
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
    return TextButton(
      onPressed: onUpdate,
      child: Text(
        LocaleKeys.myPage_profiles_detail_edit.tr(),
        style: theme.textTheme.h30.paint(theme.appColors.primary),
      ),
    );
  }

  Widget basicInfoTile(AppTheme theme, String title, String value) {
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
          Text(
            title,
            style: theme.textTheme.h30.paint(theme.appColors.subText2),
          ),
          Text(
            value,
            style: theme.textTheme.h30.paint(theme.appColors.subText1),
          ),
        ],
      ),
    );
  }
}
