import 'package:http/http.dart' as http;
import 'package:sped/services/apiService/errorHandling.dart';
import 'package:sped/services/configs/appConfig.dart';

class ApiService {
  static Future<http.Response?> post({
    required String url,
    data,
    Map<String, String>? headers,
    bool isDomainUrl = false,
  }) async {
    print('Body:::${data.toString()}');
    try {
      final res = await http
          .post(
            Uri.parse((isDomainUrl == true ? domain : baseUrl) + url),
            body: data,
            headers: headers ??
                {
                  'Content-Type': 'application/json',
                },
          )
          .timeout(Duration(seconds: 30));

      print(res.request?.url);
      print(res.body);
      print(res.statusCode);

      if (res.statusCode == 201 || res.statusCode == 200) {
        return res;
      } else {
        print(res.body.toString());
      }
    } catch (e) {
      print(e);
      ErrorHandlerService.onError(e);
    }
    return null;
  }

  static Future<http.Response?> get({
    required String url,
    Map<String, String>? headers,
    bool isDomainUrl = false,
  }) async {
    print('URL : ${isDomainUrl == true ? domain : baseUrl}$url');

    print('isDomainUrl : $isDomainUrl');

    final res = await http.get(
      Uri.parse((isDomainUrl == true ? domain : baseUrl) + url),
      headers: headers ??
          {
            'Content-Type': 'application/json',
          },
    );

    // print(res.body);
    print(res.request?.url);
    print(res.statusCode);

    if (res.statusCode == 200) {
      return res;
    } else {
      print(res.body);
    }
    return null;
  }

  static Future<http.Response?> delete({
    required String url,
    Map<String, String>? headers,
  }) async {
    try {
      final res = await http
          .delete(
            Uri.parse(baseUrl + url),
            headers: headers ??
                {
                  'Content-Type': 'application/json',
                },
          )
          .timeout(Duration(seconds: 30));

      print(res.request?.url);
      print(res.statusCode);

      if (res.statusCode == 200) {
        return res;
      } else {
        print(res.body.toString());
      }
    } catch (e) {
      print(e);
      ErrorHandlerService.onError(e);
    }
    return null;
  }
}
