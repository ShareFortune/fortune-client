import 'package:easy_localization/easy_localization.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/util/error/error_handle_type.dart';

/// エラー種別
enum ErrorType {
  /// 初期化処理失敗
  initialized,

  /// 通信エラー
  offline,

  /// APIによる通信エラー
  apiFailure,

  /// メンテナンス中エラー
  maintenance,

  /// アプリ強制バージョンアップ
  forceUpdate,

  /// タイムアウト
  timeout,

  /// 想定外のエラー
  undefined,
}

extension ErrorTypeEx on ErrorType {
  /// エラーメッセージ
  static final errorMessages = {
    ErrorType.initialized: LocaleKeys.error_initialized.tr(),
    ErrorType.offline: LocaleKeys.error_offline.tr(),
    ErrorType.apiFailure: LocaleKeys.error_apiFailure.tr(),
    ErrorType.maintenance: LocaleKeys.error_maintenance.tr(),
    ErrorType.forceUpdate: LocaleKeys.error_forceUpdate.tr(),
    ErrorType.timeout: LocaleKeys.error_timeout.tr(),
    ErrorType.undefined: LocaleKeys.error_undefined.tr(),
  };

  /// ハンドラタイプ
  static final handleTypes = {
    ErrorType.initialized: ErrorHandleType.dialogWithClose,
    ErrorType.offline: ErrorHandleType.dialogWithReloadAndCancel,
    ErrorType.apiFailure: ErrorHandleType.dialogWithClose,
    ErrorType.maintenance: ErrorHandleType.dialogWithClose,
    ErrorType.forceUpdate: ErrorHandleType.dialogWithClose,
    ErrorType.timeout: ErrorHandleType.dialogWithClose,
    ErrorType.undefined: ErrorHandleType.dialogWithClose,
  };

  String get errorTitle => '';
  String get errorMsg => errorMessages[this]!;
  ErrorHandleType get handleType => handleTypes[this]!;
}
