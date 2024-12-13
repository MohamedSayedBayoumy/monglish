import '../../common/error/handle_error.dart';
import '../models/user_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeUseCases {
  Future<Either<FailureHandler, UserModel>> login();
}

class HomeUseCasesImplemention extends HomeUseCases {
  @override
  Future<Either<FailureHandler, UserModel>> login() {
    throw UnimplementedError();
  }
}
