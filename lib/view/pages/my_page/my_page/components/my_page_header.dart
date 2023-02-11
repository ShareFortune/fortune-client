import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/enum/gender.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/util/logger/logger.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/bottom_sheet/photo_actions_sheet.dart';
import 'package:gap/gap.dart';

class MyPageHeader extends StatelessWidget {
  const MyPageHeader({
    super.key,
    required this.theme,
    required this.iconUrl,
    required this.name,
    required this.age,
    required this.gender,
    required this.onSave,
  });

  final AppTheme theme;
  final String iconUrl;
  final String name;
  final int age;
  final Gender gender;
  // final Function(File) onSave;
  final Function() onSave;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          InkWell(
            onTap: onSave,
            // onTap: () async {
            //   /// プロフィール写真の選択
            //   await showPhotoActionSheet(context, (file) async {
            //     if (file != null) {
            //       logger.i(file.path);
            //       onSave(file);
            //     }
            //   });
            // },
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                ClipOval(
                  child: Image.network(
                    iconUrl,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                CircleAvatar(
                  radius: 12,
                  backgroundColor: theme.appColors.onBackground,
                  child: const CircleAvatar(
                    radius: 10,
                    child: Icon(
                      Icons.add,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Gap(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: theme.textTheme.h50.bold()),
              const Gap(5),
              RichText(
                text: TextSpan(
                  style: theme.textTheme.h30.paint(theme.appColors.subText3),
                  children: [
                    TextSpan(
                      text: LocaleKeys.data_profile_age_data.tr(
                        namedArgs: {"age": age.toString()},
                      ),
                    ),
                    const TextSpan(text: "・"),
                    TextSpan(text: gender.text),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
