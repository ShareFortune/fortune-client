import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/core/enum/join_request_status.dart';
import 'package:fortune_client/data/model/core/enum/room_status.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/room/room_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

///
/// ステータスに応じたRoomWidgetを生成
///
class RoomThemeBuilder extends HookConsumerWidget {
  const RoomThemeBuilder({
    Key? key,
    required this.roomStatus,
    this.joinRequestStatus,
    this.joinRequestNum = 0,
    required this.builder,
  }) : super(key: key);

  /// ルームステータス
  final RoomStatus roomStatus;

  /// リクエストステータス
  final JoinRequestStatus? joinRequestStatus;

  /// リクエスト件数
  final int joinRequestNum;

  /// Widget生成
  final Function(RoomTheme roomTheme) builder;

  /// ホストかどうか
  bool get isHost => joinRequestStatus == null;

  /// リクエストが存在するかどうか
  bool get hasJoinRequest => joinRequestNum > 0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Container(
      color: theme.appColors.onBackground,
      child: builder(isHost ? caseByHost(theme) : caseByGuest(theme)),
    );
  }

  // RoomStatusの値に応じて場合分けをする関数
  RoomTheme caseByHost(AppTheme theme) {
    switch (roomStatus) {
      case RoomStatus.pending:
        return hasJoinRequest
            ? _caseByPendingAndHasRequest(theme, joinRequestNum)
            : _caseByPendingAndHasNotRequest(theme);
      case RoomStatus.opend:
        return _caseByOpen(theme);
      case RoomStatus.closed:
        return _caseByClose(theme);
    }
  }

  // RoomStatusとJoinRequestStatusの値に応じて場合分けをする関数
  RoomTheme caseByGuest(AppTheme theme) {
    switch (roomStatus) {
      case RoomStatus.pending:
        switch (joinRequestStatus!) {
          case JoinRequestStatus.accepted:
            return _caseByPendingAccepted(theme, joinRequestNum);
          case JoinRequestStatus.rejected:
            return _caseByPendingRejected(theme);
          case JoinRequestStatus.pending:
            return _caseByPendingPending(theme);
          case JoinRequestStatus.canceled:
            return _caseByPendingCanceled(theme);
        }
      case RoomStatus.opend:
        switch (joinRequestStatus!) {
          case JoinRequestStatus.accepted:
            return _caseByOpenAccepted(theme);
          case JoinRequestStatus.rejected:
            return _caseByOpenRejected(theme);
          case JoinRequestStatus.pending:
            return _caseByOpenPending(theme);
          case JoinRequestStatus.canceled:
            return _caseByOpenCanceled(theme);
        }
      case RoomStatus.closed:
        switch (joinRequestStatus!) {
          case JoinRequestStatus.accepted:
            return _caseByCloseAccepted(theme);
          case JoinRequestStatus.rejected:
            return _caseByCloseRejected(theme);
          case JoinRequestStatus.pending:
            return _caseByClosePending(theme);
          case JoinRequestStatus.canceled:
            return _caseByCloseCanceled(theme);
        }
    }
  }

  /// ベーステーマ
  RoomTheme baseRoomTheme(AppTheme theme) {
    return RoomTheme(
      descriptionColor: theme.appColors.subText2,
      descriptionStyle: theme.textTheme.h20.bold(),
      backgroundColor: theme.appColors.onBackground,
      userBackgroundColor: theme.appColors.onBackground,
      border: const BorderSide(color: Colors.black12, width: 1),
    );
  }

  /// -------------------------------------
  /// ホスト
  ///
  /// RoomStatusがPENDINGの場合のみ
  /// リクエストが存在するかどうかで分岐する
  /// -------------------------------------

  /// OPEN
  RoomTheme _caseByOpen(AppTheme theme) {
    return baseRoomTheme(theme).copyWith(
      descriptionText: "開催されています",
      descriptionColor: theme.appColors.primary,
      backgroundColor: theme.appColors.primary.withOpacity(0.1),
    );
  }

  /// PENDING　リクエストあり
  RoomTheme _caseByPendingAndHasRequest(AppTheme theme, int requestNum) {
    return baseRoomTheme(theme).copyWith(
      descriptionText: "募集中です\n$requestNum件のリクエストが存在します",
      descriptionColor: theme.appColors.secondary,
      backgroundColor: theme.appColors.secondary.withOpacity(0.1),
    );
  }

  /// PENDING　リクエストなし
  RoomTheme _caseByPendingAndHasNotRequest(AppTheme theme) {
    return baseRoomTheme(theme).copyWith(
      descriptionText: "募集中です",
      descriptionColor: theme.appColors.secondary,
      userBackgroundColor: theme.appColors.background,
    );
  }

  /// CLOSE
  RoomTheme _caseByClose(AppTheme theme) {
    return baseRoomTheme(theme).copyWith(
      descriptionText: "終了しました",
      backgroundColor: theme.appColors.background,
    );
  }

  /// -------------------------------------
  /// ゲスト
  ///
  /// RoomStatusとJoinRequestStatusでデザインを変更
  /// -------------------------------------

  ///
  /// RoomStatus：OPEN
  /// JoinRequestStatus：ACCEPTED
  RoomTheme _caseByOpenAccepted(AppTheme theme) {
    return baseRoomTheme(theme).copyWith(
      descriptionText: "参加中です",
      descriptionColor: theme.appColors.primary,
      backgroundColor: theme.appColors.primary.withOpacity(0.1),
    );
  }

  /// JoinRequestStatus：PENDING
  RoomTheme _caseByOpenPending(AppTheme theme) {
    return baseRoomTheme(theme).copyWith(
      descriptionText: "募集が終了しました",
      userBackgroundColor: theme.appColors.background,
    );
  }

  /// JoinRequestStatus：REJECTED
  RoomTheme _caseByOpenRejected(AppTheme theme) {
    return baseRoomTheme(theme).copyWith(
      descriptionText: "リクエストが拒否されました",
      descriptionColor: theme.appColors.error,
      backgroundColor: theme.appColors.error.withOpacity(0.1),
    );
  }

  /// JoinRequestStatus：CANCELED
  RoomTheme _caseByOpenCanceled(AppTheme theme) {
    return baseRoomTheme(theme).copyWith(
      descriptionText: "リクエストをキャンセルしました",
      descriptionColor: theme.appColors.error,
      userBackgroundColor: theme.appColors.background,
    );
  }

  ///
  /// RoomStatus：PENDING
  /// JoinRequestStatus：ACCEPTED
  RoomTheme _caseByPendingAccepted(AppTheme theme, int requestNum) {
    return baseRoomTheme(theme).copyWith(
      descriptionText: "参加中です\nあと$requestNum人でこのルームは開催されます",
      descriptionColor: theme.appColors.secondary,
      backgroundColor: theme.appColors.secondary.withOpacity(0.1),
    );
  }

  /// JoinRequestStatus：PENDING
  RoomTheme _caseByPendingPending(AppTheme theme) {
    return baseRoomTheme(theme).copyWith(
      descriptionText: "リクエスト中です",
      descriptionColor: theme.appColors.primary,
      userBackgroundColor: theme.appColors.background,
    );
  }

  /// JoinRequestStatus：REJECTED
  RoomTheme _caseByPendingRejected(AppTheme theme) {
    return baseRoomTheme(theme).copyWith(
      descriptionText: "リクエストが拒否されました",
      descriptionColor: theme.appColors.error,
      backgroundColor: theme.appColors.error.withOpacity(0.1),
    );
  }

  /// JoinRequestStatus：CANCELED
  RoomTheme _caseByPendingCanceled(AppTheme theme) {
    return baseRoomTheme(theme).copyWith(
      descriptionText: "リクエストをキャンセルしました",
      descriptionColor: theme.appColors.error,
      userBackgroundColor: theme.appColors.background,
    );
  }

  ///
  /// RoomStatus：CLOSE
  /// JoinRequestStatus：ACCEPTED
  RoomTheme _caseByCloseAccepted(AppTheme theme) {
    return baseRoomTheme(theme).copyWith(
      descriptionText: "終了しました",
      backgroundColor: theme.appColors.background,
    );
  }

  /// JoinRequestStatus：PENDING
  RoomTheme _caseByClosePending(AppTheme theme) {
    return baseRoomTheme(theme).copyWith(
      descriptionText: "終了しました",
      backgroundColor: theme.appColors.background,
    );
  }

  /// JoinRequestStatus：REJECTED
  RoomTheme _caseByCloseRejected(AppTheme theme) {
    return baseRoomTheme(theme).copyWith(
      descriptionText: "リクエストが拒否されました",
      descriptionColor: theme.appColors.error,
      backgroundColor: theme.appColors.background,
    );
  }

  /// JoinRequestStatus：CANCELED
  RoomTheme _caseByCloseCanceled(AppTheme theme) {
    return baseRoomTheme(theme).copyWith(
      descriptionText: "リクエストをキャンセルしました",
      descriptionColor: theme.appColors.error,
      backgroundColor: theme.appColors.background,
    );
  }
}
