// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/debug/debug_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DebugPage extends HookConsumerWidget {
  const DebugPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final debugInfoBuildNumber = ref.watch(debugInfoBuildNumberProvider);
    final useDummyLoginApi = ref.watch(debugUseDummyLoginApiProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('デバッグ'),
        elevation: 0,
      ),
      body: ListView(
        children: [
          _buildDummyItem(
            'ビルド番号: $debugInfoBuildNumber',
            showTrailing: false,
          ),
          _buildDummyItem(
            'ダミーログインAPI使用中: $useDummyLoginApi',
            showTrailing: false,
          ),
          _buildDummyItem(
            '自動ログイン',
            showTrailing: true,
            onTap: () {},
            trailing: CupertinoSwitch(
              value: true,
              onChanged: (value) {},
            ),
          ),
          _buildDummyItem(
            'プロフィール作成フラグをクリア',
            showTrailing: true,
            onTap: () {},
          ),
        ],
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
}
