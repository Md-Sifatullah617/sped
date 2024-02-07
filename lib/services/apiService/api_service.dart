import 'package:dio/dio.dart';
import 'package:sped/services/apiService/app_utils.dart';
import 'package:sped/services/apiService/error_handling.dart';
import 'package:sped/services/configs/appConfig.dart';

class ApiService {
  static Future<Response?> post({
    required url,
    data,
    Map<String, dynamic>? headers,
    bool isDomainUrl = false,
  }) async {
    print('Body:::${data.toString()}');
    // print('USER ID : ${getStorage.read(userId)}');
    try {
      final res = await dio
          .post(
            (isDomainUrl == true ? domain : baseUrl) + url,
            data: data,
            options: Options(
              headers: headers ??
                  {
                    "Content-Type": "application/json",
                  },
            ),
          )
          .timeout(Duration(seconds: 30));

      print(res.realUri);
      print(res.data);
      print(res.statusCode);

      if (res.statusCode == 201 || res.statusCode == 200) {
        return res;
      } else {
        print(res.data.toString());
      }
    } on DioException catch (e) {
      print(e);
      ErrorHandlerService.onError(e);
    }
    return null;
  }

//
  static Future<Response?> get({
    required String url,
    Map<String, String>? headers,
    bool isDomainUrl = false,
  }) async {
    print('URL : ${isDomainUrl == true ? domain : baseUrl}$url');

    print('isDomainUrl : $isDomainUrl');

    final res = await dio.get(
      (isDomainUrl == true ? domain : baseUrl) + url,
      options: Options(
        headers: headers ??
            {
              "Content-Type": "application/json",
            },
      ),
    );

    // print(res.data);
    print(res.realUri);
    print(res.statusCode);

    if (res.statusCode == 200) {
      return res;
    } else {
      print(res.data);
    }
    return null;
  }

  static Future<Response?> delete({
    required url,
    Map<String, dynamic>? headers,
  }) async {
    try {
      final res = await dio
          .delete(
            baseUrl + url,
            options: Options(
              headers: headers ??
                  {
                    "Content-Type": "application/json",
                  },
            ),
          )
          .timeout(Duration(seconds: 30));

      print(res.realUri);
      print(res.statusCode);

      if (res.statusCode == 200) {
        return res;
      } else {
        print(res.data.toString());
      }
    } on DioException catch (e) {
      print(e);
      ErrorHandlerService.onError(e);
    }
    return null;
  }
}
