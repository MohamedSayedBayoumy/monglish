import 'package:get/get.dart';

import '../../data/reposity_pattern/dashboard_api.dart';
import '../../feature/dashboard/controller/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<DashboardController>(
      DashboardController(dashboardUseCases: DashboardUseCasesImplemention()),
    );
  }
}
