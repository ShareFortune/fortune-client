import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/account/edit_profile_images/components/edit_image_controller.dart';
import 'package:fortune_client/view/pages/account/edit_profile_images/edit_profile_images_state.dart';
import 'package:fortune_client/view/theme/app_theme.dart';

class EditImageContainer extends StatelessWidget {
  const EditImageContainer({
    Key? key,
    required this.theme,
    required this.data,
    required this.onChange,
    required this.onClear,
  }) : super(key: key);

  final AppTheme theme;
  final EditProfileImagesStateItem data;
  final Function(File) onChange;
  final VoidCallback onClear;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      /// 画像削除
      onTap: () {
        print("画像を選択しますか？");
      },
      child: DottedBorder(
        color: theme.appColors.border1,
        borderType: BorderType.RRect,
        radius: const Radius.circular(10),
        child: EditImageController(
          theme: theme,
          width: 110,
          height: 110,
          borderRadius: BorderRadius.circular(10),
          data: data,
          onChange: data.isDisplay() ? null : onChange,
        ),
      ),
    );
  }
}
