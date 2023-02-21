import 'package:flutter/material.dart';
import 'package:fortune_client/util/error/error_type.dart';
import 'package:fortune_client/view/widgets/dialog/error_dialog.dart';

class FortuneException implements Exception {
  String cause;
  String? path;

  FortuneException(this.cause, {this.path});

  ErrorType get type => causeToEnum(cause);

  ErrorType causeToEnum(String code) {
    return codeErrorTypeMaps[code] ?? ErrorType.undefined;
  }

  final codeErrorTypeMaps = {
    '1001': ErrorType.initialized,
    '1002': ErrorType.offline,
    '1003': ErrorType.apiFailure,
    '1004': ErrorType.maintenance,
    '1005': ErrorType.forceUpdate,
    '1006': ErrorType.timeout,
    '9999': ErrorType.undefined,
  };
}

class AppException implements Exception {
  AppException({
    required this.code,
    required this.message,
    this.operationName,
    this.networkStatusCode,
    this.ignore = false,
  });

  final bool ignore;

  final String code;
  final String? message;
  final int? networkStatusCode;
  final String? operationName;

  factory AppException.undefine(String message, {String? operationName}) {
    return AppException(
      code: '9999',
      message: message,
      operationName: operationName,
    );
  }

  factory AppException.ignore(String message, {String? operationName}) {
    return AppException(
      code: '9999',
      message: message,
      ignore: true,
      operationName: operationName,
    );
  }

  // TODO: 仮実装
  String get dialogMessage {
    return '$message';
  }

  Future<void> handle(BuildContext context) async {
    if (ignore) {
      return;
    }

    return ErrorDialog.show(context, dialogMessage);
  }
}
