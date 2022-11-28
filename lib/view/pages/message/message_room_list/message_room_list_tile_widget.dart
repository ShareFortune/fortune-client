import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:gap/gap.dart';

class MessageRoomListTileWidget extends ConsumerWidget {
  const MessageRoomListTileWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// ホストアイコン
        _hostIcon(theme),
        const Gap(15),
        Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _title(theme),
                  _date(theme),
                ],
              ),
              const Gap(5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: _body(theme),
                  ),
                  const Gap(10),
                  _notification(theme),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  _hostIcon(AppTheme theme) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: theme.appColors.primary,
    );
  }

  _title(AppTheme theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "若者の集い",
          style: theme.textTheme.h40.bold(),
        ),
      ],
    );
  }

  _body(AppTheme theme) {
    return Text(
      "テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・テキスト・",
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: theme.textTheme.h30.auxiliary(),
    );
  }

  _date(AppTheme theme) {
    return Text(
      "16:28",
      style: theme.textTheme.h10,
    );
  }

  _notification(AppTheme theme) {
    return Container(
      constraints: const BoxConstraints(
        minHeight: 24,
        minWidth: 24,
        maxHeight: 24,
      ),
      decoration: BoxDecoration(
        color: theme.appColors.primary,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Center(
        child: Text(
          "10",
          style: theme.textTheme.h20
              .merge(TextStyle(color: theme.appColors.onPrimary))
              .bold(),
        ),
      ),
    );
  }
}
