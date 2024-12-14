import 'package:dio/dio.dart';

import '../../common/constants/api_end_pionts.dart';
import '../../common/error/handle_error.dart';
import '../../common/services/dio.dart';
import '../../common/utils/utils.dart';
import '../models/dashboard_response_model.dart';
import 'package:dartz/dartz.dart';

abstract class DashboardUseCases {
  Future<Either<FailureHandler, DashBoardModel>> getData();
}

class DashboardUseCasesImplemention extends DashboardUseCases {
  @override
  Future<Either<FailureHandler, DashBoardModel>> getData() async {
    try {
      final response = await DioServices.get(
        endPoint: ApiEndpoints.dashboard(AppUtils.user.id),
      );

      return Right(DashBoardModel.fromJson(response.data));
    } on DioException catch (e) {
      return left(DioFailure.fromDioException(dioType: e.type, exception: e));
    }
  }
}
