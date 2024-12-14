import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

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

  CalendarController calendarController = CalendarController();

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
      },
      (r) {
        dashBoardModel = r;
        status = Status.loaded;
        update();
      },
    );
  }

  void nextDate() {
    if (calendarFormat == CalendarView.week) {
      calendarController.displayDate =
          calendarController.displayDate?.add(const Duration(days: 7));
    } else {
      calendarController.displayDate =
          calendarController.displayDate?.add(const Duration(days: 1));
    }
    update();
  }

  void perviousDate() {
    if (calendarFormat == CalendarView.week) {
      calendarController.displayDate =
          calendarController.displayDate?.subtract(const Duration(days: 7));
    } else {
      calendarController.displayDate =
          calendarController.displayDate?.subtract(const Duration(days: 1));
    }
    update();
  }
}
