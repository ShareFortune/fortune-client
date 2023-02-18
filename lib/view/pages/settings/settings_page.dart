import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingsPage extends HookConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F6),
      appBar: BackAppBar(
        title: LocaleKeys.settings_page_title.tr(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _settingsRows(
              theme: theme,
              title: LocaleKeys.settings_page_account_title.tr(),
              items: [
                /// 通知設定
                _settingsRow(
                  theme,
                  LocaleKeys.settings_page_account_notification.tr(),
                ),

                /// ログイン方法の更新
                _settingsRow(
                  theme,
                  LocaleKeys.settings_page_account_updatedLoginMethod.tr(),
                ),
              ],
            ),
            _settingsRows(
              theme: theme,
              title: LocaleKeys.settings_page_help_title.tr(),
              items: [
                /// 問い合わせ
                _settingsRow(
                  theme,
                  LocaleKeys.settings_page_help_contact.tr(),
                ),

                /// お知らせ
                _settingsRow(
                  theme,
                  LocaleKeys.settings_page_help_notice.tr(),
                ),

                /// ログアウト
                _settingsRow(
                  theme,
                  LocaleKeys.settings_page_help_logout.tr(),
                  callback: () {
                    // AppleSignInDataSource.instance.logout();
                  },
                ),

                /// 退会
                _settingsRow(
                  theme,
                  LocaleKeys.settings_page_help_quit.tr(),
                ),
              ],
            ),
            _settingsRows(
              theme: theme,
              title: "運営情報",
              items: [
                _settingsRow(theme, "利用規約"),
                _settingsRow(theme, "コミュニティガイドライン"),
                _settingsRow(theme, "プライバシポリシー"),
                _settingsRow(theme, "個人情報等の利用について"),
                _settingsRow(theme, "ライセンス情報"),
              ],
            ),
            const Gap(50),
            TextButton(
              child: Text(
                "Ver 1.0.0",
                style: theme.textTheme.h30.paint(theme.appColors.subText3),
              ),
              onPressed: () {},
              onLongPress: () {
                getIt<AppRouter>().push(const DebugRoute());
              },
            ),
            const Gap(100),
          ],
        ),
      ),
    );
  }

  _settingsRows({
    required AppTheme theme,
    required String title,
    required List<Widget> items,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(20),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Text(title, style: theme.textTheme.h30),
        ),
        Column(children: items),
      ],
    );
  }

  Widget _settingsRow(AppTheme theme, String title, {VoidCallback? callback}) {
    return InkWell(
      onTap: callback,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(color: Color(0xFFF3F3F3), width: 1),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: theme.textTheme.h30),
            const Icon(
              size: 16,
              Icons.arrow_forward_ios,
              color: Color(0xFF969696),
            ),
          ],
        ),
      ),
    );
  }
}
