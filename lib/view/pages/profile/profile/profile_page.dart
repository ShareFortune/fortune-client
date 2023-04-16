import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/profile/profile/profile_view_model.dart';
import 'package:fortune_client/view/routes/route_navigator.dart';
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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: theme.appColors.iconBtn1,
        leading: Container(
          decoration: BoxDecoration(
            color: theme.appColors.background,
            borderRadius: BorderRadius.circular(50),
          ),
          child: IconButton(
            onPressed: () => routeNavigator.goBack(),
            icon: const Icon(Icons.clear, size: 30),
          ),
        ),
      ),
      backgroundColor: theme.appColors.onBackground,
      body: AsyncValueWidget(
        data: state.profile,
        builder: (profile) {
          final profileView = ProfileView(theme, profile);

          return ListView(
            children: [
              profileView.images(),
              profileView.header(),
              profileView.introduction(),
              profileView.tags(),
              profileView.basicInfo(),
            ],
          );
        },
      ),
    );
  }
}
