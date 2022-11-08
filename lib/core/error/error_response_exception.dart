class ErrorResponseException implements Exception {
  const ErrorResponseException({
    required this.code,
    required this.message,
  });

  final int code;
  final String message;

  @override
  String toString() {
    return 'ErrorResponseException: code=$code, body=$message';
  }
}
