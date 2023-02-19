import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EmptyMessageRoomListView extends HookConsumerWidget {
  const EmptyMessageRoomListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// アイコン
          Icon(
            Icons.email,
            size: 80.0,
            color: theme.appColors.disable,
          ),
          const Gap(30),

          /// 注釈テキスト
          Text(
            LocaleKeys.message_room_list_page_empty.tr(),
            style: theme.textTheme.h20.paint(
              theme.appColors.subText3,
            ),
          ),
        ],
      ),
    );
  }
}
