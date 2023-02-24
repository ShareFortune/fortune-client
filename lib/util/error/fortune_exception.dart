import 'package:fortune_client/util/error/error_type.dart';

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
