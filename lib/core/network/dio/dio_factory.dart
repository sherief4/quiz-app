import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:quiz_app/core/constants/app_constants.dart';
import 'package:quiz_app/core/network/constants/end_points.dart';

import 'dio_interceptor.dart';

const String accept = 'Accept';
const String contentType = 'Content-Type';
const String language = 'Accept-Language';
const String authorization = 'Authorization';
const String defaultLanguage = 'Accept-Language';
const String applicationJson = 'application/json';
const String source = 'source';
const String mobile = 'mobile';

class DioFactory {
  Future<Dio> getDio() async {
    Dio dio = Dio();
    const int timeout = 10 * 1000;

    Map<String, String> headers = {
      contentType: applicationJson,
      accept: applicationJson,
      source: mobile,
      defaultLanguage: AppConstants.language
    };

    dio.options = BaseOptions(
      baseUrl: EndPoints.baseUrl,
      connectTimeout: const Duration(seconds: timeout),
      receiveTimeout: const Duration(seconds: timeout),
      headers: headers,
    );

    dio.interceptors.add(DioInterceptor());
    if (kDebugMode) {
      dio.interceptors.add(
        LogInterceptor(
          responseBody: true,
          error: true,
          requestHeader: true,
          responseHeader: false,
          request: true,
          requestBody: true,
        ),
      );
    }

    return dio;
  }


}