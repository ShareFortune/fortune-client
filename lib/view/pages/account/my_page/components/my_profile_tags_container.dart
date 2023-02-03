import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/base/tag/tag.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/account/my_page/components/my_profile_container.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/other/tag_widget.dart';

class MyProfileTagsContainer extends StatelessWidget {
  const MyProfileTagsContainer({
    super.key,
    required this.theme,
    required this.tags,
    required this.onTap,
  });

  final AppTheme theme;
  final List<Tag>? tags;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return MyProfileContainer(
      theme: theme,
      title: LocaleKeys.myPage_subTitle_tags.tr(),
      trailing: null,
      onTap: onTap,
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: tags!.map((e) {
          return TagWidget(value: e.name);
        }).toList(),
      ),
    );
  }
}
