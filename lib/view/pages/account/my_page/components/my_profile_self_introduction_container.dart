import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/account/my_page/components/my_profile_container.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';

class MyProfileSelfIntroductionContainer extends StatelessWidget {
  const MyProfileSelfIntroductionContainer({
    super.key,
    required this.theme,
    required this.selfIntroduction,
    required this.onTap,
  });

  final AppTheme theme;
  final String selfIntroduction;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return MyProfileContainer(
      theme: theme,
      title: LocaleKeys.myPage_profiles_selfIntroduction_title.tr(),
      trailing: null,
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: selfIntroduction.isEmpty ? 30 : 10,
        ),
        child: selfIntroduction.isEmpty
            ? Text(
                LocaleKeys.myPage_profiles_selfIntroduction_empty.tr(),
                style: theme.textTheme.h30.paint(theme.appColors.subText3),
              )
            : Text(
                selfIntroduction,
                style: theme.textTheme.h30.paint(theme.appColors.subText1),
              ),
      ),
    );
  }
}
