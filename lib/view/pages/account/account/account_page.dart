import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/view/pages/account/account/account_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:gap/gap.dart';

class AccountPage extends ConsumerWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(accountViewModelProvider);
    final viewModel = ref.watch(accountViewModelProvider.notifier);

    return state.when(
      data: (data) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: theme.appColors.background,
            title: Text(
              "アカウント",
              style: theme.textTheme.h40
                  .merge(TextStyle(color: theme.appColors.headline1))
                  .bold(),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _host(theme, image: Assets.images.insta2),
                const Gap(50),
                _status(theme),
              ],
            ),
          ),
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
      loading: () => const Scaffold(
        body: SafeArea(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }

  Widget _host(
    AppTheme theme, {
    required AssetGenImage image,
  }) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: image.provider(),
          // backgroundColor: theme.appColors.primary,
        ),
        const Gap(20),
        Text(
          "斉藤さん",
          style: theme.textTheme.h40.bold(),
        ),
      ],
    );
  }

  Widget _status(AppTheme theme) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _state("募集数", "3", theme),
          const VerticalDivider(thickness: 0.1, color: Colors.black),
          _state("総募集数", "15", theme),
          const VerticalDivider(thickness: 0.1, color: Colors.black),
          _state("参加数", "28", theme),
          const VerticalDivider(thickness: 0.1, color: Colors.black),
          _state("いいね", "40", theme),
        ],
      ),
    );
  }

  Widget _state(String title, String value, AppTheme theme) {
    return Column(
      children: [
        Text(
          value,
          style: theme.textTheme.h30.bold(),
        ),
        const Gap(10),
        Text(
          title,
          style: theme.textTheme.h20,
        ),
      ],
    );
  }
}
