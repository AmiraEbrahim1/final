import 'package:dio/dio.dart';

class DioHelper {
  static late Dio _dio;

  static init() {
    _dio = Dio(
      BaseOptions(
        baseUrl: 'http://178.128.63.131:3001/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getExprimentData({
    required String url,
    Map<String, dynamic>? query,
    Map<String, String>? headers,
    // String uuid = '',
    // String token = '',
  }) async {
    //set headers here
    _dio.options.headers = headers;
    return await _dio.get(url,queryParameters: query);
  }

  static Future<Response> postData({
    required String url,
    required Map<String, dynamic> data,
    Map<String, dynamic>? query,
    String lang = 'en',
    String token = '',
  }) async {
    _dio.options.headers = {
      'Content-Type': 'application/json',
      'lang': lang,
      'Authorization': token,
    };
    return await _dio.post(url, data: data, queryParameters: query);
  }

  // post data
  static Future<Response> putData({
    required String url,
    required Map<String, dynamic> data,
    Map<String, dynamic>? query,
    String lang = 'en',
    String token = '',
  }) async {
    // set headers here
    _dio.options.headers = {
      'Content-Type': 'application/json',
      'lang': lang,
      'Authorization': token,
    };
    return await _dio.put(url, data: data, queryParameters: query);
  }
  static Future<Response> getHomeData({
    required String url,
    Map<String, dynamic>? query,
    // String lang = 'en',
    // String token = '',
  }) async {
    // set headers here
    _dio.options.headers = {
      'Content-Type': 'application/json',
      // 'lang': lang,
      // 'Authorization': token,
    };
    return await _dio.get(url, queryParameters: query);
  }


}
