// Import your customToast function
import 'package:http/http.dart' as http;
import 'package:sped/utils/custom_widgets/custom_toast.dart';

class ErrorHandlerService {
  static onError(dynamic error) {
    if (error is http.ClientException) {
      // Handle client exception, e.g., connection timeout
      customToast(
        isError: true,
        msg: 'The connection has timed out, please try again.',
      );
    } else if (error is http.Response) {
      switch (error.statusCode) {
        case 302:
          customToast(
            isError: true,
            msg: 'The request returned an invalid status code of 302.',
          );
          break;
        case 400:
          customToast(
            isError: true,
            msg: 'Invalid request',
          );
          break;
        case 401:
          customToast(
            isError: true,
            msg: 'Access denied',
          );
          break;
        case 404:
          customToast(
            isError: true,
            msg: 'The requested information could not be found.',
          );
          break;
        case 409:
          customToast(
            isError: true,
            msg: 'Conflict occurred',
          );
          break;
        case 500:
          customToast(
            isError: true,
            msg: 'Unknown error occurred, please try again later.',
          );
          break;
      }
    } else if (error is http.ClientException) {
      // Handle client exception, e.g., no internet connection
      customToast(
        isError: true,
        msg: 'No internet connection detected, please try again.',
      );
    }

    print(error.toString());
    return;
  }
}
