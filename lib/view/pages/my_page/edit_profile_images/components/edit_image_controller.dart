import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/my_page/edit_profile_images/edit_profile_images_state.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/bottom_sheet/photo_actions_sheet.dart';
import 'package:gap/gap.dart';

class EditImageController extends StatelessWidget {
  const EditImageController({
    super.key,
    required this.theme,
    required this.width,
    required this.height,
    this.borderRadius,
    required this.data,
    required this.onChange,
  });

  final AppTheme theme;
  final double width;
  final double height;
  final BorderRadiusGeometry? borderRadius;
  final EditProfileImagesStateItem data;
  final void Function(File)? onChange;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      /// プロフィール写真の選択
      onTap: onChange != null
          ? () async {
              final file = await PhotoActionsSheet.getPhoto(theme, context);
              if (file != null) {
                onChange!(file);
              }
            }
          : null,
      child: SizedBox(
        width: width,
        height: height,
        child: _build(),
      ),
    );
  }

  Widget _build() {
    /// 表示画像を削除
    if (data.isDeleted) {
      return _noImage();
    }

    /// File画像を表示
    if (data.updateFile != null) {
      return ClipRRect(
        borderRadius: borderRadius,
        child: Image.file(
          data.updateFile!,
          fit: BoxFit.cover,
        ),
      );
    }

    /// URLを表示
    if (data.imageUrl != null) {
      return ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.zero,
        child: Image.network(
          data.imageUrl!,
          fit: BoxFit.cover,
        ),
      );
    }

    /// 表示画像が存在しない
    return _noImage();
  }

  Widget _noImage() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          Assets.images.icons.iconCamera.path,
          fit: BoxFit.contain,
        ),
        const Gap(5),
        Text(
          LocaleKeys.edit_profile_picture_page_add.tr(),
          style: theme.textTheme.h20.paint(theme.appColors.subText3).bold(),
        ),
      ],
    );
  }
}
