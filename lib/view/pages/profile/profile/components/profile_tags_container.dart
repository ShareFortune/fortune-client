import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/base/tag/tag.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/profile/profile/components/profile_container.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/other/tag_widget.dart';

class ProfileTagsContainer extends StatelessWidget {
  const ProfileTagsContainer({
    super.key,
    required this.theme,
    required this.tags,
    this.onTap,
  });

  final AppTheme theme;
  final List<Tag> tags;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ProfileContainer(
      theme: theme,
      title: LocaleKeys.myPage_profiles_tags_title.tr(),
      trailing: null,
      onTap: onTap,
      child: tags.isEmpty
          ? Text(
              LocaleKeys.myPage_profiles_tags_empty.tr(),
              style: theme.textTheme.h30.paint(theme.appColors.subText3),
            )
          : Wrap(
              spacing: 10,
              runSpacing: 10,
              children: tags.map((e) {
                return TagWidget(value: e.name);
              }).toList(),
            ),
    );
  }
}
