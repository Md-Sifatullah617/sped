import 'package:dio/dio.dart';
import 'package:sped/utils/custom_widgets/custom_toast.dart';

class ErrorHandlerService {
  static onError(DioException err) {
    switch (err.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        // case DioExceptionType.badCertificate:
        // case DioExceptionType.connectionError:
        return customToast(
          isError: true,
          msg: 'The connection has timed out, please try again.',
        );
      case DioExceptionType.badResponse:
        switch (err.response?.statusCode) {
          case 302:
            return customToast(
              isError: true,
              msg: 'The request returned an invalid status code of 302.',
            );
          case 400:
            return customToast(
              isError: true,
              msg: 'Invalid request',
            );
          case 401:
            return customToast(
              isError: true,
              msg: 'Access denied',
            );
          case 404:
            return customToast(
              isError: true,
              msg: 'The requested information could not be found.',
            );
          case 409:
            return customToast(
              isError: true,
              msg: 'Conflict occurred',
            );
          case 500:
            return customToast(
              isError: true,
              msg: 'Internal server error',
            );
        }
        break;
      case DioExceptionType.badCertificate:
        // handle bad certificate error
        break;
      case DioExceptionType.connectionError:
        // handle connection error
        break;
      case DioExceptionType.cancel:
        break;
      case DioExceptionType.unknown:
        return customToast(
          isError: true,
          msg: 'Unknown error occurred, please try again later.',
        );
    }
    print(err.message.toString());
    return;
  }
}
