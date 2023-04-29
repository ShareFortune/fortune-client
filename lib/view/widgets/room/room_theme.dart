import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/enum/join_request_status.dart';
import 'package:fortune_client/data/model/enum/room_status.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// ルームWidgetのTheme
class RoomTheme {
  /// 全体の背景色
  final Color backgroundColor;

  /// ユーザーアイコン部分の背景色
  final Color userBackgroundColor;

  /// ルーム状態の説明文のテキスト
  final String descriptionText;

  /// ルーム状態の説明文のカラー
  final Color descriptionColor;

  /// ルーム状態の説明文のスタイル
  final TextStyle descriptionStyle;

  /// 枠線（上下）
  final BorderSide border;

  /// ルーム状態の説明文
  Text get description {
    return Text(
      descriptionText,
      style: descriptionStyle.paint(descriptionColor),
    );
  }

  RoomTheme({
    required this.backgroundColor,
    required this.userBackgroundColor,
    required this.descriptionText,
    required this.descriptionColor,
    required this.descriptionStyle,
    this.border = BorderSide.none,
  });

  RoomTheme copyWith({
    Color? backgroundColor,
    Color? userBackgroundColor,
    String? descriptionText,
    Color? descriptionColor,
    TextStyle? descriptionStyle,
    BorderSide? border,
  }) {
    return RoomTheme(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      userBackgroundColor: userBackgroundColor ?? this.userBackgroundColor,
      descriptionText: descriptionText ?? this.descriptionText,
      descriptionColor: descriptionColor ?? this.descriptionColor,
      descriptionStyle: descriptionStyle ?? this.descriptionStyle,
      border: border ?? this.border,
    );
  }
}

/// [RoomTheme]を生成するクラス

class RoomThemeFactory {
  final AppTheme theme;

  /// ルームステータス
  final RoomStatus status;

  /// 参加リクエスト
  final JoinRequestStatus? joinRequestStatus;

  /// リクエスト件数
  final int joinRequestCount;

  /// ホストかどうか
  bool get isHost => joinRequestStatus == null;

  /// リクエストが存在するかどうか
  bool get hasJoinRequest => joinRequestCount > 0;

  /// [RoomTheme]を生成する
  RoomTheme create() => isHost ? caseByHost() : caseByGuest();

  RoomThemeFactory._({
    required this.theme,
    required this.status,
    this.joinRequestStatus,
    this.joinRequestCount = 0,
  });

  factory RoomThemeFactory.host({
    required AppTheme theme,
    required RoomStatus status,
    required int joinRequestCount,
  }) {
    return RoomThemeFactory._(
      theme: theme,
      status: status,
      joinRequestCount: joinRequestCount,
    );
  }

  factory RoomThemeFactory.guest({
    required AppTheme theme,
    required RoomStatus status,
    required JoinRequestStatus joinRequestStatus,
  }) {
    return RoomThemeFactory._(
      theme: theme,
      status: status,
      joinRequestStatus: joinRequestStatus,
    );
  }

  // RoomStatusの値に応じて場合分けをする関数
  RoomTheme caseByHost() {
    switch (status) {
      case RoomStatus.pending:
        return hasJoinRequest
            ? _caseByPendingAndHasRequest(joinRequestCount)
            : _caseByPendingAndHasNotRequest();
      case RoomStatus.opend:
        return _caseByOpen();
      case RoomStatus.closed:
        return _caseByClose();
    }
  }

  // RoomStatusとJoinRequestStatusの値に応じて場合分けをする関数
  RoomTheme caseByGuest() {
    switch (status) {
      case RoomStatus.pending:
        switch (joinRequestStatus!) {
          case JoinRequestStatus.accepted:
            return _caseByPendingAccepted(joinRequestCount);
          case JoinRequestStatus.rejected:
            return _caseByPendingRejected();
          case JoinRequestStatus.pending:
            return _caseByPendingPending();
          case JoinRequestStatus.canceled:
            return _caseByPendingCanceled();
        }
      case RoomStatus.opend:
        switch (joinRequestStatus!) {
          case JoinRequestStatus.accepted:
            return _caseByOpenAccepted();
          case JoinRequestStatus.rejected:
            return _caseByOpenRejected();
          case JoinRequestStatus.pending:
            return _caseByOpenPending();
          case JoinRequestStatus.canceled:
            return _caseByOpenCanceled();
        }
      case RoomStatus.closed:
        switch (joinRequestStatus!) {
          case JoinRequestStatus.accepted:
            return _caseByCloseAccepted();
          case JoinRequestStatus.rejected:
            return _caseByCloseRejected();
          case JoinRequestStatus.pending:
            return _caseByClosePending();
          case JoinRequestStatus.canceled:
            return _caseByCloseCanceled();
        }
    }
  }

  /// ベーステーマ
  RoomTheme baseRoomTheme() {
    return RoomTheme(
      descriptionColor: theme.appColors.subText2,
      descriptionStyle: theme.textTheme.h20.bold(),
      backgroundColor: theme.appColors.onBackground,
      userBackgroundColor: theme.appColors.onBackground,
      border: BorderSide(color: theme.appColors.border1, width: 0.5),
      descriptionText: '',
    );
  }

  /// -------------------------------------
  /// ホスト
  ///
  /// RoomStatusがPENDINGの場合のみ
  /// リクエストが存在するかどうかで分岐する
  /// -------------------------------------

  /// OPEN
  RoomTheme _caseByOpen() {
    return baseRoomTheme().copyWith(
      descriptionText: "開催されています",
      descriptionColor: theme.appColors.primary,
      backgroundColor: theme.appColors.primary.withOpacity(0.1),
    );
  }

  /// PENDING　リクエストあり
  RoomTheme _caseByPendingAndHasRequest(int requestNum) {
    return baseRoomTheme().copyWith(
      descriptionText: "募集中です\n$requestNum件のリクエストが存在します",
      descriptionColor: theme.appColors.secondary,
      backgroundColor: theme.appColors.secondary.withOpacity(0.1),
    );
  }

  /// PENDING　リクエストなし
  RoomTheme _caseByPendingAndHasNotRequest() {
    return baseRoomTheme().copyWith(
      descriptionText: "募集中です",
      descriptionColor: theme.appColors.secondary,
      userBackgroundColor: theme.appColors.background,
    );
  }

  /// CLOSE
  RoomTheme _caseByClose() {
    return baseRoomTheme().copyWith(
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
  RoomTheme _caseByOpenAccepted() {
    return baseRoomTheme().copyWith(
      descriptionText: "参加中です",
      descriptionColor: theme.appColors.primary,
      backgroundColor: theme.appColors.primary.withOpacity(0.1),
    );
  }

  /// JoinRequestStatus：PENDING
  RoomTheme _caseByOpenPending() {
    return baseRoomTheme().copyWith(
      descriptionText: "募集が終了しました",
      userBackgroundColor: theme.appColors.background,
    );
  }

  /// JoinRequestStatus：REJECTED
  RoomTheme _caseByOpenRejected() {
    return baseRoomTheme().copyWith(
      descriptionText: "リクエストが拒否されました",
      descriptionColor: theme.appColors.error,
      backgroundColor: theme.appColors.error.withOpacity(0.1),
    );
  }

  /// JoinRequestStatus：CANCELED
  RoomTheme _caseByOpenCanceled() {
    return baseRoomTheme().copyWith(
      descriptionText: "リクエストをキャンセルしました",
      descriptionColor: theme.appColors.error,
      userBackgroundColor: theme.appColors.background,
    );
  }

  ///
  /// RoomStatus：PENDING
  /// JoinRequestStatus：ACCEPTED
  RoomTheme _caseByPendingAccepted(int requestNum) {
    return baseRoomTheme().copyWith(
      descriptionText: "参加中です\nあと$requestNum人でこのルームは開催されます",
      descriptionColor: theme.appColors.secondary,
      backgroundColor: theme.appColors.secondary.withOpacity(0.1),
    );
  }

  /// JoinRequestStatus：PENDING
  RoomTheme _caseByPendingPending() {
    return baseRoomTheme().copyWith(
      descriptionText: "リクエスト中です",
      descriptionColor: theme.appColors.primary,
      userBackgroundColor: theme.appColors.background,
    );
  }

  /// JoinRequestStatus：REJECTED
  RoomTheme _caseByPendingRejected() {
    return baseRoomTheme().copyWith(
      descriptionText: "リクエストが拒否されました",
      descriptionColor: theme.appColors.error,
      backgroundColor: theme.appColors.error.withOpacity(0.1),
    );
  }

  /// JoinRequestStatus：CANCELED
  RoomTheme _caseByPendingCanceled() {
    return baseRoomTheme().copyWith(
      descriptionText: "リクエストをキャンセルしました",
      descriptionColor: theme.appColors.error,
      userBackgroundColor: theme.appColors.background,
    );
  }

  ///
  /// RoomStatus：CLOSE
  /// JoinRequestStatus：ACCEPTED
  RoomTheme _caseByCloseAccepted() {
    return baseRoomTheme().copyWith(
      descriptionText: "終了しました",
      backgroundColor: theme.appColors.background,
    );
  }

  /// JoinRequestStatus：PENDING
  RoomTheme _caseByClosePending() {
    return baseRoomTheme().copyWith(
      descriptionText: "終了しました",
      backgroundColor: theme.appColors.background,
    );
  }

  /// JoinRequestStatus：REJECTED
  RoomTheme _caseByCloseRejected() {
    return baseRoomTheme().copyWith(
      descriptionText: "リクエストが拒否されました",
      descriptionColor: theme.appColors.error,
      backgroundColor: theme.appColors.background,
    );
  }

  /// JoinRequestStatus：CANCELED
  RoomTheme _caseByCloseCanceled() {
    return baseRoomTheme().copyWith(
      descriptionText: "リクエストをキャンセルしました",
      descriptionColor: theme.appColors.error,
      backgroundColor: theme.appColors.background,
    );
  }
}
