import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/my_page/edit_profile_images/components/edit_image_controller.dart';
import 'package:fortune_client/view/pages/my_page/edit_profile_images/edit_profile_images_state.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/bottom_sheet/photo_actions_sheet.dart';

class EditImageContainer extends StatelessWidget {
  const EditImageContainer({
    Key? key,
    required this.theme,
    required this.data,
    required this.sideLength,
    required this.onChange,
    required this.onClear,
  }) : super(key: key);

  final AppTheme theme;
  final EditProfileImagesStateItem data;
  final double sideLength;
  final Function(File) onChange;
  final VoidCallback onClear;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      /// 画像削除
      onTap: () async {
        final result = await PhotoActionsSheet.deleteConfirmation(
          theme: theme,
          context: context,
          title: LocaleKeys.edit_profile_picture_page_title.tr(),
        );
        if (result != null && result) {
          onClear();
        }
      },
      child: DottedBorder(
        color: theme.appColors.border1,
        borderType: BorderType.RRect,
        radius: const Radius.circular(10),
        child: EditImageController(
            theme: theme,
            width: sideLength,
            height: sideLength,
            borderRadius: BorderRadius.circular(10),
            data: data,
            onChange: data.isDisplay ? null : onChange),
      ),
    );
  }
}
