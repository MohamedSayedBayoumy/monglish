import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../../common/functions/snack_bars.dart';
import '../../../common/utils/enums.dart';
import '../../../common/utils/utils.dart';
import '../../../data/models/dashboard_response_model.dart';
import '../../../data/reposity_pattern/dashboard_api.dart';

class DashboardController extends GetxController {
  final DashboardUseCases dashboardUseCases;

  DashboardController({required this.dashboardUseCases});

  Status status = Status.loading;

  DashBoardModel? dashBoardModel;
  CalendarView? calendarFormat = CalendarView.month;

  @override
  void onInit() {
    super.onInit();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        getData(BuildContext);
      },
    );
  }

  Future<void> getData(context, {bool refersh = false}) async {
    if (refersh) {
      status = Status.loading;
      update();
    }

    final result = await dashboardUseCases.getData();
    result.fold(
      (l) {
        status = Status.loaded;
        dashBoardModel = AppUtils.dashBoardModel;

        update();
        SnackBars.errorAlert(
          context,
          error: l.listOfFailures == ""
              ? "${l.failureMessag} , Now you see a dummy data"
              : "${l.listOfFailures} , Now you see a dummy data",
        );
      },
      (r) {
        dashBoardModel = r;
        status = Status.loaded;
        update();
      },
    );
  }
}
