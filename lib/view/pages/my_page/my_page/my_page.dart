import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/my_page/my_page/components/my_page_header.dart';
import 'package:fortune_client/view/pages/my_page/my_page/my_page_view_model.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:fortune_client/view/widgets/other/loading_widget.dart';
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
            onPressed: () => viewModel.navigateToSettingPage(),
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: state.profile.maybeWhen(
        orElse: () => loadingWidget(),
        data: (profile) {
          final profileView = ProfileView(theme, profile);

          return SingleChildScrollView(
            child: Column(
              children: [
                const Gap(30),

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
          );
        },
      ),
    );
  }
}
