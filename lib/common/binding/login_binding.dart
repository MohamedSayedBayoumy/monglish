import 'package:get/get.dart';

import '../../data/reposity_pattern/login_api.dart';
import '../../feature/login/controller/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<LoginController>(
      LoginController(
          authenticationUseCases: AuthenticationUseCasesImplemention()),
    );
  }
}
