import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../common/constants/app_colors.dart';
import '../../../../common/utils/utils.dart';
import '../../controller/dashboard_controller.dart';
import '../calender_body_view.dart';
import '../dashboard_container_widget.dart';

class CalenderWidget extends StatelessWidget {
  final DashboardController dashboardController;
  const CalenderWidget({super.key, required this.dashboardController});

  @override
  Widget build(BuildContext context) {
    return DashboardContainerWidget(
      delayFadeWidget: AppUtils.handleDelayedFadeWidget(3),
      backgroundColor: Colors.white,
      boxShadow: [
        BoxShadow(
          color: AppColors.grey.withOpacity(.4),
          blurRadius: .8,
          spreadRadius: .1,
        )
      ],
      child: Column(
        children: [
          TableCalendar(
            firstDay: DateTime.now(),
            lastDay: DateTime(3000, 1, 1),
            focusedDay: DateTime.now(),
            calendarFormat: CalendarFormat.month,
            title: dashboardController.calendarFormat == CalendarView.month
                ? null
                : DateFormat('MMMM yyyy').format(
                    dashboardController.calendarController.displayDate!),
            onTapMonth: () {
              dashboardController.calendarController.view = CalendarView.month;
              dashboardController.calendarFormat = CalendarView.month;
              dashboardController.update();
            },
            onTapWeek: () {
              dashboardController.calendarController.view = CalendarView.week;
              dashboardController.calendarFormat = CalendarView.week;
              dashboardController.update();
            },
            onTapDay: () {
              dashboardController.calendarController.view = CalendarView.day;
              dashboardController.calendarFormat = CalendarView.day;
              dashboardController.update();
            },
            onTapArrowStartButton:
                dashboardController.calendarFormat == CalendarView.month
                    ? null
                    : () {
                        dashboardController.perviousDate();
                      },
            onTapArrowEndButton:
                dashboardController.calendarFormat == CalendarView.month
                    ? null
                    : () {
                        dashboardController.nextDate();
                      },
            calenderBody:
                dashboardController.calendarFormat == CalendarView.month
                    ? null
                    : FadeIn(
                        duration: const Duration(seconds: 1),
                        child: AnimatedCrossFade(
                          firstChild: CalenderBodyViewWidget(
                            controller: dashboardController,
                          ),
                          secondChild: CalenderBodyViewWidget(
                            controller: dashboardController,
                          ),
                          crossFadeState: dashboardController.calendarFormat ==
                                  CalendarView.week
                              ? CrossFadeState.showFirst
                              : CrossFadeState.showSecond,
                          duration: const Duration(seconds: 1),
                        ),
                      ),
          ),
        ],
      ),
    );
  }
}
