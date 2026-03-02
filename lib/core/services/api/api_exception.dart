class ApiException {
  int statusCode;
  String errorMessage;
  String details;

  ApiException({required this.statusCode, required this.errorMessage, this.details = ''});

  factory ApiException.getErrorMessageByStatus(int statusCode, String details) {
    return switch (statusCode) {
      503 => ApiException(statusCode: statusCode, errorMessage: 'Нет интернет соединения', details: details),
      400 => ApiException(statusCode: statusCode, errorMessage: 'Bad Request', details: details),
      403 => ApiException(statusCode: statusCode, errorMessage: 'Forbidden', details: details),
      405 => ApiException(statusCode: statusCode, errorMessage: 'Method Not Allowed', details: details),
      502 => ApiException(statusCode: statusCode, errorMessage: 'Bad Gateway', details: details),
      _ => ApiException(statusCode: statusCode, errorMessage: 'Непредвиденная ошибка', details: details),
    };
  }
}
