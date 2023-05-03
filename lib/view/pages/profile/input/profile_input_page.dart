import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fortune_client/data/model/enum/gender.dart';
import 'package:fortune_client/view/pages/profile/input/components/profile_input_app_bar.dart';
import 'package:fortune_client/view/pages/profile/input/components/profile_input_list_tile.dart';
import 'package:fortune_client/view/pages/profile/input/components/profile_input_next_button.dart';
import 'package:fortune_client/view/pages/profile/input/profile_input_view_model.dart';
import 'package:fortune_client/view/routes/route_navigator.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/bottom_sheet/photo_actions_sheet.dart';
import 'package:fortune_client/view/widgets/container/empty_image_container.dart';
import 'package:fortune_client/view/widgets/picker/address_picker.dart';
import 'package:fortune_client/view/widgets/picker/enum_picker.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:screen_loader/screen_loader.dart';

// ignore: must_be_immutable
class ProfileInputPage extends HookConsumerWidget with ScreenLoader {
  ProfileInputPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(profileInputViewModelProvider);
    final viewModel = ref.watch(profileInputViewModelProvider.notifier);

    final nicknameController = useTextEditingController();
    String? nickname = nicknameController.text;
    useListenable(nicknameController);

    return loadableWidget(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: theme.appColors.onBackground,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProfileInputAppBar("プロフィール"),
              const Gap(50),

              /// ニックネーム入力欄
              ProfileInputListTile(
                controller: nicknameController,
                labelText: "ニックネーム",
                hintText: "ニックネームを入力してください",
              ),
              const Gap(20),

              /// 性別入力欄
              ProfileInputListTile(
                controller: TextEditingController(text: state.gender?.text),
                labelText: "性別",
                onTap: () => EnumPicker<Gender>.gender().show(
                  context: context,
                  onConvert: GenderEx.fromText,
                  onChanged: viewModel.changeGender,
                ),
              ),
              const Gap(20),

              /// 居住地入力欄
              ProfileInputListTile(
                controller: TextEditingController(text: state.address?.text),
                labelText: "居住地",
                onTap: () => AddressPicker().show(
                  context: context,
                  theme: theme,
                  onChanged: viewModel.changeAddress,
                ),
              ),
              const Gap(50),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    Text(
                      "プロフィール写真",
                      style:
                          theme.textTheme.h30.paint(theme.appColors.subText1),
                    ),
                    const Gap(20),
                    _ImageInputField(
                      image: state.image,
                      onSelected: viewModel.changeImages,
                    ),
                  ],
                ),
              ),

              const Spacer(),
              ProfileInputNextButton(
                clickable: viewModel.isPossibleToCreateProfile(nickname),
                onPressed: () async {
                  await performFuture(() async {
                    final isCreated = await viewModel.createProfile(nickname);
                    if (isCreated) navigator.navigateTo(RoutePath.home);
                  });
                },
              ),
              const Gap(100),
            ],
          ),
        ),
      ),
    );
  }
}

class _ImageInputField extends HookConsumerWidget {
  const _ImageInputField({
    required this.image,
    required this.onSelected,
  });

  final File? image;
  final Function(File)? onSelected;

  final double imageSize = 100;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    Future<void> changeImage() async {
      final file = await PhotoActionsSheet.getPhoto(theme, context);
      if (file != null) onSelected?.call(file);
    }

    if (image == null) {
      return EmptyImageContainer(
        imageSize: imageSize,
        onTap: changeImage,
      );
    }

    return GestureDetector(
      onTap: changeImage,
      child: Container(
        height: imageSize,
        width: imageSize,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          image: DecorationImage(
            image: FileImage(image!),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
