import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/common/input/input_long_text_page.dart';
import 'package:fortune_client/view/routes/route_navigator.dart';
import 'package:fortune_client/view/routes/route_path.dart';
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

  @override
  Widget build(BuildContext context) {
    return ProfileItemContainer(
      title: "自己紹介",
      onTapped: () {
        navigator.navigateTo(
          RoutePath.inputLongText,
          arguments: InputLongTextPageArguments(
            title: "自己紹介",
            initialValue: selfIntroduction,
            onChanged: (value) {
              onEdited?.call(value);
            },
          ),
        );
      },
      isEditable: onEdited != null,
      hasData: hasData,
      child: Text(selfIntroduction ?? ''),
    );
  }
}
