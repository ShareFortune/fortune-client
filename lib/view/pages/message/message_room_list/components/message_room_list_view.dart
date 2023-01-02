import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MessageRoomListView extends HookConsumerWidget {
  const MessageRoomListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    // TODO: implement build
    throw UnimplementedError();
  }
}
