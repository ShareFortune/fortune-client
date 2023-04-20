import 'package:flutter/material.dart';
import 'package:fortune_client/view/widgets/profile/profile_view_item.dart';

/// 自己紹介
class ProfileSelfIntroductionWidget extends StatelessWidget {
  const ProfileSelfIntroductionWidget({
    Key? key,
    required this.selfIntroduction,
    this.onEdited,
  }) : super(key: key);

  final String? selfIntroduction;
  final Function(String)? onEdited;

  /// 自己紹介があるかどうか
  bool get hasData => selfIntroduction?.isNotEmpty == true;

  /// 編集可能かどうか
  bool get isEditable => onEdited != null;

  @override
  Widget build(BuildContext context) {
    return ProfileItemContainer(
      title: "自己紹介",
      onTapped: () {},
      isEditable: onEdited != null,
      hasData: hasData,
      child: Text(selfIntroduction ?? ''),
    );
  }
}
