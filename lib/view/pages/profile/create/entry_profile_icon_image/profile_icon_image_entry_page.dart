import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fortune_client/view/hooks/use_router.dart';
import 'package:fortune_client/view/widgets/basic_app_bar.dart';
import 'package:fortune_client/view/pages/profile/create/entry_profile_icon_image/profile_icon_image_entry_view_model.dart';
import 'package:fortune_client/view/pages/profile/create/components/next_button.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileIconImageEntryPage extends HookConsumerWidget {
  const ProfileIconImageEntryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = useRouter();
    final state = ref.watch(profileIconImageEntryViewModelProvider);
    final viewModel =
        ref.watch(profileIconImageEntryViewModelProvider.notifier);

    return Scaffold(
      appBar: const BasicAppBar(
        title: "アイコン写真を登録しよう！",
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(
            top: 50,
            left: 60,
            right: 60,
            bottom: 50,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  _iconImageInputField(
                    file: state.imageFile,
                    onTap: () async {
                      await viewModel.pickImage();
                    },
                  ),
                  const Gap(80),
                  const Text("こんな画像を設定したら、"),
                  const Text("マッチしやすくなるよ的なやつを入れる。"),
                ],
              ),
              nextButton(
                state.imageFile != null,
                () => viewModel.onTapNextBtn(router),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _iconImageInputField({
    required File? file,
    required Function()? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          image: file != null
              ? DecorationImage(
                  image: Image.file(file, fit: BoxFit.cover).image,
                )
              : null,
          color: const Color(0xFFF5F5F5),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
