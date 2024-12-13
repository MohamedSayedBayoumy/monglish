import '../../common/error/handle_error.dart';
import '../models/login_response_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeUseCases {
  Future<Either<FailureHandler, LoginResponseModel>> login();
}

class HomeUseCasesImplemention extends HomeUseCases {
  @override
  Future<Either<FailureHandler, LoginResponseModel>> login() {
    throw UnimplementedError();
  }
}
