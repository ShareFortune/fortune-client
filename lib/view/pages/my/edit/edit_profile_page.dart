import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fortune_client/data/model/profile/profile_response/profile_response.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/my/edit/edit_profile_state.dart';
import 'package:fortune_client/view/pages/my/edit/edit_profile_view_model.dart';
import 'package:fortune_client/view/routes/route_navigator.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:fortune_client/view/widgets/bottom_sheet/photo_actions_sheet.dart';
import 'package:fortune_client/view/widgets/profile/profile_basic_info.dart';
import 'package:fortune_client/view/widgets/profile/profile_self_introduction.dart';
import 'package:fortune_client/view/widgets/profile/profile_tag.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EditProfilePageArguments {
  final ProfileResponse profile;

  EditProfilePageArguments(this.profile);
}

class EditProfilePage extends HookConsumerWidget {
  const EditProfilePage(this.arguments, {super.key});

  final EditProfilePageArguments arguments;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(editProfileViewModelProvider(arguments.profile));
    final viewModel =
        ref.watch(editProfileViewModelProvider(arguments.profile).notifier);

    return Scaffold(
      backgroundColor: theme.appColors.onBackground,
      appBar: const BackAppBar(title: "写真編集"),
      body: ListView(
        children: [
          const Gap(20),
          _ProfileImageEditor(
            images: state.images,
            viewModel: viewModel,
          ),
          ProfileSelfIntroductionWidget(
            onEdited: viewModel.changeIntroduction,
            selfIntroduction: state.profile.selfIntroduction,
          ),
          ProfileTagWidget(
            onEdited: viewModel.changeTags,
            tags: state.profile.tags,
          ),
          ProfileBasicInfoWidget(
            name: state.profile.name,
            address: state.profile.address,
            height: state.profile.height,
            drinkFrequency: state.profile.drinkFrequency,
            cigaretteFrequency: state.profile.cigaretteFrequency,
            onEditedName: viewModel.changeName,
            onEditedAddress: viewModel.changeAddress,
            onEditedHeight: viewModel.changeHeight,
            onEditedDrinkFrequency: viewModel.changeDrinkFrequency,
            onEditedCigaretteFrequency: viewModel.changeCigaretteFrequency,
          ),
        ],
      ),
    );
  }
}

/// プロフィール写真編集
class _ProfileImageEditor extends HookConsumerWidget {
  const _ProfileImageEditor({
    required this.images,
    required this.viewModel,
  });

  final List<ProfileImage> images;
  final EditProfileViewModel viewModel;

  double get _imageSize => 100;
  Radius get _imageRadius => const Radius.circular(12);

  /// 画像の最大数
  int get _maxImageCount => 6;

  /// 表示画像数
  /// 画像が6枚未満の場合は、追加ボタンを表示するため+1する
  int get _imageCount =>
      images.length < _maxImageCount ? images.length + 1 : _maxImageCount;

  /// 画像が最大数に達しているか
  bool get _isMaxImageCount => images.length >= _maxImageCount;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    /// 画像をキャッシュしておく
    images.map((e) => precacheImage(e.image, context));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "プロフィール写真  ${images.length} / 6 枚",
            style: theme.textTheme.h30.bold(),
          ),
        ),
        const Gap(20),
        SizedBox(
          height: _imageSize + 2,
          child: ListView.separated(
            itemCount: _imageCount,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            separatorBuilder: (context, index) => const Gap(10),
            itemBuilder: (context, index) {
              /// 画像が最大数に達していない場合は再以後の要素に追加ボタンを表示する
              if (!_isMaxImageCount && index == _imageCount - 1) {
                return InkWell(
                  onTap: () async {
                    final file =
                        await PhotoActionsSheet.getPhoto(theme, context);
                    if (file != null) {
                      viewModel.addImage(ProfileImage(FileImage(file)));
                    }
                  },
                  child: DottedBorder(
                    color: theme.appColors.border1,
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(10),
                    child: SizedBox(
                      height: _imageSize,
                      width: _imageSize,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            Assets.images.icons.iconCamera.path,
                            fit: BoxFit.contain,
                          ),
                          const Gap(5),
                          Text(
                            LocaleKeys.edit_profile_picture_page_add.tr(),
                            style: theme.textTheme.h20
                                .paint(theme.appColors.subText3)
                                .bold(),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }

              /// プロフィール写真
              return GestureDetector(
                onTap: () {
                  _showActionSheet(
                    context: context,
                    theme: theme,
                    update: (image) => viewModel.changeImage(index, image),
                    delete: () => viewModel.removeImage(index),
                  );
                },
                child: Container(
                  height: _imageSize,
                  width: _imageSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(_imageRadius),
                    image: DecorationImage(
                      image: images[index].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const Gap(20),
        Divider(height: 0.5, color: theme.appColors.border1),
      ],
    );
  }

  /// アクションシートを表示する
  /// [update] 画像を更新する
  /// [delete] 画像を削除する
  void _showActionSheet({
    required BuildContext context,
    required AppTheme theme,
    required Function(ProfileImage) update,
    required VoidCallback delete,
  }) {
    final textStyle = theme.textTheme.h50;
    final defaultTextStyle = textStyle.paint(theme.appColors.linkColor);
    final deleteTextStyle = textStyle.paint(theme.appColors.error);

    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) {
        return CupertinoActionSheet(
          message: Text(
            'プロフィール写真を変更しますか？',
            style: theme.textTheme.h30,
          ),
          actions: <Widget>[
            /// 画像を変更する
            CupertinoActionSheetAction(
              isDestructiveAction: true,
              child: Text('変更する', style: defaultTextStyle),
              onPressed: () async {
                /// 写真選択前にボトムシートを閉じる
                navigator.goBack();
                final file = await PhotoActionsSheet.getPhoto(theme, context);
                if (file != null) update(ProfileImage(FileImage(file)));
              },
            ),

            /// 画像を削除する
            CupertinoActionSheetAction(
              isDestructiveAction: true,
              child: Text('削除する', style: deleteTextStyle),
              onPressed: () {
                delete.call();
                navigator.goBack();
              },
            )
          ],
          cancelButton: CupertinoActionSheetAction(
            onPressed: navigator.goBack,
            child: Text("キャンセル", style: defaultTextStyle),
          ),
        );
      },
    );
  }
}
