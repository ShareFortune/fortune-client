import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/profile/profile/profile_view_model.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/other/async_value_widget.dart';
import 'package:fortune_client/view/widgets/profile/profile.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfilePage extends HookConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(profileViewModelProvider(""));
    final viewModel = ref.watch(profileViewModelProvider("").notifier);

    return Scaffold(
      backgroundColor: theme.appColors.onBackground,
      body: AsyncValueWidget(
        data: state.profile,
        builder: (profile) {
          final profileView = ProfileView(theme, profile);
          return Stack(
            children: [
              Positioned(
                top: 50,
                left: 10,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
              ListView(
                children: [
                  profileView.images(),
                  profileView.header(),
                  profileView.introduction(),
                  profileView.tags(),
                  profileView.basicInfo(),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
