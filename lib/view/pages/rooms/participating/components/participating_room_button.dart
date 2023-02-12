import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/enum/room_status.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ParticipatingRoomButton extends HookConsumerWidget {
  const ParticipatingRoomButton._({
    required this.theme,
    required this.label,
    required this.labelColor,
    required this.backgroundColor,
    this.onPressed,
  });

  final AppTheme theme;
  final String label;
  final Color labelColor;
  final Color backgroundColor;
  final VoidCallback? onPressed;

  /// リクエスト中
  factory ParticipatingRoomButton.requesting(
    AppTheme theme,
  ) {
    return ParticipatingRoomButton._(
      theme: theme,
      label: LocaleKeys.participating_room_list_page_action_requesting.tr(),
      labelColor: theme.appColors.onBackground,
      backgroundColor: theme.appColors.disable,
    );
  }

  /// メッセージ
  factory ParticipatingRoomButton.message(
    AppTheme theme,
    VoidCallback onPressed,
  ) {
    return ParticipatingRoomButton._(
      theme: theme,
      label: LocaleKeys.participating_room_list_page_action_message.tr(),
      labelColor: theme.appColors.onSecondary,
      backgroundColor: theme.appColors.secondary,
      onPressed: onPressed,
    );
  }

  /// リクエスト一覧
  factory ParticipatingRoomButton.confirmRequests(
    AppTheme theme,
    VoidCallback onPressed,
  ) {
    return ParticipatingRoomButton._(
      theme: theme,
      label: LocaleKeys.participating_room_list_page_action_confirmRequest.tr(),
      labelColor: theme.appColors.onPrimary,
      backgroundColor: theme.appColors.primary,
      onPressed: onPressed,
    );
  }

  /// ホストのナビゲートボタン
  factory ParticipatingRoomButton.host(
    AppTheme theme,
    RoomStatus status,
    VoidCallback navigateMessage,
    VoidCallback navigateConfirmRequests,
  ) {
    switch (status) {
      /// リクエスト一覧確認
      case RoomStatus.pending:
        return ParticipatingRoomButton.confirmRequests(
          theme,
          navigateConfirmRequests,
        );

      /// メッセージ
      /// [RoomStatus.opend] || [RoomStatus.closed]
      default:
        return ParticipatingRoomButton.message(theme, navigateMessage);
    }
  }

  /// ゲストのナビゲートボタン
  factory ParticipatingRoomButton.guest(
    AppTheme theme,
    RoomStatus status,
    VoidCallback navigateMessage,
  ) {
    switch (status) {
      /// リクエスト中
      case RoomStatus.pending:
        return ParticipatingRoomButton.requesting(theme);

      /// メッセージ
      /// [RoomStatus.opend] || [RoomStatus.closed]
      default:
        return ParticipatingRoomButton.message(theme, navigateMessage);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: Size.zero,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      ),
      child: Text(
        label,
        style: theme.textTheme.h20.paint(labelColor),
      ),
    );
  }
}
