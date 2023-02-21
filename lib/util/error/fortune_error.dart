import 'package:flutter/material.dart';
import 'package:fortune_client/util/error/error_handle_type.dart';
import 'package:fortune_client/util/error/error_type.dart';
import 'package:fortune_client/view/widgets/dialog/error_dialog.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FortuneError extends Error {
  final ErrorType type;
  final WidgetRef ref;

  FortuneError({
    required this.type,
    required this.ref,
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
        ErrorDialog.show(context, errMsg);
        break;
      case ErrorHandleType.dialogWithReload:
        ErrorDialog.showWithReload(
          context,
          errMsg,
          () => _reload(context, reload),
        );
        break;
      case ErrorHandleType.dialogWithReloadAndCancel:
        ErrorDialog.showWithReloadAndCancel(
          context,
          errMsg,
          () => _reload(context, reload),
          () => _cancel(context, cancel),
        );
        break;
      case ErrorHandleType.toast:
        // TODO: Handle this case.
        break;
      case ErrorHandleType.inline:
        // TODO: Handle this case.
        break;
    }
  }

  _reload(BuildContext context, VoidCallback? reload) {
    if (reload != null) {
      Navigator.pop(context);
      reload();
    }
  }

  _cancel(BuildContext context, VoidCallback? cancel) {
    if (cancel != null) {
      cancel();
    } else {
      Navigator.pop(context);
    }
  }
}
