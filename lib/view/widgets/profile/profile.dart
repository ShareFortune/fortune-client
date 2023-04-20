import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/core/enum/gender.dart';
import 'package:fortune_client/data/model/profiles/get_v1_profiles/get_v1_profiles.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/icon/user_icon_widget.dart';
import 'package:fortune_client/view/widgets/other/tag_widget.dart';
import 'package:fortune_client/view/widgets/profile/profile_basic_info_list_view.dart';
import 'package:fortune_client/view/widgets/profile/profile_photo_view.dart';
import 'package:fortune_client/view/widgets/profile/profile_view_item.dart';
import 'package:fortune_client/data/model/core/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/core/enum/drink_frequency.dart';

class ProfileWidget {
  ProfileWidget(this.theme, this.profile);

  final AppTheme theme;
  final GetV1ProfilesResponse profile;

  Widget images({int visiblePhotoIndex = 0}) {
    return ProfilePhotoView(
      images: profile.images(),
      visiblePhotoIndex: visiblePhotoIndex,
    );
  }

  Widget header({VoidCallback? onTapped}) {
    return ProfileItemContainer(
      title: profile.name,
      middleMargin: 5,
      onTapped: onTapped,
      leading: UserIconWidget(profile.mainImageURL, radius: 30),
      child: Text(
        '${profile.gender.text}・${profile.address.prefecture}',
        style: theme.textTheme.h30,
      ),
    );
  }

  Widget introduction({VoidCallback? onTapped}) {
    return ProfileItemContainer(
      title: "自己紹介",
      onTapped: onTapped,
      hasData: profile.selfIntroduction?.isNotEmpty == true,
      child: Text(profile.selfIntroduction ?? ''),
    );
  }

  Widget tags({VoidCallback? onTapped}) {
    return ProfileItemContainer(
      title: LocaleKeys.myPage_profiles_tags_title.tr(),
      middleMargin: 20,
      onTapped: onTapped,
      hasData: profile.tags.isNotEmpty,
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: profile.tags.map((e) {
          return TagWidget(value: e.name);
        }).toList(),
      ),
    );
  }

  Widget basicInfo({
    VoidCallback? changeName,
    VoidCallback? changeAddress,
    VoidCallback? changeHeight,
    VoidCallback? changeDrinkFrequency,
    VoidCallback? changeCigaretteFrequency,
  }) {
    final isEdit = changeName != null ||
        changeAddress != null ||
        changeHeight != null ||
        changeDrinkFrequency != null ||
        changeCigaretteFrequency != null;

    return ProfileItemContainer(
      title: "基本情報",
      border: BorderSide.none,
      padding: isEdit ? const EdgeInsets.fromLTRB(20, 30, 10, 30) : null,
      child: Column(
        children: [
          /// 名前
          if (changeName != null)
            ProfileBasicInfoListViewItem(
              isEdit: true,
              title: "名前",
              value: profile.name,
              onTapped: () {
                changeName.call();
              },
            ),

          /// 住所
          ProfileBasicInfoListViewItem(
            isEdit: changeAddress != null,
            title: LocaleKeys.data_profile_address_title.tr(),
            value: profile.address.prefecture,
            onTapped: () {
              changeAddress?.call();
            },
          ),

          /// 身長
          /// nullの場合は表示しない
          ProfileBasicInfoListViewItem(
            isEdit: changeHeight != null,
            title: LocaleKeys.data_profile_stature_title.tr(),
            format: LocaleKeys.data_profile_stature_data.tr(),
            args: [profile.height.toString()],
            onTapped: () {
              changeHeight?.call();
            },
          ),

          /// お酒
          ProfileBasicInfoListViewItem(
            isEdit: changeDrinkFrequency != null,
            title: LocaleKeys.data_profile_drinkFrequency_title.tr(),
            value: profile.drinkFrequency?.text,
            onTapped: () {
              changeDrinkFrequency?.call();
            },
          ),

          /// タバコ
          ProfileBasicInfoListViewItem(
            isEdit: changeCigaretteFrequency != null,
            title: LocaleKeys.data_profile_cigaretteFrequency_title.tr(),
            value: profile.cigaretteFrequency?.text,
            onTapped: () {
              changeCigaretteFrequency?.call();
            },
          ),
        ],
      ),
    );
  }
}
