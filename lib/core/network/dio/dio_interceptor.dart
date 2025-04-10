import 'package:dio/dio.dart';
import 'package:quiz_app/core/constants/app_constants.dart';

class DioInterceptor extends Interceptor{
  @override
  Future<void> onRequest( RequestOptions options, RequestInterceptorHandler handler)async{
    options.headers[ApiKeys.authorization] = '${ApiKeys.bearer} ${AppConstants.token}';
    options.headers[ApiKeys.acceptLanguage] = AppConstants.language;
    super.onRequest(options, handler);
  }

  // @override
  // void onResponse(Response response, ResponseInterceptorHandler handler) {
  //   super.onResponse(response, handler);
  // }

}


class ApiKeys{
  static const String authorization = 'Authorization';
  static const String bearer = 'Bearer';
  static const String acceptLanguage = 'Accept-Language';
}