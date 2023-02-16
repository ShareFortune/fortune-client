import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/core/enum/room_status.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

///
/// 参加ルームのナビゲーションボタン
///
/// ホスト
/// [ParticipatingRoomButton.host]
///
/// ゲスト
/// [ParticipatingRoomButton.guest]
///
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
        return ParticipatingRoomButton._confirmRequests(
          theme,
          navigateConfirmRequests,
        );

      /// メッセージ
      /// [RoomStatus.opend] || [RoomStatus.closed]
      default:
        return ParticipatingRoomButton._message(theme, navigateMessage);
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
        return ParticipatingRoomButton._requesting(theme);

      /// メッセージ
      /// [RoomStatus.opend] || [RoomStatus.closed]
      default:
        return ParticipatingRoomButton._message(theme, navigateMessage);
    }
  }

  ///
  /// ボタンタイプ
  /// [_requesting] リクエスト中
  /// [_message] メッセージ
  /// [_confirmRequests] リクエスト一覧
  /// -----------------------------

  /// リクエスト中
  factory ParticipatingRoomButton._requesting(AppTheme theme) {
    return ParticipatingRoomButton._(
      theme: theme,
      label: LocaleKeys.participating_room_list_page_action_requesting.tr(),
      labelColor: theme.appColors.onBackground,
      backgroundColor: theme.appColors.disable,
    );
  }

  /// メッセージ
  factory ParticipatingRoomButton._message(
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
  factory ParticipatingRoomButton._confirmRequests(
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

  /// -----------------------------

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
