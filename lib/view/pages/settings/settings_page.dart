import 'package:flutter/material.dart';
import 'package:fortune_client/view/hooks/use_router.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/back_app_bar.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingsPage extends HookConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final router = useRouter();

    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F6),
      appBar: BackAppBar(
        title: "設定",
        action: List.empty(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _settingsRows(
              theme: theme,
              title: "アカウント情報",
              items: [
                _settingsRow(theme, "通知設定"),
                _settingsRow(theme, "ログイン方法の更新"),
              ],
            ),
            _settingsRows(
              theme: theme,
              title: "ヘルプ",
              items: [
                _settingsRow(theme, "問い合わせ"),
                _settingsRow(theme, "お知らせ"),
                _settingsRow(theme, "ログアウト"),
                _settingsRow(theme, "退会"),
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
                style: theme.textTheme.h40.merge(
                  const TextStyle(color: Colors.grey),
                ),
              ),
              onPressed: () {},
              onLongPress: () {
                router.push(const DebugRoute());
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
          child: Text(title, style: theme.textTheme.h40),
        ),
        Column(children: items),
      ],
    );
  }

  Widget _settingsRow(AppTheme theme, String title) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Color(0xFFF3F3F3), width: 1)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: theme.textTheme.h40),
          const Icon(
            size: 16,
            Icons.arrow_forward_ios,
            color: Color(0xFF969696),
          ),
        ],
      ),
    );
  }
}
