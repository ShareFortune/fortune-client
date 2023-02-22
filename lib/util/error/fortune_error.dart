import 'package:flutter/material.dart';
import 'package:fortune_client/util/error/error_handle_type.dart';
import 'package:fortune_client/util/error/error_type.dart';
import 'package:fortune_client/view/widgets/dialog/error_dialog.dart';

class FortuneError extends Error {
  final ErrorType type;

  FortuneError({
    this.type = ErrorType.undefined,
  });

  handle({
    required BuildContext context,
    VoidCallback? reload,
    VoidCallback? cancel,
    String? comeback,
  }) {
    final String errMsg = ErrorTypeEx(type).errorMsg;
    final ErrorHandleType handleType = ErrorTypeEx(type).handleType;

    switch (handleType) {
      case ErrorHandleType.dialogWithClose:
        // ErrorDialog.show(context, errMsg);
        ErrorDialog.showWithReload(
          context,
          errMsg,
          () => reload?.call(),
        );
        break;
      case ErrorHandleType.dialogWithReload:
        ErrorDialog.showWithReload(
          context,
          errMsg,
          () => reload?.call(),
        );
        break;
      case ErrorHandleType.dialogWithReloadAndCancel:
        ErrorDialog.showWithReloadAndCancel(
          context,
          errMsg,
          () => reload?.call(),
          () => cancel?.call(),
        );
        break;
      case ErrorHandleType.toast:
        break;
      case ErrorHandleType.inline:
        break;
    }
  }
}
