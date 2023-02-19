import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/core/base/address/address.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/icon/circle_icon.dart';
import 'package:gap/gap.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
    required this.theme,
    required this.iconURL,
    required this.name,
    required this.age,
    required this.address,
  });

  final AppTheme theme;
  final String iconURL;
  final String name;
  final int age;
  final Address address;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          CircleIconWidget(
            radius: 30,
            url: iconURL,
          ),
          const Gap(20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "miho",
                style: theme.textTheme.h50.bold(),
              ),
              Text(
                "23歳・東京",
                style: theme.textTheme.h40,
              ),
            ],
          )
        ],
      ),
    );
  }
}
