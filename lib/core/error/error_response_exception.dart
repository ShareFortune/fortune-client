class ErrorResponseException implements Exception {
  const ErrorResponseException({
    required this.code,
    required this.body,
  });

  final int code;
  final Map<String, dynamic> body;

  @override
  String toString() {
    return 'ErrorResponseException: code=$code, body=$body';
  }

  String get message => body["message"];
}
