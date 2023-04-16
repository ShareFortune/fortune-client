import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/my_page/my_page/my_page_view_model.dart';
import 'package:fortune_client/view/routes/route_navigator.dart';
import 'package:fortune_client/view/routes/route_path.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:fortune_client/view/widgets/other/async_value_widget.dart';
import 'package:fortune_client/view/widgets/profile/profile.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyPage extends HookConsumerWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(myPageViewModelProvider);
    final viewModel = ref.watch(myPageViewModelProvider.notifier);

    return Scaffold(
      backgroundColor: theme.appColors.onBackground,
      appBar: BackAppBar(
        title: LocaleKeys.myPage_title.tr(),
        action: [
          IconButton(
            onPressed: () => navigator.navigateTo(RoutePath.setting),
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: AsyncValueWidget(
        data: state.profile,
        builder: (profile) {
          final profileView = ProfileView(theme, profile);

          return Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    /// ヘッダー
                    profileView.header(),

                    /// 広告
                    Container(
                      color: Colors.blueGrey[100],
                      height: 120,
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: const Text("広告"),
                      ),
                    ),

                    profileView.introduction(),
                    profileView.tags(),
                    profileView.basicInfo(),

                    const Gap(100),
                  ],
                ),
              ),
              Positioned(
                right: 30,
                bottom: 60,
                child: MaterialButton(
                  height: 45,
                  onPressed: () {},
                  color: theme.appColors.primary,
                  textColor: theme.appColors.onPrimary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Text("プロフィールを編集する", style: theme.textTheme.h30.bold()),
                      const Gap(10),
                      const Icon(Icons.edit, size: 20),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
