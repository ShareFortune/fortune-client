import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/core/base/address/address.dart';
import 'package:fortune_client/data/model/core/enum/gender.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/icon/user_icon_widget.dart';
import 'package:fortune_client/view/widgets/profile/profile_view_item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// ヘッダー
class ProfileHeaderWidget extends HookConsumerWidget {
  const ProfileHeaderWidget({
    super.key,
    required this.name,
    required this.iconUrl,
    required this.gender,
    required this.address,
    this.onEdited,
  });

  final String name;
  final String iconUrl;
  final Gender gender;
  final Address address;

  final VoidCallback? onEdited;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return ProfileItemContainer(
      title: name,
      middleMargin: 5,
      onTapped: () {},
      leading: UserIconWidget(iconUrl, radius: 30),
      child: Text(
        '${gender.text}・${address.prefecture}',
        style: theme.textTheme.h30,
      ),
    );
  }
}
