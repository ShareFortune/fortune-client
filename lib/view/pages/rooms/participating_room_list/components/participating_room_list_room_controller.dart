import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/enum/join_request_status.dart';
import 'package:fortune_client/data/model/enum/room_status.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

///
/// ステータスに応じたWidgetを生成
///
/// 背景色
///
class ParticipatingRoomListRoomController extends HookConsumerWidget {
  const ParticipatingRoomListRoomController({
    Key? key,
    required this.roomStatus,
    required this.joinRequestStatus,
    required this.builder,
  }) : super(key: key);

  final RoomStatus roomStatus;

  final JoinRequestStatus? joinRequestStatus;

  /// Room widget
  final Widget Function({
    required Text infoText,
    required Color background,
    required Color bodyBackground,
  }) builder;

  /// nullだったらホスト
  bool get isHost => joinRequestStatus == null;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Container(
      color: theme.appColors.onBackground,
      child: builder(
        background: isHost //
            ? backgroundAsHost(theme)
            : backgroundAsGuest(theme),
        bodyBackground: isHost //
            ? bodyBackgroundAsHost(theme)
            : bodyBackgroundAsGuest(theme),
        infoText: isHost //
            ? infoTextAsHost(theme)
            : infoTextAsGuest(theme),
      ),
    );
  }

  ///
  /// ルームの背景色
  /// --------------------------------------

  backgroundAsHost(AppTheme theme) {
    switch (roomStatus) {
      case RoomStatus.pending:
        return theme.appColors.secondary.withOpacity(0.1);
      case RoomStatus.opend:
        return theme.appColors.primary.withOpacity(0.1);
      case RoomStatus.closed:
        return theme.appColors.onBackground;
    }
  }

  backgroundAsGuest(AppTheme theme) {
    switch (joinRequestStatus!) {
      case JoinRequestStatus.accepted:
        switch (roomStatus) {
          case RoomStatus.pending:
            return theme.appColors.secondary.withOpacity(0.1);
          case RoomStatus.opend:
            return theme.appColors.primary.withOpacity(0.1);
          case RoomStatus.closed:
            return theme.appColors.onBackground;
        }
      case JoinRequestStatus.rejected:
        return theme.appColors.error.withOpacity(0.1);
      case JoinRequestStatus.pending:
        return theme.appColors.onBackground;
      case JoinRequestStatus.canceled:
        return theme.appColors.onBackground;
    }
  }

  ///
  /// ルームボディの背景色
  /// --------------------------------------

  bodyBackgroundAsHost(AppTheme theme) {
    switch (roomStatus) {
      case RoomStatus.pending:
        return theme.appColors.onBackground;
      case RoomStatus.opend:
        return theme.appColors.onBackground;
      case RoomStatus.closed:
        return theme.appColors.background;
    }
  }

  bodyBackgroundAsGuest(AppTheme theme) {
    switch (joinRequestStatus!) {
      case JoinRequestStatus.accepted:
        switch (roomStatus) {
          case RoomStatus.pending:
            return theme.appColors.onBackground;
          case RoomStatus.opend:
            return theme.appColors.onBackground;
          case RoomStatus.closed:
            return theme.appColors.background;
        }
      case JoinRequestStatus.rejected:
        return theme.appColors.onBackground;
      case JoinRequestStatus.pending:
        return theme.appColors.background;
      case JoinRequestStatus.canceled:
        return theme.appColors.background;
    }
  }

  ///
  /// ルーム参加状況についてのテキスト
  /// --------------------------------------

  infoTextAsHost(AppTheme theme) {
    final style = theme.textTheme.h20.bold();

    switch (roomStatus) {
      case RoomStatus.pending:
        return Text(
          "募集中です",
          style: style.paint(theme.appColors.secondary),
        );
      case RoomStatus.opend:
        return Text(
          "オープン",
          style: style.paint(theme.appColors.primary),
        );
      case RoomStatus.closed:
        return Text(
          "終了しました",
          style: style.paint(theme.appColors.subText3),
        );
    }
  }

  infoTextAsGuest(AppTheme theme) {
    final style = theme.textTheme.h20.bold();

    switch (joinRequestStatus!) {
      case JoinRequestStatus.accepted:
        switch (roomStatus) {
          case RoomStatus.pending:
            return Text(
              "あなたはこのルームに参加しています",
              style: style.paint(theme.appColors.secondary),
            );
          case RoomStatus.opend:
            return Text(
              "あなたはこのルームに参加しています",
              style: style.paint(theme.appColors.primary),
            );
          case RoomStatus.closed:
            return Text(
              "このルームは終了しました",
              style: style.paint(theme.appColors.primary),
            );
        }
      case JoinRequestStatus.rejected:
        return Text(
          "参加申請が却下されました",
          style: style.paint(theme.appColors.error),
        );
      case JoinRequestStatus.pending:
        return Text(
          "リクエスト中です",
          style: style.paint(theme.appColors.subText3),
        );
      case JoinRequestStatus.canceled:
        return Text(
          "参加リクエストをキャンセルしました",
          style: style.paint(theme.appColors.subText3),
        );
    }
  }
}
