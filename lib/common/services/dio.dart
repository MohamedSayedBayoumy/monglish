import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../constants/api_end_pionts.dart';
import '../utils/utils.dart';

abstract class DioServices {
  static final Dio dio = Dio(
    BaseOptions(
      baseUrl: ApiEndpoints.baseUrl,
    ),
  )..interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
        compact: true,
        maxWidth: 90,
      ),
    );

  static Future<Response> post({
    String? endPoint,
    FormData? body,
  }) async {
    final response = await dio.post(
      endPoint!,
      data: body,
    );
    return response;
  }

  static Future<Response> get({
    String? endPoint,
  }) async {
    final response = await dio.get(
      endPoint!,
      options: Options(
        headers: {'Authorization': 'Bearer ${AppUtils.user.token}'},
      ),
    );
    return response;
  }
}
