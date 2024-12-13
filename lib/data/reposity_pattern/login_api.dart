import 'package:dio/dio.dart';

import '../../common/constants/api_end_pionts.dart';
import '../../common/error/handle_error.dart';
import '../../common/services/dio.dart';
import '../models/login_response_model.dart';
import 'package:dartz/dartz.dart';

import '../models/params_model/login_param_model.dart';

// open and close princple

abstract class AuthenticationUseCases {
  Future<Either<FailureHandler, LoginResponseModel>> login(
      {required LoginParamModel loginParamModel});
}

class AuthenticationUseCasesImplemention extends AuthenticationUseCases {
  @override
  Future<Either<FailureHandler, LoginResponseModel>> login(
      {required LoginParamModel loginParamModel}) async {
    try {
      final response = await DioServices.post(
        endPoint: ApiEndpoints.login,
        body: FormData.fromMap(
          {
            'email': loginParamModel.email,
            'password': loginParamModel.password
          },
        ),
      );

      return Right(LoginResponseModel.fromMap(response.data));
    } on DioException catch (e) {
      return left(DioFailure.fromDioException(dioType: e.type, exception: e));
    }
  }
}
