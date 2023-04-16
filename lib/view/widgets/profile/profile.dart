import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/core/enum/gender.dart';
import 'package:fortune_client/data/model/profiles/get_v1_profiles/get_v1_profiles.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/icon/user_icon_widget.dart';
import 'package:fortune_client/view/widgets/other/tag_widget.dart';
import 'package:fortune_client/view/widgets/profile/profile_basic_info_list_view.dart';
import 'package:fortune_client/view/widgets/profile/profile_image_page_view.dart';
import 'package:fortune_client/view/widgets/profile/profile_view_item.dart';
import 'package:fortune_client/data/model/core/enum/cigarette_frequency.dart';
import 'package:fortune_client/data/model/core/enum/drink_frequency.dart';

class ProfileView {
  ProfileView(this.theme, this.profile);

  final AppTheme theme;
  final GetV1ProfilesResponse profile;

  Widget images() {
    return ProfileImagePageView([
      profile.mainImageURL,
      profile.mainImageURL,
      profile.mainImageURL,
    ]);
  }

  Widget header() {
    return ProfileItemContainer(
      title: profile.name,
      middleMargin: 5,
      leading: UserIconWidget(profile.mainImageURL, radius: 30),
      child: Text(
        '${profile.gender.text}・${profile.address.prefecture}',
        style: theme.textTheme.h30,
      ),
    );
  }

  Widget introduction() {
    return ProfileItemContainer(
      title: "自己紹介",
      hasData: profile.selfIntroduction?.isNotEmpty == true,
      child: Text(profile.selfIntroduction ?? ''),
    );
  }

  Widget tags() {
    return ProfileItemContainer(
      title: LocaleKeys.myPage_profiles_tags_title.tr(),
      middleMargin: 20,
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

  Widget basicInfo() {
    return ProfileItemContainer(
      title: "基本情報",
      border: BorderSide.none,
      child: Column(
        children: [
          /// 住所
          ProfileBasicInfoListViewItem(
            title: LocaleKeys.data_profile_address_title.tr(),
            value: profile.address.prefecture,
          ),

          /// 身長
          /// nullの場合は表示しない
          ProfileBasicInfoListViewItem(
            title: LocaleKeys.data_profile_stature_title.tr(),
            format: LocaleKeys.data_profile_stature_data.tr(),
            args: [profile.height.toString()],
          ),

          /// お酒
          ProfileBasicInfoListViewItem(
            title: LocaleKeys.data_profile_drinkFrequency_title.tr(),
            value: profile.drinkFrequency?.text,
          ),

          /// タバコ
          ProfileBasicInfoListViewItem(
            title: LocaleKeys.data_profile_cigaretteFrequency_title.tr(),
            value: profile.cigaretteFrequency?.text,
          ),
        ],
      ),
    );
  }
}
