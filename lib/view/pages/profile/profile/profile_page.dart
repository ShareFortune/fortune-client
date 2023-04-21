import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/profile/profile/profile_view_model.dart';
import 'package:fortune_client/view/routes/route_navigator.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/other/async_value_widget.dart';
import 'package:fortune_client/view/widgets/profile/profile_basic_info.dart';
import 'package:fortune_client/view/widgets/profile/profile_header.dart';
import 'package:fortune_client/view/widgets/profile/profile_photo_view.dart';
import 'package:fortune_client/view/widgets/profile/profile_self_introduction.dart';
import 'package:fortune_client/view/widgets/profile/profile_tag.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfilePage extends HookConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(profileViewModelProvider(""));
    final viewModel = ref.watch(profileViewModelProvider("").notifier);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: theme.appColors.iconBtn1,
        automaticallyImplyLeading: false,
        leading: Container(
          margin: const EdgeInsets.fromLTRB(10, 5, 0, 5),
          decoration: BoxDecoration(
            color: theme.appColors.background,
            borderRadius: BorderRadius.circular(50),
          ),
          child: IconButton(
            onPressed: () => navigator.goBack(),
            icon: const Icon(Icons.clear, size: 30),
          ),
        ),
      ),
      backgroundColor: theme.appColors.onBackground,
      body: AsyncValueWidget(
        data: state.profile,
        builder: (profile) {
          return ListView(
            children: [
              ProfilePhotoView(images: profile.images()),
              ProfileHeaderWidget(
                name: profile.name,
                iconUrl: profile.mainImageURL,
                gender: profile.gender,
                address: profile.address,
              ),
              ProfileSelfIntroductionWidget(
                selfIntroduction: profile.selfIntroduction,
              ),
              ProfileTagWidget(tags: profile.tags),
              ProfileBasicInfoWidget(
                name: profile.name,
                address: profile.address,
                height: profile.height,
                drinkFrequency: profile.drinkFrequency,
                cigaretteFrequency: profile.cigaretteFrequency,
              ),
            ],
          );
        },
      ),
    );
  }
}
