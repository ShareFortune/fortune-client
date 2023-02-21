import 'package:fortune_client/util/error/error_handle_type.dart';

/// エラー種別
enum ErrorType {
  initialized, // 初期化処理失敗
  offline, // 通信エラー
  apiFailure, // APIによる通信エラー
  maintenance, // メンテナンス中エラー
  forceUpdate, // アプリ強制バージョンアップ
  timeout, // タイムアウト
  undefined, // 想定外のエラー
}

extension ErrorTypeEx on ErrorType {
  /// エラーメッセージ
  static final errorMessages = {
    ErrorType.initialized: "",
    ErrorType.offline: "",
    ErrorType.apiFailure: "",
    ErrorType.maintenance: "",
    ErrorType.forceUpdate: "",
    ErrorType.timeout: "",
    ErrorType.undefined: "",
  };

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
