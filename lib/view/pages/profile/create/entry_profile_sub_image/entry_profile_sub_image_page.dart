import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fortune_client/view/widgets/app_bar/basic_app_bar.dart';
import 'package:fortune_client/view/pages/profile/create/entry_profile_sub_image/entry_profile_sub_image_view_model.dart';
import 'package:fortune_client/view/pages/profile/create/components/next_button.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EntryProfileSubImagePage extends HookConsumerWidget {
  const EntryProfileSubImagePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(entryProfileSubImageViewModelProvider);
    final viewModel = ref.watch(entryProfileSubImageViewModelProvider.notifier);

    return state.when(
      data: (data) {
        return Stack(
          children: [
            Scaffold(
              appBar: const BasicAppBar(
                title: "サブ写真を登録しよう！",
                centerTitle: true,
              ),
              body: Center(
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 50,
                    left: 40,
                    right: 40,
                    bottom: 50,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _iconImageInputField(
                                file: data.firstImageFile,
                                onTap: () => viewModel.pickImageFirst(),
                              ),
                              const Gap(30),
                              _iconImageInputField(
                                file: data.secondImageFile,
                                onTap: () => viewModel.pickImageSecond(),
                              ),
                            ],
                          ),
                          const Gap(30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _iconImageInputField(
                                file: data.thirdImageFile,
                                onTap: () => viewModel.pickImageThird(),
                              ),
                              const Gap(30),
                              _iconImageInputField(
                                file: data.fourthImageFile,
                                onTap: () => viewModel.pickImageFourth(),
                              ),
                            ],
                          ),
                          const Gap(80),
                          const Text("こんな画像を設定したら、"),
                          const Text("マッチしやすくなるよ的なやつを入れる。"),
                        ],
                      ),
                      nextButton(true, () => viewModel.onTapNextBtn()),
                    ],
                  ),
                ),
              ),
            ),
            if (state.isRefreshing) loading(),
          ],
        );
      },
      error: (e, msg) => Scaffold(
        body: SafeArea(
          child: Center(
            child: Text(
              e.toString(),
            ),
          ),
        ),
      ),
      loading: () => loading(),
    );
  }

  Widget loading() {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _iconImageInputField({
    required File? file,
    required Function()? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 140,
        height: 140,
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
