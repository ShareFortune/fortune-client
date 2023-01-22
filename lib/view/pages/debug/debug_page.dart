// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/debug/debug_view_model.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:fortune_client/view/widgets/dialog/dialog.dart';
import 'package:fortune_client/view/widgets/other/error_widget.dart';
import 'package:fortune_client/view/widgets/other/loading_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DebugPage extends HookConsumerWidget {
  const DebugPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(debugViewModelProvider);
    final viewModel = ref.watch(debugViewModelProvider.notifier);

    return Scaffold(
      backgroundColor: theme.appColors.onBackground,
      appBar: const BackAppBar(title: "デバッグ"),
      body: state.when(
        data: (data) {
          return ListView(
            children: [
              _buildDummyItem(
                'ビルド番号: ${data.debugInfo.buildNumber}',
                showTrailing: false,
              ),
              _buildDummyItem(
                'ダミーログインAPI使用中: ${data.isDummyRoginApi}',
                showTrailing: false,
              ),
              _buildDummyItem(
                '自動ログイン',
                showTrailing: true,
                trailing: CupertinoSwitch(
                  value: data.isAutomaticLogin,
                  onChanged: viewModel.toggleAutomaticLogin,
                ),
              ),
              _buildDummyItem(
                'プロフィール作成フラグをクリア',
                showTrailing: true,
                onTap: () {
                  viewModel.clearIsProfile();
                  showDebugDialog(context, "プロフィール作成フラグをクリアしました。");
                },
              ),
              _buildDummyItem(
                'ユーザー作成',
                showTrailing: true,
                onTap: () {
                  sl<AppRouter>().push(const CreateProfileRoute());
                },
              ),
              _buildDummyItem(
                'プロフィール作成',
                showTrailing: true,
                onTap: () {
                  sl<AppRouter>().push(
                    const CreateProfileRoute(
                      children: [DetailedProfileEntryRoute()],
                    ),
                  );
                },
              ),
              _buildDummyItem(
                'タグ作成',
                showTrailing: true,
                onTap: () {
                  sl<AppRouter>().push(TagCreationRoute());
                },
              ),
            ],
          );
        },
        error: errorWidget,
        loading: loadingWidget,
      ),
    );
  }

  Widget _buildDummyItem(
    String title, {
    VoidCallback? onTap,
    showTrailing = true,
    Widget? trailing,
  }) {
    Widget? widget;
    if (showTrailing) {
      if (trailing != null) {
        widget = trailing;
      } else {
        widget = const Icon(
          Icons.arrow_forward_ios,
          size: 20,
        );
      }
    } else {
      widget = null;
    }
    return ListTile(
      title: Text(title),
      trailing: widget,
      onTap: onTap,
    );
  }

  showDebugDialog(BuildContext context, String title) async {
    await showInfoDialog(
      context,
      title,
      onPressed: Navigator.of(context).pop,
    );
  }
}
