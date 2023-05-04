import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/profile/profile_response/profile_response.dart';
import 'package:fortune_client/view/pages/my/edit/edit_profile_state.dart';
import 'package:fortune_client/view/pages/my/edit/edit_profile_view_model.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:fortune_client/view/widgets/bottom_sheet/photo_actions_sheet.dart';
import 'package:fortune_client/view/widgets/button/app_bar_action_button.dart';
import 'package:fortune_client/view/widgets/container/empty_image_container.dart';
import 'package:fortune_client/view/widgets/profile/profile_basic_info.dart';
import 'package:fortune_client/view/widgets/profile/profile_self_introduction.dart';
import 'package:fortune_client/view/widgets/profile/profile_tag.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:screen_loader/screen_loader.dart';

class EditProfilePageArguments {
  final ProfileResponse profile;

  EditProfilePageArguments(this.profile);
}

// ignore: must_be_immutable
class EditProfilePage extends HookConsumerWidget with ScreenLoader {
  EditProfilePage(this.arguments, {super.key});

  final EditProfilePageArguments arguments;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(editProfileViewModelProvider(arguments));
    final viewModel =
        ref.watch(editProfileViewModelProvider(arguments).notifier);

    return loadableWidget(
      child: Scaffold(
        backgroundColor: theme.appColors.onBackground,
        appBar: BackAppBar(
          title: "写真編集",
          action: [
            AppBarActionButton.save(
              callback: () async {
                await performFuture(
                  () async => await viewModel.updateProfile(),
                );
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            const Gap(20),
            _ProfileImageEditor(
              images: state.images,
              viewModel: viewModel,
            ),
            ProfileSelfIntroductionWidget(
              onEdited: viewModel.updateIntroduction,
              selfIntroduction: state.profile.selfIntroduction,
            ),
            ProfileTagWidget(
              onEdited: viewModel.updateTags,
              tags: state.profile.tags,
            ),
            ProfileBasicInfoWidget(
              name: state.profile.name,
              address: state.profile.address,
              height: state.profile.height,
              drinkFrequency: state.profile.drinkFrequency,
              cigaretteFrequency: state.profile.cigaretteFrequency,
              onEditedName: viewModel.updateName,
              onEditedAddress: viewModel.updateAddress,
              onEditedHeight: viewModel.updateHeight,
              onEditedDrinkFrequency: viewModel.updateDrinkFrequency,
              onEditedCigaretteFrequency: viewModel.updateCigaretteFrequency,
            ),
          ],
        ),
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

    // /// 画像をキャッシュしておく
    // images.map((e) => precacheImage(e.image, context));

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
                return EmptyImageContainer(
                  imageSize: _imageSize,
                  onTap: () async {
                    await PhotoActionsSheet.getPhoto(viewModel.addImage);
                  },
                );
              }

              /// プロフィール写真
              return GestureDetector(
                onTap: () {
                  _showActionSheet(
                    context: context,
                    theme: theme,
                    update: (file) => viewModel.updateImage(index, file),
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
    required Function(File) update,
    required VoidCallback delete,
  }) {
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
            ActionSheetItem(
              title: '変更する',
              callback: () => PhotoActionsSheet.getPhoto(update),
            ),

            /// 画像を削除する
            ActionSheetItem(
              isDefaultAction: false,
              title: '削除する',
              callback: delete,
            ),
          ],
          cancelButton: const ActionSheetCancelBtn(),
        );
      },
    );
  }
}
