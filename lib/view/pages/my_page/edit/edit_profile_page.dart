import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/profiles/get_v1_profiles/get_v1_profiles.dart';
import 'package:fortune_client/view/pages/my_page/edit/edit_profile_state.dart';
import 'package:fortune_client/view/pages/my_page/edit/edit_profile_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:fortune_client/view/widgets/profile/profile.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EditProfilePageArguments {
  final GetV1ProfilesResponse profile;

  EditProfilePageArguments(this.profile);
}

class EditProfilePage extends HookConsumerWidget {
  const EditProfilePage({super.key, required this.arguments});

  final EditProfilePageArguments arguments;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(editProfileViewModelProvider(arguments.profile));
    final viewModel =
        ref.watch(editProfileViewModelProvider(arguments.profile).notifier);

    final profileWidget = ProfileWidget(theme, state.profile);

    return Scaffold(
      backgroundColor: theme.appColors.onBackground,
      appBar: const BackAppBar(title: "写真編集"),
      body: ListView(
        children: [
          const Gap(20),
          _ProfileImageEditor(images: state.images),
          profileWidget.introduction(
            onTapped: () {},
          ),
          profileWidget.tags(
            onTapped: () {},
          ),
          profileWidget.basicInfo(
            changeName: () {},
            changeAddress: () {},
            changeHeight: () {},
            changeCigaretteFrequency: () {},
            changeDrinkFrequency: () {},
          ),
        ],
      ),
    );
  }
}

/// プロフィール写真編集
class _ProfileImageEditor extends HookConsumerWidget {
  const _ProfileImageEditor({required this.images});

  final List<ProfileImage> images;

  double get _imageSize => 100;
  Radius get _imageRadius => const Radius.circular(12);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    for (var image in images) {
      precacheImage(image.image, context);
    }

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
            itemCount: images.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            separatorBuilder: (context, index) => const Gap(10),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  /// TODO: 画像を削除する
                  /// TODO: 画像を追加する
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
}
