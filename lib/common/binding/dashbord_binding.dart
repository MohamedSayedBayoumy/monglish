import 'package:get/get.dart';

import '../../feature/dashbord/controller/dashbord_controller.dart';

class DashbordBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<DashbordController>(DashbordController());
  }
}
