import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../data/models/user_model.dart';

class DashboardController extends GetxController {
  UserModel userModel = UserModel();

  @override
  void onInit() {
    super.onInit();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        Future.wait([]);
        update();
      },
    );
  }
}
