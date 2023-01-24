import 'package:flutter/material.dart';
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
    /// テキスト
    Widget text;

    if (selfIntroduction.isEmpty) {
      text = Text(
        "自己紹介文を入力しましょう",
        style: theme.textTheme.h30.paint(theme.appColors.subText3),
      );
    } else {
      text = Text(
        selfIntroduction,
        style: theme.textTheme.h30.paint(theme.appColors.subText1),
      );
    }

    return MyProfileContainer(
      theme: theme,
      title: "自己紹介",
      trailing: null,
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: selfIntroduction.isEmpty ? 30 : 10,
        ),
        child: text,
      ),
    );
  }
}
